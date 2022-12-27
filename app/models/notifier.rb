class Notifier
  def initialize(hook_url)
    @notifier = Slack::Notifier.new(hook_url)
  end

  def send(msg)
    @notifier.ping msg
  end

  private
  def send_mail(msg)
  end
end
