--!nonstrict
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local GetFriends = require(InGameMenu.Thunks.GetFriends)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnectionMemo)
local FriendRequestStatus = require(InGameMenu.Utility.FriendRequestStatus)

local PlayersPage = require(script.Parent.PlayersPage)

local PlayersPageWrapper = Roact.PureComponent:extend("PlayersPageWrapper")

PlayersPageWrapper.validateProps = t.interface({
	pageTitle = t.string,
	inviteFriends = t.optional(t.array),
})

local function sortPlayers(p1, p2)
	return p1.DisplayName:lower() < p2.DisplayName:lower()
end

function PlayersPageWrapper:init()
	self.playerListDirty = false
	self.menuOpen = false
	self.setPlayerListDirty = function()
		self.playerListDirty = true
	end

	self.loadPlayers = function()
		local players = Players:GetPlayers()
		if #players <= 1 then
			-- sometimes the player list only contains LocalPlayer in a room with multiple players
			-- this is likely a race condition at startup that we need more information about
			-- the quick fix for now is to not cache the player lists of size <= 1
			self.setPlayerListDirty()
		end
		self:setState({
			players = Cryo.List.sort(players, sortPlayers),
		})
	end

	self.deferLoadPlayers = function()
		task.defer(self.loadPlayers)
	end

	self.onMenuOpenChange = function(menuOpen, priorMenuOpen)
		self.menuOpen = menuOpen
		if self.playerListDirty and menuOpen and not priorMenuOpen then
			self.playerListDirty = false
			self:deferLoadPlayers()
		end
	end

	self.onPlayerAdded = function(player)
		self:setPlayerListDirty()
	end

	self.onPlayerRemoved = function(player)
		self:setPlayerListDirty()
		self:removeIncomingFriendRequestPlayer(player)
		if self.menuOpen then
			self:setState({
				lastRemovedPlayerId = player.UserId
			})
		end
	end

	self:setState({
		incomingFriendRequests = {},
	})
end

function PlayersPageWrapper:render()
	return Roact.createFragment({
		Watcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = "",
			onNavigate = self.onMenuOpenChange,
		}),
		PlayerAdded = Roact.createElement(ExternalEventConnection, {
			event = Players.PlayerAdded,
			callback = self.onPlayerAdded,
		}),
		PlayerRemoving = Roact.createElement(ExternalEventConnection, {
			event = Players.PlayerRemoving,
			callback = self.onPlayerRemoved,
		}),
		PlayersPageWrapper = Roact.createElement(PlayersPage, {
			players = self.state.players,
			pageTitle = self.props.pageTitle,
			incomingFriendRequests = self.state.incomingFriendRequests,
			lastRemovedPlayerId = self.state.lastRemovedPlayerId,
		})
	})
end

function PlayersPageWrapper:addIncomingFriendRequestPlayer(player)
	local index = Cryo.List.find(self.state.incomingFriendRequests, player)
	if not index then
		self:setState({
			incomingFriendRequests = Cryo.List.join({player}, self.state.incomingFriendRequests)
		})
		self.loadPlayers()
	end
end

function PlayersPageWrapper:removeIncomingFriendRequestPlayer(player)
	local index = Cryo.List.find(self.state.incomingFriendRequests, player)
	if index then
		self:setState({
			incomingFriendRequests = Cryo.List.removeIndex(self.state.incomingFriendRequests, index)
		})
		self.loadPlayers()
	end
end

function PlayersPageWrapper:didMount()

	self:deferLoadPlayers()
	self.props.getFriends()

	self.friendStatusConnection = FriendRequestStatus.connectLocalFriendRequestResponce(function(player)
		self:removeIncomingFriendRequestPlayer(player)
	end)

	self.friendRequestEventConnection = Players.FriendRequestEvent:connect(function(fromPlayer, toPlayer, event)
		if fromPlayer ~= Players.LocalPlayer and toPlayer ~= Players.LocalPlayer then
			return
		end

		if fromPlayer == Players.LocalPlayer then
			-- if we have accepted friend request, they are no longer pending an incoming friend request
			if event == Enum.FriendRequestEvent.Accept or event == Enum.FriendRequestEvent.Deny then
				self:removeIncomingFriendRequestPlayer(toPlayer)
			end
		elseif toPlayer == Players.LocalPlayer then
			-- if player made an incoming friend request to me, add player to incoming friend request section
			if event == Enum.FriendRequestEvent.Issue then
				self:addIncomingFriendRequestPlayer(fromPlayer)
			elseif event == Enum.FriendRequestEvent.Revoke then
				-- if they revoked their friend request, remove player from incoming friend request section
				self:removeIncomingFriendRequestPlayer(fromPlayer)
			end
		end

	end)

	self:setState({
		incomingFriendRequests = {},
	})
end

function PlayersPageWrapper:willUnmount()
	if self.friendRequestEventConnection then
		self.friendRequestEventConnection:Disconnect()
		self.friendRequestEventConnection = nil
	end
	if self.friendStatusConnection then
		self.friendStatusConnection:Disconnect()
		self.friendStatusConnection = nil
	end
end

return RoactRodux.connect(nil, function(dispatch)
	return {
		getFriends = function()
			return dispatch(GetFriends(Players))
		end,
	}
end)(PlayersPageWrapper)
