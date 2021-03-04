return function()
	local Root = script.Parent.Parent
	local MarketplaceService = game:GetService("MarketplaceService")

	local LuaPackages = Root.Parent
	local Rodux = require(LuaPackages.Rodux)

	local RequestType = require(Root.Enums.RequestType)
	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local createSpy = require(Root.Test.createSpy)
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

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

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

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptGamePassPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

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

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

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

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

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

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptGamePassPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

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

			local thunk = completeRequest()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.None)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("player", "assetId", "didPurchase")

			expect(values.assetId).to.equal(789)
			expect(values.didPurchase).to.equal(true)

			connection:Disconnect()
		end)
	end)
end