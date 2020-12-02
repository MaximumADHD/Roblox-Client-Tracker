--[[
	Connects to MarketplaceService's callback for completing a native purchase, so that we can
	retry after an upsell purchase was processed
]]
local Root = script.Parent.Parent.Parent

local Players = game:GetService("Players")
local ABTestService = game:GetService("ABTestService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

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
