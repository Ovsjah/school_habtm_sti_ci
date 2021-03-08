class CreateSchoolRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :school_relations, id: false do |t|
      t.bigint :object_id, null: false
      t.bigint :subject_id, null: false
      t.timestamps
      t.index %i(subject_id object_id), unique: true
      t.index %i(object_id subject_id), unique: true
    end
  end
end
