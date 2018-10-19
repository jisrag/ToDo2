class HardrailsWorker
  include Sidekiq::Worker

  def perform(*args)
    User.all.each do |user|
      WeeklyMailer.sample_email(user).deliver
     end
  end
end
