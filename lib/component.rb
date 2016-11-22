class ReactComponent
  def initialize
    @state = {}
  end

  def state=(state)
    @state = state
    render
  end

  def render
    raise NotImplementedError.new
  end
end

class Component < ReactComponent
  def initialize(store, action)
    @store = store
    @action = action

    @state = { count: @store.count }
    @store.on('CHANGE') do
      on_change
    end
  end

  def increment
    @action.increment_counter
  end

  def decrement
    @action.decrement_counter
  end

  private

  def on_change
    self.state = { count: @store.count }
  end

  def render
    puts "count: #{@state[:count]}"
  end
end
