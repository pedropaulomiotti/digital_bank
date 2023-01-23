class UsersBackoffice::MovementsController < UsersBackofficeController
  before_action :set_user

  def deposit
    movement = Movement.new
    movement.type = "deposit"
    movement.value = params[:value].to_f
    movement.user_id = current_user.id
    movement.save
  end

  def withdraw
    movement = Movement.new
    movement.type = "withdraw"
    movement.value = params[:value]
    movement.user_id = current_user.id
    movement.save
  end

  def transfer
    movement = Movement.new
    movement.type = "transfer"
    movement.value = params[:value]
    movement.user_id = current_user.id
    movement.save
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
end
