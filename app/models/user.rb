# トークンがダイジェストと一致すればtrueを返します。
def 
  authenticated?(remember_token)
  # ダイジェストが存在しない場合はfalseを返して終了します。
  return false if remember_digest.nil?
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end

