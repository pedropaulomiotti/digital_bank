class UsersBackoffice::MovementsController < UsersBackofficeController
  before_action :set_user

  def deposit
  end

  def withdraw
  end

  def transfer
  end

  def movement
    @movements = Movement.all
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.permit(:full_name, :identification, :phone, :email, :birthday, 
                  :account_number, :account_balance, :password, :password_confirmation)
  end

  def set_movement
    @movement = Movement.find(params[:id])
  end

  def movement_params
    params.permit(:mode, :value, :user_id)
  end
end
