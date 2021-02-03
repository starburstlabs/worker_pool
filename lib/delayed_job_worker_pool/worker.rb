# frozen_string_literal: true

module DelayedJobWorkerPool
  module Worker
    extend self

    def run(options = {}, worker_number = 0)
      if options.key?(:worker_factory)
        options[:worker_factory].call(options, worker_number)
      else
        dj_worker = Delayed::Worker.new(options)
        dj_worker.name = options[:name] if options.include?(:name)
        dj_worker.start
      end
    end
  end
end
