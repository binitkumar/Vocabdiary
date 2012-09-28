class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :test_paper_id
      t.integer :answer_id
      t.integer :word_id

      t.timestamps
    end
  end
end
