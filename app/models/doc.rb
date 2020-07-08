class Doc < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader 
        belongs_to :user
		
		validates :user_id, presence: true
end
