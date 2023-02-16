local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local AddFriendsGenericBanner = require(script.Parent)

return function()
	return Roact.createElement(AddFriendsGenericBanner, {
		bannerIcon = Images["icons/graphic/contacts_large"],
		bannerTitle = "Connect with Contacts",
		bannerText = "Invite contacts or connect with friends already on Roblox!",
		onActivated = function() end,
	})
end
