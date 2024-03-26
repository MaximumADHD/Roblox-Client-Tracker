--[[
	Begin the purchase flow for creating an avatar
	within an experience via the
	AvatarCreationService:PromptCreateAvatarAsync API
]]

local Root = script.Parent.Parent
local RequestAvatarCreationFeePurchase = require(Root.Actions.RequestAvatarCreationFeePurchase)
local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local getBalanceInfo = require(Root.Network.getBalanceInfo)
local getAccountInfo = require(Root.Network.getAccountInfo)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)

local resolvePromptState = require(script.Parent.resolvePromptState)

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiateAvatarCreationFeePurchase(name, guid, serializedModel)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		store:dispatch(RequestAvatarCreationFeePurchase(serializedModel))

		return Promise.all({
			accountInfo = getAccountInfo(network, externalSettings),
			balanceInfo = getBalanceInfo(network, externalSettings),
		})
		:andThen(function(results)
			local priceInRobux = 0 -- TODO: AVBURST-13509 Get PriceInRobux from relevant token source
			-- Once we've finished all of our async data fetching, we'll
			-- resolve the state of the prompt
			local productInfo = {
				PriceInRobux = priceInRobux,
				Name = name,
				ProductId = guid
			}
			store:dispatch(resolvePromptState(
				productInfo,
				results.accountInfo,
				results.balanceInfo,
				false, --[[alreadyOwned]]
				true, --[[isRobloxPurchase]]
				priceInRobux --[[expectedPrice]]
			))
		end)
		:catch(function(errorReason)
			store:dispatch(ErrorOccurred(errorReason))
		end)
	end)
end

return initiateAvatarCreationFeePurchase