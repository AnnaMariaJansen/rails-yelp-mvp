class ChangeContentOfReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :content, :text
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
