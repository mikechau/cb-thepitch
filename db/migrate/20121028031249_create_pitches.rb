class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.string :job_title
      t.string :company
      t.string :location
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :profile_link
      t.string :headline
      t.string :why_you_want_me
      t.string :video_link
      t.string :jd_answer
      t.string :what_i_would_do
      t.string :item1
      t.string :item2
      t.string  :item3

      t.timestamps
    end
  end
end
