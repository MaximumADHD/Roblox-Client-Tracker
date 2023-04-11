--!nonstrict
--* Other events are tracked globally:
--* Presence updates (aka PresenceBulkNotifications) are currently listened to in src/internal/LuaApp/Modules/LuaApp/Components/EventReceivers/ChatEventReceiver.lua.
--* Friendship updates (aka FriendshipCreated and FriendshipDestroyed) are currently listened to in src/internal/LuaApp/Modules/LuaApp/Components/EventReceivers/FriendshipEventReceiver.lua.
--* Friend request updates (aka FriendshipRequested) are currently listened to in src/internal/LuaApp/Modules/LuaApp/Components/EventReceivers/FriendRequestsEventReceiver.lua or src/internal/LuaApp/Modules/LuaApp/Components/EventReceivers/FriendsRequestEventListener.lua
--* DisplayName updates (aka DisplayNameNotifications) src/internal/LuaApp/Modules/LuaApp/Components/EventReceivers/DisplayNameEventReceiver.lua
local SocialTab = script.Parent
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local RoduxFriends = dependencies.RoduxFriends
local RoduxUsers = dependencies.RoduxUsers

local GetUnreadConversationCount = require(SocialTab.Conversations.NetworkRequests.GetUnreadConversationCount)
local RoduxNetworking = dependencies.RoduxNetworking
local NetworkingFriends = dependencies.NetworkingFriends
local llama = dependencies.llama
local SocialLibraries = dependencies.SocialLibraries
local getFFlagSocialAddFriendshipRequestEvent = dependencies.getFFlagSocialAddFriendshipRequestEvent

local Logger = require(SocialTab.Logger)

local SocialTabEventReceiver = Roact.Component:extend("SocialTabEventReceiver")
local EMPTY_USERS = {}

