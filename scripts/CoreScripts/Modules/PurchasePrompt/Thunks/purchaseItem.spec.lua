return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local RequestType = require(Root.Enums.RequestType)
	local PurchaseError = require(Root.Enums.PurchaseError)
	local PromptState = require(Root.Enums.PromptState)
	local Constants = require(Root.Misc.Constants)
	local Reducer = require(Root.Reducers.Reducer)
	local Network = require(Root.Services.Network)
	local Analytics = require(Root.Services.Analytics)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockNetwork = require(Root.Test.MockNetwork)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)

	local GetFFlagEnableAvatarCreationFeePurchase = require(Root.Flags.GetFFlagEnableAvatarCreationFeePurchase)

	local function getDefaultState()
		return {
			productInfo = {
				productId = 50,
			},
			accountInfo = {
				AgeBracket = 0,
			},
			promptRequest = {
				id = 50,
				requestType = RequestType.Product,
				infoType = Enum.InfoType.Product
			},
		}
	end

	local function getAvatarCreationState()
		return {
			promptRequest = {
				id = 50,
				requestType = RequestType.AvatarCreationFee,
				infoType = Enum.InfoType.Product
			},
		}
	end

	local purchaseItem = require(script.Parent.purchaseItem)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()

		Thunk.test(purchaseItem(), store, {
			[Network] = network,
			[Analytics] = analytics.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
		})

		local state = store:getState()

		expect(analytics.spies.signalProductPurchaseConfirmed).toHaveBeenCalledTimes(1)
		expect(analytics.spies.signalPurchaseSuccess).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.PurchaseInProgress)
	end)

	if (GetFFlagEnableAvatarCreationFeePurchase()) then
		it("should run without errors with Avatar Creation", function()
			local store = Rodux.Store.new(Reducer, getAvatarCreationState())

			local network = MockNetwork.new()
			local analytics = MockAnalytics.new()

			Thunk.test(purchaseItem(), store, {
				[Network] = network,
				[Analytics] = analytics.mockService,
				[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			})

			local state = store:getState()

			expect(state.promptRequest.requestType).toBe(RequestType.AvatarCreationFee)

			expect(analytics.spies.signalAvatarCreationPurchaseSubmit).toHaveBeenCalledTimes(1)
		end)
	end

	it("should resolve to an error state if a network error occurs", function()
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local network = MockNetwork.new(nil, "Network Failure")
		local analytics = MockAnalytics.new()

		Thunk.test(purchaseItem(), store, {
			[Network] = network,
			[Analytics] = analytics.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
		})

		local state = store:getState()

		expect(analytics.spies.signalPurchaseSuccess).never.toHaveBeenCalled()
		expect(state.promptState).toBe(PromptState.Error)
	end)

	local function checkDesktop2SV(platform)
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()

		Thunk.test(purchaseItem(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new({
				purchased = false,
				transactionStatus = 24, -- REMOVE WITH FFlagPPRefactorPerformPurchase
				reason = Constants.PurchaseFailureReason.TwoStepVerificationRequired,
			}),
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, platform)
		})

		local state = store:getState()

		expect(analytics.spies.signalTwoSVSettingsErrorShown).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.Error)
		expect(state.purchaseError).toBe(PurchaseError.TwoFactorNeededSettings)
	end

	local function checkDesktopGCS(platform)
		local oldValue = game:SetFastFlagForTesting("EnablePerformPurchaseGCSHandling", true);
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local gcsResponse = '{"rblx-challenge-response":"{\"errors\":[{\"code\":0,\"message\":\"Challenge is required to authorize the request\"}]}","rblx-challenge-id":"6c023637-1ab0-4731-9086-e2113d781e56","rblx-challenge-metadata":"eyJyZXF1ZXN0UGF0aCI6Ii92Mi9kZXZlbG9wZXItcHJvZHVjdHMve3Byb2R1Y3RJZH0vcHVyY2hhc2UiLCJyZXF1ZXN0TWV0aG9kIjoiUE9TVCJ9","rblx-challenge-type":"forcetwostepverification"}'
		Thunk.test(purchaseItem(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(gcsResponse),
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, platform)
		})

		local state = store:getState()

		expect(state.promptState).toBe(PromptState.Error)
		expect(state.purchaseError).toBe(gcsResponse)
		game:SetFastFlagForTesting("EnablePerformPurchaseGCSHandling", oldValue);
	end

	it("should handle reason TwoStepVerificationRequired and return correct PurchaseError on Windows", function()
		checkDesktop2SV(Enum.Platform.Windows)
	end)

	it("should handle reason TwoStepVerificationRequired and return correct PurchaseError on OSX", function()
		checkDesktop2SV(Enum.Platform.OSX)
	end)

	it("should handle reason GCS and return correct PurchaseError on Windows", function()
		checkDesktopGCS(Enum.Platform.Windows)
	end)

	it("should handle reason GCS and return correct PurchaseError on OSX", function()
		checkDesktopGCS(Enum.Platform.OSX)
	end)

	local function checkMobile2SV(platform)
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()

		Thunk.test(purchaseItem(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new({
				purchased = false,
				transactionStatus = 24, -- REMOVE WITH FFlagPPRefactorPerformPurchase
				reason = Constants.PurchaseFailureReason.TwoStepVerificationRequired,
			}),
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, platform)
		})

		local state = store:getState()

		expect(analytics.spies.signalTwoSVSettingsErrorShown).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.Error)
		expect(state.purchaseError).toBe(PurchaseError.TwoFactorNeeded)
	end

	it("should handle reason TwoStepVerificationRequired and return correct PurchaseError on IOS", function()
		checkMobile2SV(Enum.Platform.IOS)
	end)

	it("should handle reason TwoStepVerificationRequired and return correct PurchaseError on Android", function()
		checkMobile2SV(Enum.Platform.Android)
	end)

	it("should handle reason TwoStepVerificationRequired and return correct PurchaseError on UWP", function()
		checkMobile2SV(Enum.Platform.UWP)
	end)

	it("should handle reason TwoStepVerificationRequired and return correct PurchaseError on XBoxOne", function()
		checkMobile2SV(Enum.Platform.XBoxOne)
	end)
end
