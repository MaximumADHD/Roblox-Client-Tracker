--[[
	Connects to MarketplaceService's callback for completing a native purchase, so that we can
	retry after an upsell purchase was processed
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
local Players = game:GetService("Players")
local ABTestService = game:GetService("ABTestService")

local Roact = require(LuaPackages.Roact)
local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

local function PlayerConnector(props)
	local playerConnects = props.playerConnects

	return Roact.createElement(ExternalEventConnection, {
		event = Players.PlayerAdded,
		callback = playerConnects,
	})
end

local function mapDispatchToProps(dispatch)
	return {
		playerConnects = function(player)
			if player == Players.LocalPlayer then
				ABTestService:InitializeForUserId(Players.LocalPlayer.UserId)
			end
		end,
	}
end

PlayerConnector = connectToStore(
	nil,
	mapDispatchToProps
)(PlayerConnector)

return PlayerConnector