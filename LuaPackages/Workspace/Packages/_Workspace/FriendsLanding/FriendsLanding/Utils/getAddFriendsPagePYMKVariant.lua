local addFriendsPagePYMKVariant = function(addFriendsPageLayer): (boolean, number?)
	local shouldShowPYMKSection, initialRequestsRows
	local variant = addFriendsPageLayer.add_friends_page_pymk_variant
	if variant == "requestsFiveRows" then
		shouldShowPYMKSection = true
		initialRequestsRows = 5
	elseif variant == "requestsTwoRows" then
		shouldShowPYMKSection = true
		initialRequestsRows = 2
	elseif variant == "requestsOneRow" then
		shouldShowPYMKSection = true
		initialRequestsRows = 1
	else
		shouldShowPYMKSection = false
	end

	return shouldShowPYMKSection, initialRequestsRows
end

return addFriendsPagePYMKVariant
