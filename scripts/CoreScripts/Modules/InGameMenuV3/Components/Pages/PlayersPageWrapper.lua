local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local GetFriends = require(InGameMenu.Thunks.GetFriends)

local PlayersPage = require(script.Parent.PlayersPage)

local PlayersPageWrapper = Roact.PureComponent:extend("PlayersPageWrapper")

PlayersPageWrapper.validateProps = t.interface({
	isMenuOpen = t.boolean,
	pageTitle = t.string,
})

function PlayersPageWrapper:init()
	self:setState({
		players = Players:GetPlayers(),
		inviteFriends = {},
		incomingFriendRequests = {},
	})

	self.incomingFriendRequests = {}
	self.incomingFriendRequestsMap = {} -- maps by userid for quick lookup
end

local function sortPlayers(p1, p2)
	return p1.Name:lower() < p2.Name:lower()
end

function PlayersPageWrapper:render()
	local sortedPlayers = Cryo.List.sort(self.state.players, sortPlayers)

	-- filter out players who are part of incoming friend requests
	if self.incomingFriendRequests and #self.incomingFriendRequests > 0 then
		sortedPlayers = Cryo.List.filter(sortedPlayers, function(player)
			return self.incomingFriendRequestsMap[player.UserId] == nil
		end)
	end

	return Roact.createElement(PlayersPage, {
		players = sortedPlayers,
		pageTitle = self.props.pageTitle,
		incomingFriendRequests = self.state.incomingFriendRequests,
		pendingIncomingPlayerInvite = self.state.pendingIncomingPlayerInvite,
	})
end

function PlayersPageWrapper:addIncomingFriendRequestPlayer(player)
	self.incomingFriendRequestsMap[player.UserId] = player

	local index = table.find(self.incomingFriendRequests, player)
	if not index then
		table.insert(self.incomingFriendRequests, player)
	end
end

function PlayersPageWrapper:removeIncomingFriendRequestPlayer(player)
	self.incomingFriendRequestsMap[player.UserId] = nil

	local index = table.find(self.incomingFriendRequests, player)
	if index then
		table.remove(self.incomingFriendRequests, index)
	end
end

function PlayersPageWrapper:didUpdate(prevProps, prevState)
	if self.props.isMenuOpen and not prevProps.isMenuOpen then
		self:setState({
			players = Players:GetPlayers(),
		})
	end
end

function PlayersPageWrapper:didMount()
	self.props.getFriends():andThen(function(friends)
		self:setState({
			inviteFriends = friends,
		})
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

		self:setState({
			incomingFriendRequests = self.incomingFriendRequests,
			pendingIncomingPlayerInvite = Roact.None,
		})
	end)

	-- when a player leaves, remove them from list
	self.playerRemovingEventConnection = Players.PlayerRemoving:Connect(function(player)
		self:removeIncomingFriendRequestPlayer(player)

		if self.state.pendingIncomingPlayerInvite == player then
			self:setState({
				pendingIncomingPlayerInvite = Roact.None,
			})
		end
	end)
end

function PlayersPageWrapper:willUnmount()
	if self.friendRequestEventConnection then
		self.friendRequestEventConnection:Disconnect()
		self.friendRequestEventConnection = nil
	end

	if self.playerRemovingEventConnection then
		self.playerRemovingEventConnection:Disconnect()
		self.playerRemovingEventConnection = nil
	end
end

return RoactRodux.connect(function(state, props)
	return {
		isMenuOpen = state.isMenuOpen,
		inviteFriends = state.inviteFriends,
	}
end, function(dispatch)
	return {
		getFriends = function()
			return dispatch(GetFriends(Players))
		end,
	}
end)(PlayersPageWrapper)
