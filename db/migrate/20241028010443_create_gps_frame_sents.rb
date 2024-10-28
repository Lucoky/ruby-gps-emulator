class CreateGpsFrameSents < ActiveRecord::Migration[7.2]
  def change
    create_table :gps_frame_sents do |t|
      t.references :gps, null: false, foreign_key: true
      t.string :data
      t.datetime :sent_at

      t.timestamps
    end
  end
end
