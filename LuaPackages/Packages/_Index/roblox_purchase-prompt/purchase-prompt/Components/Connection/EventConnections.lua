--[[
	Connects relevant Roblox engine events to the rodux store
]]
local Root = script.Parent.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local UpsellFlow = require(Root.Enums.UpsellFlow)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)

local MarketplaceServiceEventConnector = require(script.Parent.MarketplaceServiceEventConnector)
local InputTypeManager = require(script.Parent.InputTypeManager)
local BrowserPurchaseFinishedConnector = require(script.Parent.BrowserPurchaseFinishedConnector)
local NativePurchaseFinishedConnector = require(script.Parent.NativePurchaseFinishedConnector)
local PlayerConnector = require(script.Parent.PlayerConnector)

local function EventConnections()
	local upsellConnector
	local upsellFlow = getUpsellFlow(UserInputService:GetPlatform())
	if upsellFlow == UpsellFlow.Web then
		upsellConnector = Roact.createElement(BrowserPurchaseFinishedConnector)
	elseif upsellFlow == UpsellFlow.Mobile then
		upsellConnector = Roact.createElement(NativePurchaseFinishedConnector)
	end

	local enableInputManager = UserInputService:GetPlatform() ~= Enum.Platform.XBoxOne

	return Roact.createElement("Folder", {}, {
		MarketPlaceServiceEventConnector = Roact.createElement(MarketplaceServiceEventConnector),
		InputTypeManager = enableInputManager and Roact.createElement(InputTypeManager) or nil,
		UpsellFinishedConnector = upsellConnector,
		PlayerConnector = Roact.createElement(PlayerConnector),
	})
end

return EventConnections