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
class Nurse < User
  alias patients objects
end