function SocialTabEventReceiver:init()
	local robloxEventReceiver = self.props.robloxEventReceiver

	self.lastSeqNumByNamespace = {}
	self.lastConnectionState = Enum.ConnectionState.Connected

	local function updateLastSequenceNumber(namespace, sequenceNumber)
		self.lastSeqNumByNamespace[namespace] = sequenceNumber
	end

	self.getUnreadConversationCount = function()
		return self.props.getUnreadConversationCount():catch(function(err)
			Logger:warning("{} has issues fetching UnreadConversationCount: {}", script.Name, err)
		end)
	end

	local function isLookingAtConversation(detail)
		local activeConversationId = self.props.getActiveConversationId()
		return activeConversationId == tostring(detail.ConversationId)
	end

	local getUnreadConversationCountByDetailTypeFilters = {
		ConversationRemoved = function(detail)
			return not isLookingAtConversation(detail)
		end,

		RemovedFromConversation = function(detail)
			return not isLookingAtConversation(detail)
		end,

		NewMessage = function(detail)
			return not isLookingAtConversation(detail)
		end,

		MessageMarkedAsRead = function(detail)
			return not isLookingAtConversation(detail)
		end,
	}
	local function isEventFiltered(detail, detailType)
		local filter = getUnreadConversationCountByDetailTypeFilters[detailType]
		if filter then
			return filter(detail)
		end

		return false
	end

	self.tokens = {
		robloxEventReceiver:observeEvent("ChatNotifications", function(detail, detailType)
			detailType = detail.Type or detailType
			updateLastSequenceNumber("ChatNotifications", detail.SequenceNumber)

			if isEventFiltered(detail, detailType) then
				self.getUnreadConversationCount()
			end
		end),

		robloxEventReceiver:observeEvent("FriendshipNotifications", function(detail)
			if
				detail.Type == "FriendshipRequested"
				or detail.Type == "FriendshipDeclined"
				or detail.Type == "FriendshipCreated"
			then
				if getFFlagSocialAddFriendshipRequestEvent() then
					-- This event is being handled by `FriendRequestsEventReceiver` below code would duplicate the request.
					return
				end

				if self.props.friendRequestCountStatus ~= RoduxNetworking.Enum.NetworkStatus.Fetching then
					self.props.getFriendRequestsCount():catch(function(err)
						Logger:warning("{} has issues fetching GetFriendRequestsCounts: {}", script.Name, err)
					end)
				end
			elseif detail.Type == "FriendshipDestroyed" then
				if detail.EventArgs then
					local userId1 = tostring(detail.EventArgs.UserId1)
					local userId2 = tostring(detail.EventArgs.UserId2)
					if userId1 == self.props.localUserId then
						userId1 = "localUserId"
					end
					if userId2 == self.props.localUserId then
						userId2 = "localUserId"
					end

					self.props.friendshipDestroyed(userId1, userId2)
				end
			end
		end),

		robloxEventReceiver:observeEvent("signalR", function(connectionState, _seqNum, seqNumByNamespaceDetail)
			local lastConnectionState = self.lastConnectionState
			self.lastConnectionState = connectionState

			if connectionState == Enum.ConnectionState.Connected then
				if seqNumByNamespaceDetail then
					if
						self.lastSeqNumByNamespace.ChatNotifications ~= seqNumByNamespaceDetail.ChatNotifications
						or lastConnectionState ~= connectionState
					then
						self.getUnreadConversationCount()
					end
					self.lastSeqNumByNamespace = seqNumByNamespaceDetail
				end
			end
		end),

		-- RoactChat's event receiver system handles navigating to the appropriate conversation, we need to go to chat tile
		robloxEventReceiver:observeEvent("AppShellNotifications", function(detail, detailType)
			if detailType == "StartConversationWithUserId" or detailType == "StartConversationWithId" then
				self.props.goToChat()
			end
		end),

		-- when we return from a webview, we receive a Focused event. We use this bring back the bottom bar
		robloxEventReceiver:observeEvent("AppInput", function(_detail, detailType)
			if detailType == "Focused" then
				self.props.showTabBar()
			end
		end),

		if getFFlagSocialAddFriendshipRequestEvent()
			then nil
			else robloxEventReceiver:observeEvent("DisplayNameNotifications", function(detail)
				local userId = detail.UserId
				local displayName = detail.NewDisplayName

				local currentUser = self.props.users[tostring(userId)]

				if currentUser then
					self.props.userUpdated(llama.Dictionary.join(currentUser, {
						displayName = displayName,
					}))
				end
			end),
	}
end

function SocialTabEventReceiver:render()
	return nil
end

function SocialTabEventReceiver:willUnmount()
	for _, connection in pairs(self.tokens) do
		connection:disconnect()
	end
end

return RoactRodux.connect(function(state)
	return {
		localUserId = state.LocalUserId,
		friendRequestCountStatus = if getFFlagSocialAddFriendshipRequestEvent()
			then nil
			else NetworkingFriends.GetFriendRequestsCount.getStatus(state),
		users = if getFFlagSocialAddFriendshipRequestEvent()
			then nil
			else (SocialLibraries.Dictionary.getDeepValue(state, "SocialTab.Users.byUserId") or EMPTY_USERS),
	}
end, function(dispatch)
	return {
		friendshipDestroyed = function(userId1, userId2)
			return dispatch(RoduxFriends.Actions.FriendshipDestroyed(userId1, userId2))
		end,
		userUpdated = if getFFlagSocialAddFriendshipRequestEvent()
			then nil
			else function(userInfo)
				return dispatch(RoduxUsers.Actions.UserUpdated(userInfo))
			end,
		getUnreadConversationCount = function()
			return dispatch(GetUnreadConversationCount.API())
		end,
		getFriendRequestsCount = if getFFlagSocialAddFriendshipRequestEvent()
			then nil
			else function()
				return dispatch(NetworkingFriends.GetFriendRequestsCount.API())
			end,
	}
end)(SocialTabEventReceiver)
