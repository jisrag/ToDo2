send_reminder:
  cron: "* * */7 * *"
  class: "HardrailsWorker"
  queue: default