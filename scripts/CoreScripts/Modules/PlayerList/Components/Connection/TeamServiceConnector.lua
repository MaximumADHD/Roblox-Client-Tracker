local CorePackages = game:GetService("CorePackages")
local Teams = game:GetService("Teams")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local SetTeamName = require(PlayerList.Actions.SetTeamName)
local SetTeamColor = require(PlayerList.Actions.SetTeamColor)
local AddPlayerToTeam = require(PlayerList.Actions.AddPlayerToTeam)
local RemovePlayerFromTeam = require(PlayerList.Actions.AddPlayerToTeam)
local AddTeam = require(PlayerList.Actions.AddTeam)
local RemoveTeam = require(PlayerList.Actions.RemoveTeam)

local EventConnection = require(script.Parent.EventConnection)

local function TeamServiceConnector(props)
	local teamChangedConnections = {}
	local playerAddedConnections = {}
	local playerRemovedConnections = {}

	for i, team in ipairs(props.teams) do
		teamChangedConnections[i] = Roact.createElement(EventConnection, {
			event = team.Changed,
			callback = function(property)
				if property == "Name" then
					-- TODO: Figure out how to do team name translations
					props.setTeamName(team)
				elseif property == "TeamColor" then
					props.setTeamColor(team)
				end
			end,
		})

		playerAddedConnections[i] = Roact.createElement(EventConnection, {
			event = team.PlayerAdded,
			callback = function(player)
				props.addPlayerToTeam(player, team)
			end,
		})

		playerRemovedConnections[i] = Roact.createElement(EventConnection, {
			event = team.PlayerRemoved,
			callback = function(player)
				props.removePlayerFromTeam(player, team)
			end,
		})
	end

	-- TODO: Clean this up when Fragments are released.
	return Roact.createElement("Folder", {}, {
		TeamChangedConnections = Roact.createElement("Folder", {}, teamChangedConnections),
		PlayerAddedConnections = Roact.createElement("Folder", {}, playerAddedConnections),
		PlayerRemovedConnections = Roact.createElement("Folder", {}, playerRemovedConnections),

		TeamAddedConnection = Roact.createElement(EventConnection, {
			event = Teams.ChildAdded,
			callback = function(team)
				if team:IsA("Team") then
					props.addTeam(team)
					for _, player in ipairs(team:GetPlayers()) do
						props.addPlayerToTeam(player, team)
					end
				end
			end,
		}),

		TeamRemovedConnection = Roact.createElement(EventConnection, {
			event = Teams.ChildRemoved,
			callback = function(team)
				if team:IsA("Team") then
					props.removeTeam(team)
				end
			end,
		}),
	})
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

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(TeamServiceConnector)