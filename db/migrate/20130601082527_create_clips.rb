class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :title
      t.text :summary
      t.string :duration
      t.string :link
      t.datetime :published_at
      t.string :source
      t.string :video_url

      t.timestamps
    end
  end
end
