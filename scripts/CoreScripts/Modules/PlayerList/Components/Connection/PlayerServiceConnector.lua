local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local AddPlayer = require(PlayerList.Actions.AddPlayer)
local RemovePlayer = require(PlayerList.Actions.RemovePlayer)

local MakePlayerInfoRequests = require(PlayerList.Thunks.MakePlayerInfoRequests)

local EventConnection = require(script.Parent.EventConnection)
local FFlagBadgeVisibilitySettingEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagBadgeVisibilitySettingEnabled
local FFlagDeferPlayerInfoRequests = game:DefineFastFlag("DeferPlayerInfoRequests", false)

local PlayerServiceConnector = Roact.PureComponent:extend("PlayerServiceConnector")

function PlayerServiceConnector:didMount()
	local players = Players:GetPlayers()
	for _, player in ipairs(players) do
		self.props.addPlayer(player)
		self.props.makePlayerInfoRequests(player)
	end
	if FFlagBadgeVisibilitySettingEnabled then
		spawn(function() 
			local SendPlayerProfileSettings = RobloxReplicatedStorage:WaitForChild("SendPlayerProfileSettings", math.huge) :: RemoteEvent
			self.sendPlayerProfileSettingsConnection = SendPlayerProfileSettings.OnClientEvent:Connect(function(userIdStr: string)
				local userId = tonumber(userIdStr) :: number
				local player = Players:GetPlayerByUserId(userId)
				if player then
					if FFlagDeferPlayerInfoRequests then
						task.defer(function()
							self.props.makePlayerInfoRequests(player)
						end)
					else
						self.props.makePlayerInfoRequests(player)
					end
				end
			end)
		end)
	end
end

function PlayerServiceConnector:render()
	return Roact.createFragment({
		PlayerAddedConnection = Roact.createElement(EventConnection, {
			event = Players.PlayerAdded,
			callback = function(player)
				self.props.addPlayer(player)
				self.props.makePlayerInfoRequests(player)
			end,
		}),

		PlayerRemovingConnection = Roact.createElement(EventConnection, {
			event = Players.PlayerRemoving,
			callback = function(player)
				self.props.removePlayer(player)
			end,
		}),
	})
end

function PlayerServiceConnector:willUnmount()
	local players = Players:GetPlayers()
	for _, player in ipairs(players) do
		self.props.removePlayer(player)
	end

	if FFlagBadgeVisibilitySettingEnabled and self.sendPlayerProfileSettingsConnection then
		self.sendPlayerProfileSettingsConnection:Disconnect()
	end
end

local function mapDispatchToProps(dispatch)
	return {
		addPlayer = function(player)
			return dispatch(AddPlayer(player))
		end,

		makePlayerInfoRequests = function(player)
			return dispatch(MakePlayerInfoRequests(player))
		end,

		removePlayer = function(player)
			return dispatch(RemovePlayer(player))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(PlayerServiceConnector)
