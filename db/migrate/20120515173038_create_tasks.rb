

class CreateTasks < ActiveRecord::Migration # modulo que maneja las bases de datos
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :priority

      t.timestamps # agrega estas columnas:created_at:datetime, updated_at:datatime
#y sirven para auditoria,
    end
  end
end
#las migraciones solo se ejecutan una vez.
