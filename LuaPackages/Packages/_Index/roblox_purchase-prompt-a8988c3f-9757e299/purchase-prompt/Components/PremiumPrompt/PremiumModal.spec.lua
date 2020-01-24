return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local RequestType = require(Root.Enums.RequestType)
	local WindowState = require(Root.Enums.WindowState)
	local Reducer = require(Root.Reducers.Reducer)
	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local PremiumModal = require(script.Parent.PremiumModal)
	PremiumModal = PremiumModal.getUnconnected()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, {
			overrideStore = Rodux.Store.new(Reducer)
		}, {
			Roact.createElement(PremiumModal, {
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
				screenSize = Vector2.new(100, 100)
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end