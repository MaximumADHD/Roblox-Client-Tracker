return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local Reducer = require(script.Parent.Parent.Reducers.Reducer)

	local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

	local MockExternalSettings = require(script.Parent.Parent.Test.MockExternalSettings)

	local PromptState = require(script.Parent.Parent.PromptState)
	local Thunk = require(script.Parent.Parent.Thunk)

	local resolvePromptState = require(script.Parent.resolvePromptState)

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
		local thunk = resolvePromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, false, false)
		})

		local state = store:getState()

		expect(state.productInfo.name).to.be.ok()
		expect(state.accountInfo.balance).to.be.ok()
	end)

	it("should resolve state to CannotPurchase if prerequisites are failed", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		-- Set product to not for sale
		productInfo.IsForSale = false
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolvePromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, false, false)
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.CannotPurchase)
	end)

	it("should resolve state to PromptPurchase if account meets requirements", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolvePromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, false, false)
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.PromptPurchase)
	end)

	it("should resolve state to RobuxUpsell if account is short on Robux", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		-- Player will not have enough robux
		local accountInfo = {
			RobuxBalance = 0,
			MembershipType = 0,
		}
		local thunk = resolvePromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, false, false)
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.RobuxUpsell)
	end)

	it("should resolve state to BuildersClubUpsell if account has insufficient bc level", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		-- Player does not have the sufficient BC level
		productInfo.MinimumMembershipLevel = 3
		local accountInfo = {
			RobuxBalance = 0,
			MembershipType = 0,
		}
		local thunk = resolvePromptState(productInfo, accountInfo, false)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, false, false)
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.BuildersClubUpsell)
	end)
end