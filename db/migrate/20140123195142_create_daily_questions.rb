class CreateDailyQuestions < ActiveRecord::Migration
  def change
    create_table :daily_questions do |t|
      t.string :question
      t.string :answer
      t.integer :user_id
      t.boolean :answered

      t.timestamps
    end
  end
end
