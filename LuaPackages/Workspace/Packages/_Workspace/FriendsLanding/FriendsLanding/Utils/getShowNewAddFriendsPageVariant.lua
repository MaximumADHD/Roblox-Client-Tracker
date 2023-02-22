local showNewAddFriendsPageVariant = function(socialFriendsLayer): boolean
	local showNewAddFriendsPageVariant = (socialFriendsLayer.social_onboarding_variant == "newUIAddFriendsEntry")
		or (socialFriendsLayer.social_onboarding_variant == "oldUIAddFriendsEntry")
	return showNewAddFriendsPageVariant
end

return showNewAddFriendsPageVariant
