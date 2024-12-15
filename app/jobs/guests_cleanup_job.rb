class GuestsCleanupJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :delayed_job

  def perform
    puts "hello"
  end
end
