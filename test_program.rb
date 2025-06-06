#!/usr/bin/env ruby

# ユーザー情報を管理するクラス
class User
  attr_accessor :name, :age, :email

  def initialize(name, age, email)
    name = name  # バグ: @nameへの代入が漏れている
    @age = age
    @email = email
  end

  # ユーザー情報を表示するメソッド
  def display_info
    puts "名前: " + name  # バグ: インスタンス変数の参照が漏れている
    puts "年齢: " + age.to_s  # バグ: インスタンス変数の参照が漏れている
    puts "メール: " + email  # バグ: インスタンス変数の参照が漏れている
  end

  # 年齢チェックメソッド
  def adult?
    age >= 20  # バグ: インスタンス変数の参照が漏れている
  end

  # メールアドレスのバリデーション
  def valid_email?
    email.include? '@'  # バグ: インスタンス変数の参照が漏れている
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