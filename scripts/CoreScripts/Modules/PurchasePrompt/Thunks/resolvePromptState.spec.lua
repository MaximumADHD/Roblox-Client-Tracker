--!nonstrict
return function()
	local Root = script.Parent.Parent
	local RunService = game:GetService("RunService")

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local PromptState = require(Root.Enums.PromptState)
	local PurchaseError = require(Root.Enums.PurchaseError)
	local Reducer = require(Root.Reducers.Reducer)
	local ABTest = require(Root.Services.ABTest)
	local MockABTest = require(Root.Test.MockABTest)
	local Analytics = require(Root.Services.Analytics)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Network = require(Root.Services.Network)
	local MockNetwork = require(Root.Test.MockNetwork)
	local Thunk = require(Root.Thunk)

	local resolvePromptState = require(script.Parent.resolvePromptState)
	local RequestType = require(Root.Enums.RequestType)
	local GetFFlagTranslateDevProducts = require(Root.Flags.GetFFlagTranslateDevProducts)
	local testProductName = "Test Product"
	local testProductDisplayName = "Translated Test Product"

	local function getTestProductInfo()
		return {
			IsForSale = true,
			Name = testProductName,
			DisplayName = testProductDisplayName,
			PriceInRobux = 10,
			MinimumMembershipLevel = 0,
			Creator = {
				CreatorType = "User",
				CreatorTargetId = 1,
			},
		}
	end

	local function getTestAccountInfo()
		return {
			isPremium = false,
		}
	end

	local function getTestBalance()
		return {
			robux = 10
		}
	end

	local function testThunk(mockAnalytics, mockExternalSettings, store,
			productInfo, accountInfo, balanceInfo, alreadyOwned, isRobloxPurchase, expectedPrice)
		return Thunk.test(resolvePromptState(productInfo, accountInfo, balanceInfo, alreadyOwned, isRobloxPurchase, expectedPrice), store, {
			[ABTest] = MockABTest.new(),
			[Analytics] = mockAnalytics or MockAnalytics.new().mockService,
			[ExternalSettings] = mockExternalSettings or MockExternalSettings.new(false, false, {}),
			[Network] = MockNetwork.new(),
		})
	end

	it("should populate store with provided info", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()
		local productInfo = getTestProductInfo()
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		testThunk(mockAnalytics.mockService, nil, store, productInfo, accountInfo, balanceInfo, false, false, nil)

		local state = store:getState()

		expect(state.productInfo.name).to.be.ok()
		expect(state.productInfo.name).to.equal(GetFFlagTranslateDevProducts() and testProductDisplayName or testProductName)
		expect(state.accountInfo.balance).to.be.ok()
		expect(mockAnalytics.spies.signalProductPurchaseShown.callCount).to.equal(1)
	end)

	it("should fallback to name if display name is missing", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()
		local productInfo = getTestProductInfo()
		productInfo.DisplayName = nil

		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		testThunk(mockAnalytics.mockService, nil, store, productInfo, accountInfo, balanceInfo, false, false, nil)

		local state = store:getState()

		expect(state.productInfo.name).to.be.ok()
		expect(state.productInfo.name).to.equal(testProductName)
	end)

	it("should resolve state to None if hiding 3rd party purchase failure", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		-- Make creator a 3rd party
		productInfo.AssetId = 0
		productInfo.Creator.CreatorTargetId = game.CreatorId + 2
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		testThunk(nil, MockExternalSettings.new(false, false, {
			LuaUseThirdPartyPermissions = true,
			PermissionsServiceIsThirdPartyPurchaseAllowed = false,
		}), store, productInfo, accountInfo, balanceInfo, false, false, nil)

		local state = store:getState()

		expect(state.promptRequest.requestType).to.equal(RequestType.None)
		expect(state.promptState).to.equal(PromptState.None)
	end)

	it("should resolve state to Error if prerequisites are failed", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		-- Set product to not for sale
		productInfo.IsForSale = false
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		testThunk(nil, nil, store, productInfo, accountInfo, balanceInfo, false, false, nil)

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.Error)
	end)

	it("should resolve state to PromptPurchase if account meets requirements", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		testThunk(nil, nil, store, productInfo, accountInfo, balanceInfo, false, false, nil)

		local state = store:getState()
		expect(state.promptState).to.equal(PromptState.PromptPurchase)
	end)

	it("should resolve state to PromptPurchase if is roblox purchase but third party sales are disabled", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		testThunk(nil, MockExternalSettings.new(false, false, {
			LuaUseThirdPartyPermissions = true,
			PermissionsServiceIsThirdPartyPurchaseAllowed = false,
			BypassThirdPartySettingForRobloxPurchase = true,
		}), store, productInfo, accountInfo, balanceInfo, false, false, nil)

		local state = store:getState()
		expect(state.promptState).to.equal(PromptState.PromptPurchase)
	end)

	it("should resolve state to RobuxUpsell if account is short on Robux", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()
		local productInfo = getTestProductInfo()
		-- Player will not have enough robux
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		balanceInfo.robux = 0
		testThunk(mockAnalytics.mockService, nil, store, productInfo, accountInfo, balanceInfo, false, false, nil):andThen(function()
			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.RobuxUpsell)
			expect(mockAnalytics.spies.signalProductPurchaseUpsellShown.callCount).to.equal(1)
		end)
	end)

	it("should resolve state to Error if account is short on Robux and FFlagDisableRobuxUpsell = true", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()
		local productInfo = getTestProductInfo()
		-- Player will not have enough robux
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		balanceInfo.robux = 0
		testThunk(mockAnalytics, MockExternalSettings.new(false, false, {
			DisableRobuxUpsell = true,
		}), store, productInfo, accountInfo, balanceInfo, false, false, nil)

		local state = store:getState()
		expect(state.promptState).to.equal(PromptState.Error)
		expect(state.purchaseError).to.equal(PurchaseError.NotEnoughRobuxNoUpsell)
	end)
end
