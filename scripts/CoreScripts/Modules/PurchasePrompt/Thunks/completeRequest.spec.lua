--!nonstrict
return function()
	local Root = script.Parent.Parent
	local MarketplaceService = game:GetService("MarketplaceService")

	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local RequestType = require(Root.Enums.RequestType)
	local PromptState = require(Root.Enums.PromptState)
	local Analytics = require(Root.Services.Analytics)
	local Reducer = require(Root.Reducers.Reducer)
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

			local values = {}
			local mock, mockFn = jest.fn(function(...)
				values = {...}
			end)

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(mockFn)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})
			waitForEvents()

			expect(store:getState().promptState).toBe(PromptState.None)

			expect(mock).toHaveBeenCalledTimes(1)
			expect(values).toMatchObject({
				[2] = 123,
				[3] = false,
			})

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

			local values = {}
			local mock, mockFn = jest.fn(function(...)
				values = {...}
			end)

			local analytics = MockAnalytics.new()

			local thunk = completeRequest()

			local connection = MarketplaceService.PromptGamePassPurchaseFinished:Connect(mockFn)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})
			waitForEvents()

			expect(store:getState().promptState).toBe(PromptState.None)

			expect(mock).toHaveBeenCalledTimes(1)
			expect(values).toMatchObject({
				[2] = 456,
				[3] = false,
			})

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

			local values = {}
			local mock, mockFn = jest.fn(function(...)
				values = {...}
			end)

			local connection = MarketplaceService.PromptPurchaseFinished:Connect(mockFn)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})
			waitForEvents()

			expect(store:getState().promptState).toBe(PromptState.None)

			expect(mock).toHaveBeenCalledTimes(1)

			expect(values).toMatchObject({
				[2] = 789,
				[3] = false,
			})

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

			local values = {}
			local mock, mockFn = jest.fn(function(...)
				values = {...}
			end)
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(mockFn)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})
			waitForEvents()

			expect(store:getState().promptState).toBe(PromptState.None)

			expect(mock).toHaveBeenCalledTimes(1)
			expect(values).toMatchObject({
				[2] = 123,
				[3] = true,
			})

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

			local values = {}
			local mock, mockFn = jest.fn(function(...)
				values = {...}
			end)

			local connection = MarketplaceService.PromptGamePassPurchaseFinished:Connect(mockFn)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})
			waitForEvents()

			expect(store:getState().promptState).toBe(PromptState.None)

			expect(mock).toHaveBeenCalledTimes(1)
			expect(values).toMatchObject({
				[2] = 456,
				[3] = true,
			})

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

			local values = {}
			local mock, mockFn = jest.fn(function(...)
				values = {...}
			end)
			local connection = MarketplaceService.PromptPurchaseFinished:Connect(mockFn)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})
			waitForEvents()

			expect(store:getState().promptState).toBe(PromptState.None)

			expect(mock).toHaveBeenCalledTimes(1)
			expect(values).toMatchObject({
				[2] = 789,
				[3] = true,
			})

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

			local values = {}
			local mock, mockFn = jest.fn(function(...)
				values = {...}
			end)
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(mockFn)

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
			})
			waitForEvents()

			expect(analytics.spies.signalScaryModalCanceled).toHaveBeenCalledTimes(1)

			expect(mock).toHaveBeenCalledTimes(1)
			expect(values).toMatchObject({
				[2] = 123,
				[3] = true,
			})

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

		it("should signal for ParentalConsentWarningPaymentModal13To17", function()
			checkScaryModalCanceled(PromptState.ParentalConsentWarningPaymentModal13To17)
		end)
	end)
end
