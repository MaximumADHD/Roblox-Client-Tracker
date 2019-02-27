--[[
	Connects to MarketplaceService's callback for completing a native purchase, so that we can
	retry after an upsell purchase was processed
]]
local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")

local Roact = require(CorePackages.Roact)
local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local ErrorOccurred = require(script.Parent.Parent.Parent.Actions.ErrorOccurred)

local PurchaseError = require(script.Parent.Parent.Parent.PurchaseError)

local retryAfterUpsell = require(script.Parent.Parent.Parent.Thunks.retryAfterUpsell)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

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