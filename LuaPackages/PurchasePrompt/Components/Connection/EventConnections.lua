--[[
	Connects relevant Roblox engine events to the rodux store
]]
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)

local UpsellFlow = require(script.Parent.Parent.Parent.UpsellFlow)

local MarketplaceServiceEventConnector = require(script.Parent.MarketplaceServiceEventConnector)
local GamepadInputConnector = require(script.Parent.GamepadInputConnector)

local BrowserPurchaseFinishedConnector = require(script.Parent.BrowserPurchaseFinishedConnector)
local NativePurchaseFinishedConnector = require(script.Parent.NativePurchaseFinishedConnector)

local getUpsellFlow = require(script.Parent.Parent.Parent.NativeUpsell.getUpsellFlow)

local function EventConnections()
	local upsellConnector
	local upsellFlow = getUpsellFlow(UserInputService:GetPlatform())
	if upsellFlow == UpsellFlow.Web then
		upsellConnector = Roact.createElement(BrowserPurchaseFinishedConnector)
	elseif upsellFlow == UpsellFlow.Mobile then
		upsellConnector = Roact.createElement(NativePurchaseFinishedConnector)
	end

	return Roact.createElement("Folder", {}, {
		MarketPlaceServiceEventConnector = Roact.createElement(MarketplaceServiceEventConnector),
		GamepadInputConnector = Roact.createElement(GamepadInputConnector),
		UpsellFinishedConnector = upsellConnector,
	})
end

return EventConnections