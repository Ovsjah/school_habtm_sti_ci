class CreateSchoolRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :school_relations, id: false do |t|
      t.bigint :object_id, index: true, null: false
      t.bigint :subject_id, null: false
      t.index %i(subject_id object_id), unique: true
      t.timestamps
    end
  end
end
