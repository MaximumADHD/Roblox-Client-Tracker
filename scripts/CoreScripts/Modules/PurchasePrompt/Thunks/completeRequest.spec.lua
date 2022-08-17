--!nonstrict
return function()
	local Root = script.Parent.Parent
	local MarketplaceService = game:GetService("MarketplaceService")

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local RequestType = require(Root.Enums.RequestType)
	local PromptState = require(Root.Enums.PromptState)
	local Analytics = require(Root.Services.Analytics)
	local Reducer = require(Root.Reducers.Reducer)
	local createSpy = require(Root.Test.createSpy)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local Thunk = require(Root.Thunk)

	local completeRequest = require(script.Parent.completeRequest)

	describe("should signal prompt finished when purchase was not made", function()
		it("should signal product purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.PromptPurchase,
				promptRequest = {
					id = 123,
					requestType = RequestType.Product,
					infoType = Enum.InfoType.Product
				},
			})

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.None)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("userId", "productId", "didPurchase")

			expect(values.productId).to.equal(123)
			expect(values.didPurchase).to.equal(false)

			connection:Disconnect()
		end)

		it("should signal game pass purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.Error,
				promptRequest = {
					id = 456,
					requestType = RequestType.GamePass,
					infoType = Enum.InfoType.GamePass
				},
			})

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptGamePassPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.None)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("player", "gamePassId", "didPurchase")

			expect(values.gamePassId).to.equal(456)
			expect(values.didPurchase).to.equal(false)

			connection:Disconnect()
		end)

		it("should signal asset purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.Error,
				promptRequest = {
					id = 789,
					requestType = RequestType.Asset,
					infoType = Enum.InfoType.Asset
				},
			})

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.None)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("player", "assetId", "didPurchase")

			expect(values.assetId).to.equal(789)
			expect(values.didPurchase).to.equal(false)

			connection:Disconnect()
		end)
	end)

	describe("should signal prompt finished when purchase was completed", function()
		it("should signal product purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.PurchaseComplete,
				promptRequest = {
					id = 123,
					requestType = RequestType.Product,
					infoType = Enum.InfoType.Product
				},
				hasCompletedPurchase = true,
			})

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.None)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("userId", "productId", "didPurchase")

			expect(values.productId).to.equal(123)
			expect(values.didPurchase).to.equal(true)

			connection:Disconnect()
		end)

		it("should signal game pass purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.PurchaseComplete,
				promptRequest = {
					id = 456,
					requestType = RequestType.GamePass,
					infoType = Enum.InfoType.GamePass
				},
				hasCompletedPurchase = true,
			})

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptGamePassPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.None)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("player", "gamePassId", "didPurchase")

			expect(values.gamePassId).to.equal(456)
			expect(values.didPurchase).to.equal(true)

			connection:Disconnect()
		end)

		it("should signal asset purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.PurchaseComplete,
				promptRequest = {
					id = 789,
					requestType = RequestType.Asset,
					infoType = Enum.InfoType.Asset
				},
				hasCompletedPurchase = true,
			})

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.None)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("player", "assetId", "didPurchase")

			expect(values.assetId).to.equal(789)
			expect(values.didPurchase).to.equal(true)

			connection:Disconnect()
		end)
	end)

	describe("should signal ScaryModalCanceled when canceling the prompt", function()
		local function checkScaryModalCanceled(promptState)
			local store = Rodux.Store.new(Reducer, {
				promptState = promptState,
				promptRequest = {
					id = 123,
					requestType = RequestType.Product,
					infoType = Enum.InfoType.Product
				},
				hasCompletedPurchase = true,
			})

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})

			expect(analytics.spies.signalScaryModalCanceled.callCount).to.equal(1)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("userId", "productId", "didPurchase")
			expect(values.productId).to.equal(123)
			expect(values.didPurchase).to.equal(true)

			connection:Disconnect()
		end

		it("should signal for U13PaymentModal", function()
			checkScaryModalCanceled(PromptState.U13PaymentModal)
		end)

		it("should signal for U13MonthlyThreshold1Modal", function()
			checkScaryModalCanceled(PromptState.U13MonthlyThreshold1Modal)
		end)

		it("should signal for U13MonthlyThreshold2Modal", function()
			checkScaryModalCanceled(PromptState.U13MonthlyThreshold2Modal)
		end)
	end)
end
