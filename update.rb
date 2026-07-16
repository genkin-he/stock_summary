class SocialLiveTranscript < SocialRecord

end

ActiveRecord::Base.connected_to(shard: :cn) do
end
