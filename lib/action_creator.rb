class ActionCreator
  def initialize(dispatcher)
    @dispatcher = dispatcher
  end

  def increment_counter
    @dispatcher.emit('UPDATE_COUNTER', value: 1)
  end

  def decrement_counter
    @dispatcher.emit('UPDATE_COUNTER', value: -1)
  end
end
