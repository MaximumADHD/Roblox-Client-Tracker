return function()
	local Root = script.Parent.Parent

	local LuaPackages = Root.Parent
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)
	local GetFFlagDeveloperSubscriptionsEnabled = require(Root.Flags.GetFFlagDeveloperSubscriptionsEnabled)

	local resolveSubscriptionPromptState = require(script.Parent.resolveSubscriptionPromptState)

	if not GetFFlagDeveloperSubscriptionsEnabled() then
		return
	end

	local function getTestProductInfo()
		return {
			IsForSale = true,
			Name = "Test Product",
			PriceInRobux = 10,
			MinimumMembershipLevel = 0,
		}
	end

	it("should populate store with provided info", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolveSubscriptionPromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		expect(state.productInfo.name).to.be.ok()
		expect(state.accountInfo.balance).to.be.ok()
	end)

	it("should resolve state to Error if prerequisites are failed", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		-- Set product to not for sale
		productInfo.IsForSale = false
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolveSubscriptionPromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.Error)
	end)

	it("should resolve state to PromptPurchase if account meets requirements", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolveSubscriptionPromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		if not settings():GetFFlag("ChinaLicensingApp") then
			expect(state.promptState).to.equal(PromptState.PromptPurchase)
		end
	end)

	it("should resolve state to RobuxUpsell if account is short on Robux", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		-- Player will not have enough robux
		local accountInfo = {
			RobuxBalance = 0,
			MembershipType = 0,
		}
		local thunk = resolveSubscriptionPromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		if not settings():GetFFlag("ChinaLicensingApp") then
			expect(state.promptState).to.equal(PromptState.RobuxUpsell)
		end
	end)
end