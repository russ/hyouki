class HyoukiController < ApplicationController
  layout false

  def show
    klass = params[:class].classify.gsub(/::(\w)/) { |s| s.upcase }.constantize
    args = params[:args].split(',').collect { |a| eval(a) }

    @type = params[:type] || 'html'
    @mail = klass.send(params[:method], *args)
    @parts = PremailerRails::Hook.delivering_email(@mail)
    @body = if @parts.count > 1
      @parts.select { |part| part.content_type =~ /#{@type}/ }.first.body.to_s
    else
      @parts.first.body.to_s
    end
  end
end
