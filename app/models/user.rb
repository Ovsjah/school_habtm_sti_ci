class User < ApplicationRecord
  CHILDREN_CLASSES = %w(Teacher Nurse Student)
  has_and_belongs_to_many(
    :subjects, # performs
    foreign_key: :subject_id,
    association_foreign_key: :object_id, # foreign key for join table
    join_table: :school_relations,
    class_name: name
  )
  has_and_belongs_to_many(
    :objects, # receives
    foreign_key: :object_id,
    association_foreign_key: :subject_id,  # foreign key for join table
    join_table: :school_relations,
    class_name: name
  )
  CHILDREN_CLASSES.each { |child| scope child.tableize.to_sym, -> { where type: child } }

  def nurses
    subjects.nurses
  end
end
