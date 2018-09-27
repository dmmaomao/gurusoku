class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    reserve_sign_done_path # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    reserve_search_path # ログアウト後に遷移するpathを設定
  end

end
