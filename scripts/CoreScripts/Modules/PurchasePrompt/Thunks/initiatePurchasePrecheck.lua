local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local SetButtonState = require(Root.Actions.SetButtonState)
local PurchaseWarning = require(Root.Enums.PurchaseWarning)
local ButtonState = require(Root.Enums.ButtonState)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local Network = require(Root.Services.Network)
local getPurchaseWarning = require(Root.Network.getPurchaseWarning)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Thunk = require(Root.Thunk)

local resolvePurchasePrecheck = require(script.Parent.resolvePurchasePrecheck)

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiatePurchasePrecheck(productId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local state = store:getState()
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		local isStudio = externalSettings.isStudio()

		if isStudio then
			return resolvePurchasePrecheck(PurchaseWarning.NoAction)
		end

		local upsellFlow = getUpsellFlow(UserInputService:GetPlatform())

		if upsellFlow == UpsellFlow.Mobile or upsellFlow == UpsellFlow.Xbox then
			local nativeProductId = state.nativeUpsell.robuxProductId

			store:dispatch(SetButtonState(ButtonState.Disabled))
			return getPurchaseWarning(network, nativeProductId)
				:andThen(function(results)
					store:dispatch(SetButtonState(ButtonState.Enabled))

					if results then
						if results.action == "U13PaymentModal" then
							return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.U13PaymentModal))
						elseif results.action == "U13MonthlyThreshold1Modal" then
							return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.U13MonthlyThreshold1Modal))
						-- Rest of UI is not setup yet, ignore this type of response.
						--elseif results.action == "RequireEmailVerification" then
						--	return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.RequireEmailVerification))
						elseif results.action == "U13MonthlyThreshold2Modal" then
							return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.U13MonthlyThreshold2Modal))
						end
					end

					store:dispatch(resolvePurchasePrecheck(PurchaseWarning.NoAction))
				end)
				:catch(function(errorReason)
					store:dispatch(SetButtonState(ButtonState.Enabled))
					store:dispatch(resolvePurchasePrecheck(PurchaseWarning.NoAction))
				end)
		else
			store:dispatch(resolvePurchasePrecheck(PurchaseWarning.NoAction))
		end
	end)
end

return initiatePurchasePrecheck
