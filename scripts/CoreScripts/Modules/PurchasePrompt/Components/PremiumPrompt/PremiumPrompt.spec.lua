return function()
	local Root = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact
	local Rodux = PurchasePromptDeps.Rodux

	local PromptState = require(Root.Enums.PromptState)
	local RequestType = require(Root.Enums.RequestType)
	local WindowState = require(Root.Enums.WindowState)
	local Reducer = require(Root.Reducers.Reducer)
	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local PremiumPrompt = require(script.Parent.PremiumPrompt)
	PremiumPrompt = PremiumPrompt.getUnconnected()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, {
			overrideStore = Rodux.Store.new(Reducer)
		}, {
			Roact.createElement(PremiumPrompt, {
				premiumProductInfo = {
					premiumFeatureTypeName = "Subscription",
					mobileProductId = "com.roblox.robloxmobile.RobloxPremium450",
					description = "Roblox Premium 450",
					price = 4.99,
					robuxAmount = 450,
					isSubscriptionOnly = false,
					currencySymbol = "$",
				},
				promptState = PromptState.PremiumUpsell,
				promptRequest = {
					requestType = RequestType.Premium
				},
				windowState = WindowState.Hidden,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
