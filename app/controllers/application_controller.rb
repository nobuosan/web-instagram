class ApplicationController < ActionController::Base
  # クロスサイトリクエストフォージェリ (CSRF)への対応策
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  #ストロングパラメーターの設定
  #後から追加したnameを編集できる様に設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
