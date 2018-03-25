class User < ApplicationRecord
	def self.find_or_create_from_auth_hash(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
			user.provider = auth.provider
            user.uid = auth.uid
            user.name = auth.info.name
			user.first_name = auth.info.first_name
			user.last_name = auth.info.last_name
            user.email = auth.info.email
            user.oauth_token = auth.credentials.token
            user.oauth_expires_at = Time.at(auth.credentials.expires_at)
			user.picture = auth.info.image
			user.save!
		end
	end
end