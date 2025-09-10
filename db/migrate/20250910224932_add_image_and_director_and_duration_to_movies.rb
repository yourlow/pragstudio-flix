class AddImageAndDirectorAndDurationToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :image_file_name, :string, default: "placeholder.png"
    add_column :movies, :director, :string
    add_column :movies, :duration, :string
  end
end
