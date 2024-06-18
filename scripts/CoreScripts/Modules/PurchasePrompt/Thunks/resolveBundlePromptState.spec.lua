return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local Analytics = require(Root.Services.Analytics)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Network = require(Root.Services.Network)
	local MockNetwork = require(Root.Test.MockNetwork)
	local Thunk = require(Root.Thunk)

	local resolveBundlePromptState = require(script.Parent.resolveBundlePromptState)

	local GetFFlagDisableRobuxUpsell = require(Root.Flags.GetFFlagDisableRobuxUpsell)

	local GetFFlagUseCatalogItemDetailsToResolveBundlePurchase =
		require(Root.Flags.GetFFlagUseCatalogItemDetailsToResolveBundlePurchase)

	local FFlagEnableBundlePurchaseChecks = require(Root.Parent.Flags.FFlagEnableBundlePurchaseChecks)

	local itSkipOnEnableBundlePurchaseChecksDisabled = if not FFlagEnableBundlePurchaseChecks then itSKIP else it

	local EXPECTED_PRICE = 100

	local function getTestAccountInfoDetails()
		return {
			isPremium = false,
		}
	end

	local function getTestBalanceDetails()
		return {
			robux = if FFlagEnableBundlePurchaseChecks then 100 else 10,
		}
	end

	local function getTestPurchasableDetails()
		return {
			purchasable = true,
			reason = "mock-reason",
			price = EXPECTED_PRICE,
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
			},
		}
	end

	local function getTestCatalogItemDetails()
		return {
			isPurchasable = true,
			owned = false,
		}
	end

	it("should populate store with provided info", function()
		local store = Rodux.Store.new(Reducer, {})

		local purchasableDetails = if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase()
			then getTestCatalogItemDetails()
			else getTestPurchasableDetails()
		local bundleDetails = getTestBundleDetails()
		local accountInfo = getTestAccountInfoDetails()
		local balanceInfo = getTestBalanceDetails()

		local thunk =
			resolveBundlePromptState(purchasableDetails, bundleDetails, accountInfo, balanceInfo, EXPECTED_PRICE)

		Thunk.test(thunk, store, {
			[Analytics] = MockAnalytics.new().mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.productInfo.name).never.toBeNil()
		expect(state.accountInfo.balance).never.toBeNil()
	end)

	it("should resolve state to PromptPurchase if account meets requirements", function()
		local store = Rodux.Store.new(Reducer, {})

		local purchasableDetails = if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase()
			then getTestCatalogItemDetails()
			else getTestPurchasableDetails()
		local bundleDetails = getTestBundleDetails()
		local accountInfo = getTestAccountInfoDetails()
		local balanceInfo = getTestBalanceDetails()
		local thunk =
			resolveBundlePromptState(purchasableDetails, bundleDetails, accountInfo, balanceInfo, EXPECTED_PRICE)

		Thunk.test(thunk, store, {
			[Analytics] = MockAnalytics.new().mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.promptState).toBe(PromptState.PromptPurchase)
	end)

	itSkipOnEnableBundlePurchaseChecksDisabled(
		"should resolve state to RobuxUpsell if account is short on Robux",
		function()
			local store = Rodux.Store.new(Reducer, {})

			local purchasableDetails = getTestPurchasableDetails()
			local catalogItemDetails = getTestCatalogItemDetails()
			local bundleDetails = getTestBundleDetails()

			purchasableDetails.purchasable = false
			purchasableDetails.reason = "InsufficientFunds"
			-- Player will not have enough robux
			local accountInfo = {
				RobuxBalance = 0,
				MembershipType = 0,
			}

			local balanceInfo = getTestBalanceDetails()
			balanceInfo.robux = 0

			local thunk
			if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase() then
				thunk = resolveBundlePromptState(
					catalogItemDetails,
					bundleDetails,
					accountInfo,
					balanceInfo,
					EXPECTED_PRICE
				)
			else
				thunk = resolveBundlePromptState(
					purchasableDetails,
					bundleDetails,
					accountInfo,
					balanceInfo,
					EXPECTED_PRICE
				)
			end

			Thunk.test(thunk, store, {
				[Analytics] = MockAnalytics.new().mockService,
				[ExternalSettings] = MockExternalSettings.new(false, false, {}),
				[Network] = MockNetwork.new(),
			})

			local state = store:getState()

			if not GetFFlagDisableRobuxUpsell() then
				expect(state.promptState).toBe(PromptState.RobuxUpsell)
			end
		end
	)
end
