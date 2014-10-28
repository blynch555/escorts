class Profile < ActiveRecord::Base


	belongs_to :user
	#attr_protected :is_active
	#attr_accessesor :avatar
	  # Photos
  	#has_many :photos, :order => 'created_at DESC'
  	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



end
