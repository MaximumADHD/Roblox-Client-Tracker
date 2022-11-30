local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local AddFriendsTile = require(script.Parent.Parent.AddFriendsTile)
local UserTile = require(script.Parent.Parent.UserTile)
local UserUtils = require(SocialTab.User)
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local UserCarousel = require(script.Parent)

local friends = {}
for i = 1, 20 do
	table.insert(
		friends,
		UserUtils.makeMockUser({
			id = tostring(i),
			username = "This should not show",
			displayName = "George the " .. i,
			userPresenceType = PresenceType.InGame,
			lastLocation = "Playing this game",
		})
	)
end

return function()
	return Roact.createElement(UserCarousel, {
		createUserEntry = function(entry)
			if entry.user == nil then
				return Roact.createElement(AddFriendsTile, {
					layoutOrder = 1,
					thumbnailSize = 96,
					totalHeight = 120,
				})
			end

			return Roact.createElement(UserTile, {
				enableDisplayNamePolicy = true,
				height = 120,
				layoutOrder = entry.index,
				thumbnailSize = 96,
				user = entry.user,
				absolutePosition = entry.absolutePosition,
			})
		end,
		friends = friends,
	})
end
