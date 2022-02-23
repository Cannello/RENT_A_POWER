class ChangePowerTableSoItMustHaveUser < ActiveRecord::Migration[6.1]
  def change
    user = User.first
    Power.update_all(user_id: user.id) if user.present?
    change_column_null :powers, :user_id, false
  end
end
