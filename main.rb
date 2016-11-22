require './lib/dispatcher'
require './lib/action_creator'
require './lib/store'
require './lib/component'

dispatcher = Dispatcher.new
store = Store.new(dispatcher)
action = ActionCreator.new(dispatcher)
component = Component.new(store, action)

print 'input: '
while command = gets.chomp
  case command
  when '+'
    component.increment
  when '-'
    component.decrement
  end
  print 'input: '
end
