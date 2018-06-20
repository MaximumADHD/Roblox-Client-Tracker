local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local ConversationEntry = require(ShareGame.Components.ConversationEntry)

local User = require(ShareGame.Models.User)
local SetUserInvited = require(ShareGame.Actions.SetUserInvited)
local memoize = require(ShareGame.memoize)

local Networking = require(ShareGame.Http.Networking)
local ApiSendGameInvite = require(ShareGame.Thunks.ApiSendGameInvite)
local ApiFetchPlaceInfos = require(ShareGame.Thunks.ApiFetchPlaceInfos)

local ENTRY_HEIGHT = 62
local ENTRY_PADDING = 18

local PRESENCE_WEIGHTS = {
	[User.PresenceType.ONLINE] = 3,
	[User.PresenceType.IN_GAME] = 2,
	[User.PresenceType.IN_STUDIO] = 1,
	[User.PresenceType.OFFLINE] = 0,
}

local ConversationList = Roact.PureComponent:extend("ConversationList")

local function searchFilterPredicate(query, other)
	if query == "" then
		return true
	end
	return string.find(string.lower(other), query, 1, true) ~= nil
end

function ConversationList:render()
	local friends = self.props.friends
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local children = self.props[Roact.Children] or {}

	local searchText = self.props.searchText
	local inviteUser = self.props.inviteUser
	local invites = self.props.invites

	children["RowListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, ENTRY_PADDING),
	})

	local numEntries = 0
	-- Populate list of conversations with friends
	for i, user in pairs(friends) do
		local isEntryShown = searchFilterPredicate(searchText, user.name)

		children["User-"..user.name] = Roact.createElement(ConversationEntry, {
			visible = isEntryShown,
			size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
			layoutOrder = i,
			zIndex = zIndex,
			title = user.name,
			presence = user.presence,
			users = {user},
			inviteUser = inviteUser,
			alreadyInvited = invites[user.id] == true,
		})

		if isEntryShown then
			numEntries = numEntries + 1
		end
	end

	return Roact.createElement("ScrollingFrame", {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = size,
		CanvasSize = UDim2.new(0, 0, 0, numEntries * (ENTRY_HEIGHT + ENTRY_PADDING)),
		ScrollBarThickness = 0,
		ZIndex = zIndex,
	}, children)
end

local selectFriends = memoize(function(users)
	local friends = {}
	local function friendPreference(friend1, friend2)
		local friend1Weight = PRESENCE_WEIGHTS[friend1.presence]
		local friend2Weight = PRESENCE_WEIGHTS[friend2.presence]

		if friend1Weight == friend2Weight then
			return friend1.name < friend2.name
		else
			return friend1Weight > friend2Weight
		end
	end

	for _, user in pairs(users) do
		if user.isFriend then
			friends[#friends + 1] = user
		end
	end

	table.sort(friends, friendPreference)

	return friends
end)

local connector = RoactRodux.connect(function(store, props)
	local state = store:getState()
	return {
		friends = selectFriends(
			state.Users
		),
		invites = state.Invites,

		inviteUser = function(userId)
			local latestState = store:getState()
			local placeId = tostring(game.PlaceId)

			-- Check that we haven't already invited this user
			if latestState.Invites[tostring(userId)] == true then
				return
			end

			local networking = Networking.new()
			local placeInfo = latestState.PlaceInfos[placeId]

			-- Log that we've tried inviting this user
			store:dispatch(SetUserInvited(userId, true))

			-- Send invite if we already have the current game's place info
			if placeInfo then
				store:dispatch(
					ApiSendGameInvite(networking, userId, placeInfo)
				)
			else
				-- Fetch place info of current game if we don't have it, then
				-- send the invite
				store:dispatch(
					ApiFetchPlaceInfos(networking, {placeId})
				):andThen(function(placeInfos)
					if placeInfos[1] ~= nil then
						store:dispatch(
							ApiSendGameInvite(networking, userId, placeInfos[1])
						)
					end
				end)
			end
		end
	}
end)

return connector(ConversationList)
