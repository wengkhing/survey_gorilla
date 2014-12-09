class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :surveying
      t.belongs_to :choice


      t.timestamps
    end
  end
end
