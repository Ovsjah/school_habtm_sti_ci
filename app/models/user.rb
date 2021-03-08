# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  age        :integer          not null
#  first_name :string           not null
#  last_name  :string           not null
#  type       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_type_and_last_name_and_first_name_and_age  (type,last_name,first_name,age)
#
class User < ApplicationRecord
  CHILDREN_CLASSES = %w(Teacher Nurse Student)
  has_and_belongs_to_many(
    :subjects, # performs
    foreign_key: :object_id, # used in where clause in joined table
    association_foreign_key: :subject_id, # joins table on key
    join_table: :school_relations,
    class_name: name
  )
  has_and_belongs_to_many(
    :objects, # receives
    foreign_key: :subject_id, # used in where clause in joined table
    association_foreign_key: :object_id, # joins table on key
    join_table: :school_relations,
    class_name: name
  )
  CHILDREN_CLASSES.each { |child| scope child.tableize.to_sym, -> { where type: child } }

  def nurses
    subjects.nurses
  end
end
