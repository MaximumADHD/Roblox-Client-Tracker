local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local FitChildren = require(Modules.LuaApp.FitChildren)
local UserCarouselEntry = require(Modules.LuaApp.Components.Home.UserCarouselEntry)
local UserThumbnail = require(Modules.LuaApp.Components.UserThumbnail)

local Constants = require(Modules.LuaApp.Constants)
local User = require(Modules.LuaApp.Models.User)

local UserCarousel = Roact.Component:extend("UserCarousel")

local PRESENCE_WEIGHTS = {
	[User.PresenceType.IN_GAME] = 3,
	[User.PresenceType.ONLINE] = 2,
	[User.PresenceType.IN_STUDIO] = 1,
	[User.PresenceType.OFFLINE] = 0,
}

local THUMBNAIL_SIZE = UserThumbnail.size()

function UserCarousel.height()
	return THUMBNAIL_SIZE
end

function UserCarousel:render()
	local users = self.props.users
	local LayoutOrder = self.props.LayoutOrder
	local position = self.props.Position
	local formFactor = self.props.formFactor

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = "LayoutOrder",
			FillDirection = "Horizontal",
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}),
	}

	local orderedUsersArray = {}
	for _, user in pairs(users) do
		table.insert(orderedUsersArray, user)
	end
	table.sort(orderedUsersArray, function(a, b)
		if PRESENCE_WEIGHTS[a.presence] ~= PRESENCE_WEIGHTS[b.presence] then
			return PRESENCE_WEIGHTS[a.presence] > PRESENCE_WEIGHTS[b.presence]
		elseif a.name ~= nil and b.name ~= nil then
			return a.name < b.name
		else
			return a.id < b.id
		end
	end)

	local count = 0
	for _, user in pairs(orderedUsersArray) do
		if user.isFriend then
			count = count + 1
			children["User_" .. user.id] = Roact.createElement(UserCarouselEntry, {
				user = user,
				formFactor = formFactor,
				count = count,
				highlightColor = Constants.Color.WHITE,
			})
		end
	end

	return Roact.createElement(FitChildren.FitScrollingFrame, {
		Size = UDim2.new(1, 0, 1, 0),
		Position = position,
		ScrollBarThickness = 0,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ClipsDescendants = false,
		LayoutOrder = LayoutOrder,

		fitFields = { CanvasSize = FitChildren.FitAxis.Width },
	}, children)
end

return UserCarousel