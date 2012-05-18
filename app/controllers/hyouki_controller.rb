class HyoukiController < ApplicationController
  layout false

  def show
    klass = params[:class].classify.gsub(/::(\w)/) { |s| s.upcase }.constantize
    args = params[:args].split(',').collect { |a| eval(a) }
    @mail = klass.send(params[:method], *args)

    @type = params[:type] || 'plain'

    @body = if @mail.multipart?
      @mail.parts.select { |part|
        part.content_type =~ /#{@type}/
      }.first.body.to_s
    else
      @mail.body.to_s
    end
  end
end
