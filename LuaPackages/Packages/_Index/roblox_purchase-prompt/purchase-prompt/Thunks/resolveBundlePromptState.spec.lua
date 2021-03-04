return function()
	local Root = script.Parent.Parent

	local LuaPackages = Root.Parent
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)

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

	it("should resolve state to Error if prerequisites are failed", function()
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

		expect(state.promptState).to.equal(PromptState.Error)
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