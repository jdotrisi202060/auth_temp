class Black < ActiveRecord::Base
  acts_as_taggable

  require 'paperclip'

  has_attached_file :boxofshit

  validates_attachment_presence :boxofshit
end
