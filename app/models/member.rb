class Member < ActiveRecord::Base
	has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }
end
