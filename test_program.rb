#!/usr/bin/env ruby

# ユーザー情報を管理するクラス
class User
  attr_accessor :name, :age, :email

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
  end

  # ユーザー情報を表示するメソッド
  def display_info
    puts "名前: #{@name}"
    puts "年齢: #{@age}"
    puts "メール: #{@email}"
  end

  # 年齢チェックメソッド
  def adult?
    @age >= 20
  end

  # メールアドレスのバリデーション
  def valid_email?
    @email.include?('@')
  end
end

# メイン処理
def main
  user = User.new("山田太郎", 25, "yamada@example.com")
  user.display_info

  if user.adult?
    puts "成人です"
  else
    puts "未成年です"
  end

  if user.valid_email?
    puts "有効なメールアドレスです"
  else
    puts "無効なメールアドレスです"
  end
end

main 