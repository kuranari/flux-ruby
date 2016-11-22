class EventEmitter
  def initialize
    @handlers = Hash.new { |h, k| h[k] = [] }
  end

  def on(type, &handler)
    @handlers[type] << handler
  end

  def off(type)
    @handlers[type].clear
  end

  def emit(type, data = nil)
    @handlers[type].each do |handler|
      handler.call(data)
    end
  end
end
