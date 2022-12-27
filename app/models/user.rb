class User < ApplicationRecord
  def self.all_users
  end

  def self.all_users_name_and_sex
    select(:name, :sex, :age)
  end

  # def self.fetch_user(name)
  #   where(name: name)
  # end
end
