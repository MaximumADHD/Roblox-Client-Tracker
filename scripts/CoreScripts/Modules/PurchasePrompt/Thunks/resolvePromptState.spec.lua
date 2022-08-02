return function()
	local Root = script.Parent.Parent
	local RunService = game:GetService("RunService")
	
	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local PromptState = require(Root.Enums.PromptState)
	local PurchaseError = require(Root.Enums.PurchaseError)
	local Reducer = require(Root.Reducers.Reducer)
	local Analytics = require(Root.Services.Analytics)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)

	local resolvePromptState = require(script.Parent.resolvePromptState)
	local RequestType = require(Root.Enums.RequestType)

	local FFlagPPAccountInfoMigration = require(Root.Flags.FFlagPPAccountInfoMigration)

	local function getTestProductInfo()
		return {
			IsForSale = true,
			Name = "Test Product",
			PriceInRobux = 10,
			MinimumMembershipLevel = 0,
			Creator = {
				CreatorType = "User",
				CreatorTargetId = 1,
			},
		}
	end

	local function getTestAccountInfo()
		return FFlagPPAccountInfoMigration and {
			isPremium = false,
		} or {
			RobuxBalance = 10,
			MembershipType = 0,
		}
	end

	local function getTestBalance()
		return {
			robux = 10
		}
	end

	local function testThunk(mockAnalytics, mockExternalSettings, store,
			productInfo, accountInfo, balanceInfo, alreadyOwned, isRobloxPurchase)
		return Thunk.test(resolvePromptState(productInfo, accountInfo, balanceInfo, alreadyOwned, isRobloxPurchase), store, {
			[Analytics] = mockAnalytics or MockAnalytics.new().mockService,
			[ExternalSettings] = mockExternalSettings or MockExternalSettings.new(false, false, {})
		})
	end

	it("should populate store with provided info", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()
		local productInfo = getTestProductInfo()
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		testThunk(mockAnalytics.mockService, nil, store, productInfo, accountInfo, balanceInfo, false, false)

		local state = store:getState()

		expect(state.productInfo.name).to.be.ok()
		expect(state.accountInfo.balance).to.be.ok()
		expect(mockAnalytics.spies.signalProductPurchaseShown.callCount).to.equal(1)
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
			HideThirdPartyPurchaseFailure = true,
		}), store, productInfo, accountInfo, balanceInfo, false, false)

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
		testThunk(nil, nil, store, productInfo, accountInfo, balanceInfo, false, false)

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.Error)
	end)

	it("should resolve state to PromptPurchase if account meets requirements", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = getTestAccountInfo()
		local balanceInfo = getTestBalance()
		testThunk(nil, nil, store, productInfo, accountInfo, balanceInfo, false, false)

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
		}), store, productInfo, accountInfo, balanceInfo, false, false)

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
		if FFlagPPAccountInfoMigration then
			balanceInfo.robux = 0
		else
			accountInfo.RobuxBalance = 0
		end
		testThunk(mockAnalytics, nil, store, productInfo, accountInfo, balanceInfo, false, false):andThen(function()
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
		if FFlagPPAccountInfoMigration then
			balanceInfo.robux = 0
		else
			accountInfo.RobuxBalance = 0
		end
		testThunk(mockAnalytics, MockExternalSettings.new(false, false, {
			DisableRobuxUpsell = true,
		}), store, productInfo, accountInfo, balanceInfo, false, false)

		local state = store:getState()
		expect(state.promptState).to.equal(PromptState.Error)
		expect(state.purchaseError).to.equal(PurchaseError.NotEnoughRobuxNoUpsell)
	end)
end
