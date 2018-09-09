local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local AppTempCommon = CorePackages.AppTempCommon

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local ConversationEntry = require(ShareGame.Components.ConversationEntry)
local NoFriendsPage = require(ShareGame.Components.NoFriendsPage)
local LoadingFriendsPage = require(ShareGame.Components.LoadingFriendsPage)
local FriendsErrorPage = require(ShareGame.Components.FriendsErrorPage)
local Constants = require(ShareGame.Constants)
local httpRequest = require(AppTempCommon.Temp.httpRequest)

local User = require(AppTempCommon.LuaApp.Models.User)
local ReceivedUserInviteStatus = require(ShareGame.Actions.ReceivedUserInviteStatus)
local memoize = require(AppTempCommon.Common.memoize)
local Promise = require(AppTempCommon.LuaApp.Promise)

local ApiSendGameInvite = require(AppTempCommon.LuaApp.Thunks.ApiSendGameInvite)
local ApiFetchPlaceInfos = require(AppTempCommon.LuaApp.Thunks.ApiFetchPlaceInfos)
local RetrievalStatus = require(CorePackages.AppTempCommon.LuaApp.Enum.RetrievalStatus)

local ENTRY_HEIGHT = 62
local ENTRY_PADDING = 18

local NO_RESULTS_FONT = Enum.Font.SourceSans
local NO_RESULTS_TEXTCOLOR = Constants.Color.GRAY3
local NO_RESULTS_TEXTSIZE = 19
local NO_RESULTS_TRANSPRENCY = 0.22

local InviteStatus = Constants.InviteStatus

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
	return string.find(string.lower(other), query:lower(), 1, true) ~= nil
end

function ConversationList:render()
	local children = self.props[Roact.Children] or {}
	local friends = self.props.friends
	local friendsRetrievalStatus = self.props.friendsRetrievalStatus
	local layoutOrder = self.props.layoutOrder
	local size = self.props.size
	local zIndex = self.props.zIndex
	local topPadding = self.props.topPadding

	local invites = self.props.invites
	local inviteUser = self.props.inviteUser
	local searchText = self.props.searchText

	children["RowListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, ENTRY_PADDING),
	})

	local numEntries = 0
	-- Populate list of conversations with friends
	for i, user in ipairs(friends) do
		local isEntryShown = searchFilterPredicate(searchText, user.name)

		children["User-" .. tostring(i)] = Roact.createElement(ConversationEntry, {
			visible = isEntryShown,
			size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
			layoutOrder = i,
			zIndex = zIndex,
			title = user.name,
			presence = user.presence,
			users = {user},
			inviteUser = inviteUser,
			inviteStatus = invites[user.id],
		})

		if isEntryShown then
			numEntries = numEntries + 1
		end
	end

	if #friends == 0 or friendsRetrievalStatus == RetrievalStatus.Fetching then
		local zeroFriendsComponent = LoadingFriendsPage

		if friendsRetrievalStatus == RetrievalStatus.Done then
			zeroFriendsComponent = NoFriendsPage
		elseif friendsRetrievalStatus == RetrievalStatus.Failed then
			zeroFriendsComponent = FriendsErrorPage
		end

		return Roact.createElement(zeroFriendsComponent, {
			BorderSizePixel = 0,
			LayoutOrder = layoutOrder,
			Position = UDim2.new(0, 0, 0, topPadding),
			ZIndex = zIndex,
		})
	else
		if numEntries == 0 then
			return Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
				Font = NO_RESULTS_FONT,
				Size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
				Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.InviteSearchNoResults"),
				TextColor3 = NO_RESULTS_TEXTCOLOR,
				TextSize = NO_RESULTS_TEXTSIZE,
				TextTransparency = NO_RESULTS_TRANSPRENCY,
				ZIndex = zIndex,
			})
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
			return friend1.name:lower() < friend2.name:lower()
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

-- TODO: Update to use RoactRodux.UNSTABLE_connect2
local connector = RoactRodux.connect(function(store, props)
	local state = store:getState()
	return {
		friends = selectFriends(
			state.Users
		),
		friendsRetrievalStatus = state.Friends.retrievalStatus[tostring(Players.LocalPlayer.UserId)],
		invites = state.Invites,

		inviteUser = function(userId)
			local requestImpl = httpRequest(HttpRbxApiService)
			local latestState = store:getState()

			return Promise.new(function(resolve, reject)
				-- Check that we haven't already invited this user
				if latestState.Invites[tostring(userId)] == InviteStatus.Pending then
					reject()
				else
					resolve()
				end
			end):andThen(function()
				local placeId = tostring(game.PlaceId)
				local maybePlaceInfo = latestState.PlaceInfos[placeId]

				-- TODO: This should be a Thunk
				return Promise.new(function(resolve, reject)
					-- Log that we've tried inviting this user
					store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Pending))

					if maybePlaceInfo then
						resolve(maybePlaceInfo)
					else
						store:dispatch(ApiFetchPlaceInfos(requestImpl, {placeId})):andThen(function(placeInfos)
							if placeInfos[1] ~= nil then
								resolve(placeInfos[1])
							else
								reject()
							end
						end, function()
							reject()
						end)
					end
				end):andThen(function(placeInfo)
					return store:dispatch(ApiSendGameInvite(requestImpl, userId, placeInfo))
				end):andThen(function(results)
					store:dispatch(ReceivedUserInviteStatus(userId, results.resultType))
				end, function()
					store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Failed))
				end)
			end)
		end
	}
end)

return connector(ConversationList)
