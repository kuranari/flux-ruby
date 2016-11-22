require './lib/event_emitter'

event_emitter = EventEmitter.new
event_emitter.on('click') do
  puts 'hello world'
end

event_emitter.on('input') do |params|
  puts params
end

event_emitter.emit('click')
event_emitter.emit('input', 42)
event_emitter.off('click')
event_emitter.emit('click')
