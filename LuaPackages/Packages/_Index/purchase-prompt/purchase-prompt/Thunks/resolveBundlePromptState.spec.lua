return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local Reducer = require(script.Parent.Parent.Reducers.Reducer)

	local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

	local MockExternalSettings = require(script.Parent.Parent.Test.MockExternalSettings)

	local PromptState = require(script.Parent.Parent.PromptState)
	local Thunk = require(script.Parent.Parent.Thunk)

	local resolveBundlePromptState = require(script.Parent.resolveBundlePromptState)

	local function getTestPurchasableDetails()
		return {
			purchasable = true,
			reason = "mock-reason",
			price = 100,
		}
	end

	local function getTestBundleDetails()
		return {
			id = 1,
			name = "mock-name",
			description = "mock-description",
			items = {
				[1] = {
					id = 1,
					name = "outfit-name",
					type = "UserOutfit",
				},
			},
			creator = {
				id = 1,
				name = "ROBLOX",
				type = "User",
			},
			product = {
				id = 1,
				isForSale = true,
				priceInRobux = 100,
			}
		}
	end

	it("should populate store with provided info", function()
		local store = Rodux.Store.new(Reducer, {})

		local purchasableDetails = getTestPurchasableDetails()
		local bundleDetails = getTestBundleDetails()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolveBundlePromptState(purchasableDetails, bundleDetails, accountInfo)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		expect(state.productInfo.name).to.be.ok()
		expect(state.accountInfo.balance).to.be.ok()
	end)

	it("should resolve state to CannotPurchase if prerequisites are failed", function()
		local store = Rodux.Store.new(Reducer, {})

		local purchasableDetails = getTestPurchasableDetails()
		local bundleDetails = getTestBundleDetails()		-- Set product to not for sale
		purchasableDetails.purchasable = false
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolveBundlePromptState(purchasableDetails, bundleDetails, accountInfo)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.CannotPurchase)
	end)

	it("should resolve state to PromptPurchase if account meets requirements", function()
		local store = Rodux.Store.new(Reducer, {})

		local purchasableDetails = getTestPurchasableDetails()
		local bundleDetails = getTestBundleDetails()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolveBundlePromptState(purchasableDetails, bundleDetails, accountInfo)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.PromptPurchase)
	end)

	it("should resolve state to RobuxUpsell if account is short on Robux", function()
		local store = Rodux.Store.new(Reducer, {})

		local purchasableDetails = getTestPurchasableDetails()
		local bundleDetails = getTestBundleDetails()

		purchasableDetails.purchasable = false
		purchasableDetails.reason = "InsufficientFunds"
		-- Player will not have enough robux
		local accountInfo = {
			RobuxBalance = 0,
			MembershipType = 0,
		}
		local thunk = resolveBundlePromptState(purchasableDetails, bundleDetails, accountInfo)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {})
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.RobuxUpsell)
	end)
end