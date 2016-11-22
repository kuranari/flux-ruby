require './lib/event_emitter'

class Store < EventEmitter
  attr_reader :count

  def initialize(dispatcher)
    super()
    @count = 0
    dispatcher.on('UPDATE_COUNTER') do |payload|
      on_update_counter(payload[:value])
    end
  end

  private

  def on_update_counter(count)
    @count += count
    emit('CHANGE')
  end
end
