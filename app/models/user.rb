class User < ActiveRecord::Base
  attr_accessible :name, :role_id
end
