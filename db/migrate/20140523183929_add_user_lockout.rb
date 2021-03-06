class AddUserLockout < ActiveRecord::Migration[4.2]
  def change
    change_table(:users) do |t|
      t.integer(:failed_login_attempts, :default => 0)
      t.datetime(:latest_failed_login_attempt)
    end
  end
end
