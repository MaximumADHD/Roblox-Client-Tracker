local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local Thunk = require(script.Parent.Parent.Thunk)
local Promise = require(script.Parent.Parent.Promise)

local UpsellFlow = require(script.Parent.Parent.UpsellFlow)
local PromptState = require(script.Parent.Parent.PromptState)

local SetPromptState = require(script.Parent.Parent.Actions.SetPromptState)

local Analytics = require(script.Parent.Parent.Services.Analytics)
local PlatformInterface = require(script.Parent.Parent.Services.PlatformInterface)

local getUpsellFlow = require(script.Parent.Parent.NativeUpsell.getUpsellFlow)
local retryAfterUpsell = require(script.Parent.retryAfterUpsell)

local requiredServices = {
	Analytics,
	PlatformInterface,
}

local function launchRobuxUpsell()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]
		local platformInterface = services[PlatformInterface]

		local upsellFlow = getUpsellFlow(UserInputService:GetPlatform())

		if upsellFlow == UpsellFlow.Web then
			platformInterface.startRobuxUpsellWeb()
			analytics.reportRobuxUpsellStarted()
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))

		elseif upsellFlow == UpsellFlow.Mobile then
			local nativeProductId = store:getState().nativeUpsell.robuxProductId

			platformInterface.promptNativePurchase(Players.LocalPlayer, nativeProductId)
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))

		elseif upsellFlow == UpsellFlow.Xbox then
			local nativeProductId = store:getState().nativeUpsell.robuxProductId
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))
			return Promise.new(function(resolve, reject)
				local platformPurchaseResult = platformInterface.beginPlatformStorePurchase(nativeProductId)

				Promise.resolve(platformPurchaseResult)
			end)
				:andThen(function(result)
					if result ~= 0 then
						store:dispatch(retryAfterUpsell)
					end
				end)
		else
			warn("Need more Robux: platform not supported for Robux purchase")
		end
	end)
end

return launchRobuxUpsell