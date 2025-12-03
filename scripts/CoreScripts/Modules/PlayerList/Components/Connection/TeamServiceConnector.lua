local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local SetTeamName = require(PlayerList.Actions.SetTeamName)
local SetTeamColor = require(PlayerList.Actions.SetTeamColor)
local AddPlayerToTeam = require(PlayerList.Actions.AddPlayerToTeam)
local RemovePlayerFromTeam = require(PlayerList.Actions.RemovePlayerFromTeam)

local AddTeam = require(PlayerList.Actions.AddTeam)
local RemoveTeam = require(PlayerList.Actions.RemoveTeam)

local EventConnection = require(script.Parent.EventConnection)

local TeamServiceConnector = Roact.PureComponent:extend("TeamServiceConnector")

function TeamServiceConnector:init()
	-- We use FindService here so that we don't cause the Teams to be added to the explorer in Studio.
	self.state = {
		teams = game:FindService("Teams"),
	}
end

function TeamServiceConnector:didMount()
	if self.state.teams then
		for _, team in ipairs(self.state.teams:GetTeams()) do
			self.props.addTeam(team)
			for _, player in ipairs(team:GetPlayers()) do
				self.props.addPlayerToTeam(player, team)
			end
		end
	end
end

function TeamServiceConnector:render()
	local teamChangedConnections = {}
	local playerAddedConnections = {}
	local playerRemovedConnections = {}

	for i, team in ipairs(self.props.teams) do
		teamChangedConnections[i] = Roact.createElement(EventConnection, {
			event = team.Changed,
			callback = function(property)
				if property == "Name" then
					self.props.setTeamName(team)
				elseif property == "TeamColor" then
					self.props.setTeamColor(team)
				end
			end,
		})

		playerAddedConnections[i] = Roact.createElement(EventConnection, {
			event = team.PlayerAdded,
			callback = function(player)
				self.props.addPlayerToTeam(player, team)
			end,
		})

		playerRemovedConnections[i] = Roact.createElement(EventConnection, {
			event = team.PlayerRemoved,
			callback = function(player)
				self.props.removePlayerFromTeam(player, team)
			end,
		})
	end

	local teams = self.state.teams

	return Roact.createFragment({
		TeamChangedConnections = Roact.createFragment(teamChangedConnections),
		PlayerAddedConnections = Roact.createFragment(playerAddedConnections),
		PlayerRemovedConnections = Roact.createFragment(playerRemovedConnections),

		ServiceAddedConnection = not teams and Roact.createElement(EventConnection, {
			event = game.ChildAdded,
			callback = function(child)
				if child:IsA("Teams") then
					self:setState({
						teams = child,
					})
				end
			end,
		}),

		TeamAddedConnection = teams and Roact.createElement(EventConnection, {
			event = teams.ChildAdded,
			callback = function(team)
				if team:IsA("Team") then
					self.props.addTeam(team)
				end
			end,
		}),

		TeamRemovedConnection = teams and Roact.createElement(EventConnection, {
			event = teams.ChildRemoved,
			callback = function(team)
				if team:IsA("Team") then
					self.props.removeTeam(team)
				end
			end,
		}),
	})
end

function TeamServiceConnector:didUpdate(prevProps, prevState)
	if self.props.teams ~= prevProps.teams then
		local oldTeamMap = {}
		for _, oldTeam in ipairs(prevProps.teams) do
			oldTeamMap[oldTeam] = true
		end
		for _, team in ipairs(self.props.teams) do
			if not oldTeamMap[team] then
				for _, player in ipairs(team:GetPlayers()) do
					self.props.addPlayerToTeam(player, team)
				end
			end
		end
	end
end

function TeamServiceConnector:willUnmount()
	if self.state.teams then
		for _, team in ipairs(self.state.teams:GetTeams()) do
			self.props.removeTeam(team)
		end
	end
end

local function mapStateToProps(state)
	return {
		teams = state.teams,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setTeamName = function(team)
			return dispatch(SetTeamName(team, team.Name))
		end,

		setTeamColor = function(team)
			return dispatch(SetTeamColor(team, team.TeamColor))
		end,

		addPlayerToTeam = function(player, team)
			return dispatch(AddPlayerToTeam(player, team))
		end,

		removePlayerFromTeam = function(player, team)
			return dispatch(RemovePlayerFromTeam(player, team))
		end,

		addTeam = function(team)
			return dispatch(AddTeam(team))
		end,

		removeTeam = function(team)
			return dispatch(RemoveTeam(team))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TeamServiceConnector)
