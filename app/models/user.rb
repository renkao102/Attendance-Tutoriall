# トークンがダイジェストと一致すればtrueを返します。
def authenticated?(remember_token)
  # ダイジェストが存在しない場合はfalseを返して終了します。
  return false if remember_digest.nil?
  BCrypt::Password.new(remember_digest).is_password?(remember_token)
end