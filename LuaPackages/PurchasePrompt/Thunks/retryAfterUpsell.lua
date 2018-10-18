local Thunk = require(script.Parent.Parent.Thunk)

local PurchaseError = require(script.Parent.Parent.PurchaseError)

local Network = require(script.Parent.Parent.Services.Network)
local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

local AccountInfoReceived = require(script.Parent.Parent.Actions.AccountInfoReceived)
local ErrorOccurred = require(script.Parent.Parent.Actions.ErrorOccurred)

local getAccountInfo = require(script.Parent.Parent.Network.getAccountInfo)

local purchaseItem = require(script.Parent.purchaseItem)

local MAX_RETRIES = 3
local RETRY_RATE = 1

local requiredServices = {
	Network,
	ExternalSettings,
}

local function retryAfterUpsell(retriesRemaining)
	retriesRemaining = retriesRemaining or MAX_RETRIES

	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		return getAccountInfo(network, externalSettings)
			:andThen(function(accountInfo)
				local state = store:getState()

				local price = state.productInfo.price
				local minimumBCLevel = state.productInfo.bcLevelRequired

				local balance = accountInfo.RobuxBalance
				local membershipLevel = accountInfo.MembershipType

				store:dispatch(AccountInfoReceived(accountInfo))

				if price ~= nil and price > balance then
					if retriesRemaining > 0 then
						-- Upsell result may not yet have propagated, so we need to
						-- wait a while and try again
						delay(RETRY_RATE, function()
							store:dispatch(retryAfterUpsell(retriesRemaining - 1))
						end)
					else
						store:dispatch(ErrorOccurred(PurchaseError.InvalidFunds))
					end

				elseif minimumBCLevel > membershipLevel then
					if retriesRemaining > 0 then
						-- Upsell result may not yet have propagated, so we need to
						-- wait a while and try again
						delay(RETRY_RATE, function()
							store:dispatch(retryAfterUpsell(retriesRemaining - 1))
						end)
					else
						store:dispatch(ErrorOccurred(PurchaseError.BuildersClubUpsellFailure))
					end

				else
					-- Upsell was successful and purchase can now be completed
					store:dispatch(purchaseItem())
				end
			end)
			:catch(function(error)
				store:dispatch(ErrorOccurred(error))
			end)
	end)
end

return retryAfterUpsell