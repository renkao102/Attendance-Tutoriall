def destroy
  # ログイン中の場合のみログアウト処理を実行します。
  log_out if logged_in?
  flash[:success] = 'ログアウトしました。'
  redirect_to root_url
end