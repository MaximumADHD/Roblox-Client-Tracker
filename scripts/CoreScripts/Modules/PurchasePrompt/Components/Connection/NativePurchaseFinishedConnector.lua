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

local function NativePurchaseFinishedConnector(props)
	local nativePurchaseFinished = props.nativePurchaseFinished

	return Roact.createElement(ExternalEventConnection, {
		event = MarketplaceService.NativePurchaseFinished,
		callback = nativePurchaseFinished,
	})
end

local function mapDispatchToProps(dispatch)
	return {
		nativePurchaseFinished = function(player, productId, wasPurchased)
			if wasPurchased then
				dispatch(retryAfterUpsell())
			else
				dispatch(ErrorOccurred(PurchaseError.InvalidFunds))
			end
		end,
	}
end

NativePurchaseFinishedConnector = connectToStore(
	nil,
	mapDispatchToProps
)(NativePurchaseFinishedConnector)

return NativePurchaseFinishedConnector
