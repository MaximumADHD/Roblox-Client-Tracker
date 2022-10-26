--[[
	Connects to MarketplaceService's callback for completing a native purchase, so that we can
	retry after an upsell purchase was processed
]]
local Root = script.Parent.Parent.Parent

local MarketplaceService = game:GetService("MarketplaceService")
local CorePackages = game:GetService("CorePackages")

local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseError = require(Root.Enums.PurchaseError)
local retryAfterUpsell = require(Root.Thunks.retryAfterUpsell)
local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local GetFFlagRobuxUpsellIXP = require(Root.Flags.GetFFlagRobuxUpsellIXP)

-- we want the ability to listen on both endpoints, so we connect to both for now
-- follows the same pattern as MarketplaceServiceEventConnector.lua
-- eventually, nativePurchaseFinished will be deprecated in the future
local function NativePurchaseFinishedConnector(props)
	local nativePurchaseFinished = props.nativePurchaseFinished
	local nativePurchaseFinishedWithLocalPlayer = props.nativePurchaseFinishedWithLocalPlayer

	if game:GetEngineFeature("NativePurchaseWithLocalPlayer") then
		return Roact.createFragment({
			NativePurchase = Roact.createElement(ExternalEventConnection, {
				event = MarketplaceService.NativePurchaseFinished,
				callback = nativePurchaseFinished,
			}),
			NativePurchaseWithLocalPlayer = Roact.createElement(ExternalEventConnection, {
				event = MarketplaceService.NativePurchaseFinishedWithLocalPlayer,
				callback = nativePurchaseFinishedWithLocalPlayer,
			}),
		})
	else
		return Roact.createElement(ExternalEventConnection, {
				event = MarketplaceService.NativePurchaseFinished,
				callback = nativePurchaseFinished,
		})
	end
end

local function mapDispatchToProps(dispatch)
	return {
		nativePurchaseFinished = function(player, productId, wasPurchased)
			if wasPurchased then
				dispatch(retryAfterUpsell())
			else
				if GetFFlagRobuxUpsellIXP() then
					dispatch(ErrorOccurred(PurchaseError.InvalidFundsUnknown))
				else
					dispatch(ErrorOccurred(PurchaseError.InvalidFunds))
				end
			end
		end,
		nativePurchaseFinishedWithLocalPlayer = function(productId, wasPurchased)
			if wasPurchased then
				dispatch(retryAfterUpsell())
			else
				if GetFFlagRobuxUpsellIXP() then
					dispatch(ErrorOccurred(PurchaseError.InvalidFundsUnknown))
				else
					dispatch(ErrorOccurred(PurchaseError.InvalidFunds))
				end
			end
		end,
	}
end

NativePurchaseFinishedConnector = connectToStore(
	nil,
	mapDispatchToProps
)(NativePurchaseFinishedConnector)

return NativePurchaseFinishedConnector
