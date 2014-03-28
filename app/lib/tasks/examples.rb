desc "publishes whatever message you pass in, with a datetime stamp"
task :publish, [:message] => :environment do |t, args|
  Propono.publish(Global.amazon.queue_name, "(#{Time.now.to_s}): #{args[:message]}").join
end

desc "opens a listener waiting for messages"
task :listen => :environment do
  Propono.config.application_name = "rask-listener"
  puts "listening to \'#{Global.amazon.queue_name}\' as \'#{Propono.config.application_name}\'"
  Propono.listen_to_queue(Global.amazon.queue_name) do |message|
    puts "#{Time.now.to_s}: #{message}"
  end
end

