local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local AddFriendsSectionHeaderFrame = require(script.Parent)

return {
	stories = {
		IconVisible = Roact.createElement(AddFriendsSectionHeaderFrame, {
			title = "Header With Icon Visible",
			icon = Images["icons/common/more"],
			iconVisible = true,
		}),
		IconInvisible = Roact.createElement(AddFriendsSectionHeaderFrame, {
			title = "Header With Icon Invisible",
			icon = Images["icons/common/more"],
			iconVisible = false,
		}),
	},
}
