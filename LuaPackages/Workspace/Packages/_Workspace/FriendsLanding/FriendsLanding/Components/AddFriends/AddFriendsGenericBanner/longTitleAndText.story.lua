local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local AddFriendsGenericBanner = require(script.Parent)

return function()
	return Roact.createElement(AddFriendsGenericBanner, {
		bannerIcon = Images["icons/graphic/contacts_large"],
		bannerTitle = "Connect with Contacts with a Longer Title",
		bannerText = "Invite contacts or connect with friends already on Roblox! And some extra text making it very very very very long",
		onActivated = function() end,
		hasInfoButton = true,
		onInfoButtonActivated = function() end,
	})
end
