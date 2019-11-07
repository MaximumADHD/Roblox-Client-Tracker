return function()
	local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
	local Root = script.Parent.Parent
	local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
	local MarketplaceService = game:GetService("MarketplaceService")
	local Rodux = require(LuaPackages.Rodux)

	local Reducer = require(script.Parent.Parent.Reducers.Reducer)
	local Thunk = require(script.Parent.Parent.Thunk)
	local PromptState = require(script.Parent.Parent.PromptState)
	local createSpy = require(script.Parent.Parent.Test.createSpy)

	local signalFinishedAndHidePrompt = require(script.Parent.signalFinishedAndHidePrompt)

	describe("should signal prompt finished when purchase was not made", function()
		it("should signal product purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.PromptPurchase,
				product = {
					id = 123,
					infoType = Enum.InfoType.Product
				},
			})

			local thunk = signalFinishedAndHidePrompt()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.Hidden)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("userId", "productId", "didPurchase")

			expect(values.productId).to.equal(123)
			expect(values.didPurchase).to.equal(false)

			connection:Disconnect()
		end)

		it("should signal game pass purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.CannotPurchase,
				product = {
					id = 456,
					infoType = Enum.InfoType.GamePass
				},
			})

			local thunk = signalFinishedAndHidePrompt()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptGamePassPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.Hidden)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("player", "gamePassId", "didPurchase")

			expect(values.gamePassId).to.equal(456)
			expect(values.didPurchase).to.equal(false)

			connection:Disconnect()
		end)

		it("should signal asset purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.CannotPurchase,
				product = {
					id = 789,
					infoType = Enum.InfoType.Asset
				},
			})

			local thunk = signalFinishedAndHidePrompt()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.Hidden)

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
				product = {
					id = 123,
					infoType = Enum.InfoType.Product
				},
			})

			local thunk = signalFinishedAndHidePrompt()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptProductPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.Hidden)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("userId", "productId", "didPurchase")

			expect(values.productId).to.equal(123)
			expect(values.didPurchase).to.equal(true)

			connection:Disconnect()
		end)

		it("should signal game pass purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.PurchaseComplete,
				product = {
					id = 456,
					infoType = Enum.InfoType.GamePass
				},
			})

			local thunk = signalFinishedAndHidePrompt()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptGamePassPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.Hidden)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("player", "gamePassId", "didPurchase")

			expect(values.gamePassId).to.equal(456)
			expect(values.didPurchase).to.equal(true)

			connection:Disconnect()
		end)

		it("should signal asset purchase finished", function()
			local store = Rodux.Store.new(Reducer, {
				promptState = PromptState.PurchaseComplete,
				product = {
					id = 789,
					infoType = Enum.InfoType.Asset
				},
			})

			local thunk = signalFinishedAndHidePrompt()

			local finishedSignalSpy = createSpy()
			local connection = MarketplaceService.PromptPurchaseFinished:Connect(finishedSignalSpy.value)

			Thunk.test(thunk, store)

			local state = store:getState()
			expect(state.promptState).to.equal(PromptState.Hidden)

			expect(finishedSignalSpy.callCount).to.equal(1)

			local values = finishedSignalSpy:captureValues("player", "assetId", "didPurchase")

			expect(values.assetId).to.equal(789)
			expect(values.didPurchase).to.equal(true)

			connection:Disconnect()
		end)
	end)
end