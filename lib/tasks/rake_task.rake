namespace :rake_task do
    notifier = Notifier.new('https://hooks.slack.com/services/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')
    users = User.all_users_name_and_sex.where(sex: "男")
    message = users.map do |user|
      "名前：#{user.name}、性別：#{user.sex}, 年齢：#{user.age}"
    end.join("\n")
    notifier.send(message)
  end
end