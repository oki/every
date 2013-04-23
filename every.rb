
require 'rubygems'
require 'active_support/core_ext/numeric'
require 'pp'

class Every
  def self.process(*params,&block)
    @@tasks ||= {}
    run_task(*params,&block)
  end

  def self.run_task(*params,&block)
    time = params.first
    # pp time

    task = @@tasks[time.to_s.to_sym] ||= { :time => time, :last_run => Time.now - time }

    if Time.now - task[:last_run] > task[:time]
      # puts "Odpalam!"
      yield block
      task[:last_run] = Time.now
    end
  end
end

class Object
  def every(*params,&block)
    Every.process(*params,&block)
  end
end
