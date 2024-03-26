local Root = script.Parent.Parent
local MockStore = require(Root.Test.MockStore)
local GetFFlagEnableAvatarCreationFeePurchase = require(Root.Flags.GetFFlagEnableAvatarCreationFeePurchase)

return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact

	local PurchasePromptApp = require(script.Parent.PurchasePromptApp)

	it("should create and destroy without errors", function()
		-- Remove this once MarketplaceService signature is updated with PromptPurchaseRequestedV2 event
        game:SetFastFlagForTesting("EnablePromptPurchaseRequestedV2", false)

        local element
        if GetFFlagEnableAvatarCreationFeePurchase() then
			element = Roact.createElement(PurchasePromptApp, {
				store = MockStore.getMockStore()
			})
		else
			element = Roact.createElement(PurchasePromptApp)
		end

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
