return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local Input = require(script.Parent.Input)
	local createSpy = require(script.Parent.Test.createSpy)
	local MockEngine = require(script.Parent.Test.MockEngine)

	describe("onBegin and onEnd", function()
		it("should run respond to relevant events when onBegin is connected", function()
			local mockEngine, engineInterface = MockEngine.new()

			local onBeginSpy = createSpy()
			local onBegin = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonA, onBeginSpy.value)

			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.Begin,
			})

			expect(onBeginSpy.callCount).to.equal(0)

			local disconnector = Input.connectToEvent(onBegin, engineInterface)

			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.Begin,
			})

			expect(onBeginSpy.callCount).to.equal(1)
			local captured = onBeginSpy:captureValues("inputObject")

			expect(captured.inputObject.KeyCode).to.equal(Enum.KeyCode.ButtonA)
			expect(captured.inputObject.UserInputState).to.equal(Enum.UserInputState.Begin)

			-- When state is `End`, the callback shouldn't be called
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.End,
			})
			expect(onBeginSpy.callCount).to.equal(1)

			-- After disconnecting, the callback shouldn't be called
			disconnector()
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.Begin,
			})
			expect(onBeginSpy.callCount).to.equal(1)
		end)

		it("should run respond to relevant events when onEnd is connected", function()
			local mockEngine, engineInterface = MockEngine.new()

			local onEndSpy = createSpy()
			local onEnd = Input.PublicInterface.onEnd(Enum.KeyCode.ButtonA, onEndSpy.value)

			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.End,
			})

			expect(onEndSpy.callCount).to.equal(0)

			local disconnector = Input.connectToEvent(onEnd, engineInterface)

			-- When state is `Begin`, the callback shouldn't be called
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.Begin,
			})
			expect(onEndSpy.callCount).to.equal(0)

			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.End,
			})

			expect(onEndSpy.callCount).to.equal(1)
			local captured = onEndSpy:captureValues("inputObject")

			expect(captured.inputObject.KeyCode).to.equal(Enum.KeyCode.ButtonA)
			expect(captured.inputObject.UserInputState).to.equal(Enum.UserInputState.End)

			-- After disconnecting, the callback shouldn't be called
			disconnector()
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.End,
			})
			expect(onEndSpy.callCount).to.equal(1)
		end)

		it("should ignore events with unrelated KeyCodes", function()
			local mockEngine, engineInterface = MockEngine.new()

			local onBeginSpy = createSpy()
			local onBegin = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonA, onBeginSpy.value)

			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.End,
			})

			expect(onBeginSpy.callCount).to.equal(0)

			local disconnector = Input.connectToEvent(onBegin, engineInterface)

			-- When the KeyCode does not match, the callback won't be fired
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonB,
				UserInputState = Enum.UserInputState.Begin,
			})
			expect(onBeginSpy.callCount).to.equal(0)

			disconnector()
		end)

		it("should keep a separate notion of gamepad state for each 'engine interface', for testing purposes", function()
			local mockEngine1, engineInterface1 = MockEngine.new()
			local mockEngine2, engineInterface2 = MockEngine.new()

			local onStepSpy1 = createSpy()
			local onStep1 = Input.PublicInterface.onStep(Enum.KeyCode.Thumbstick1, onStepSpy1.value)
			local disconnector1 = Input.connectToEvent(onStep1, engineInterface1)

			local onStepSpy2 = createSpy()
			local onStep2 = Input.PublicInterface.onStep(Enum.KeyCode.Thumbstick1, onStepSpy2.value)
			local disconnector2 = Input.connectToEvent(onStep2, engineInterface2)

			mockEngine1:simulateInput({
				KeyCode = Enum.KeyCode.Thumbstick1,
				UserInputState = Enum.UserInputState.Begin,
				Delta = Vector3.new(1, 1, 0),
			})
			mockEngine1:renderStep(0.03)
			
			expect(onStepSpy1.callCount).to.equal(1)
			expect(onStepSpy2.callCount).to.equal(0)

			local capturedValues1 = onStepSpy1:captureValues("inputObject", "_")
			local thumbstickValue1 = capturedValues1.inputObject
			expect(thumbstickValue1.Delta).to.equal(Vector3.new(1, 1, 0))

			mockEngine2:simulateInput({
				KeyCode = Enum.KeyCode.Thumbstick1,
				UserInputState = Enum.UserInputState.Begin,
				Delta = Vector3.new(-1, -1, 0),
			})
			mockEngine2:renderStep(0.03)

			expect(onStepSpy1.callCount).to.equal(1)
			expect(onStepSpy2.callCount).to.equal(1)

			local capturedValues2 = onStepSpy2:captureValues("inputObject", "_")
			local thumbstickValue2 = capturedValues2.inputObject

			-- Verify that the first one didn't change
			expect(thumbstickValue1.Delta).to.equal(Vector3.new(1, 1, 0))
			expect(thumbstickValue2.Delta).to.equal(Vector3.new(-1, -1, 0))

			disconnector1()
			disconnector2()
		end)
	end)

	describe("onStep", function()
		it("should fire once per render step when connected", function()
			local mockEngine, engineInterface = MockEngine.new()

			local onStepSpy = createSpy()
			local onStep = Input.PublicInterface.onStep(Enum.KeyCode.ButtonA, onStepSpy.value)

			expect(onStepSpy.callCount).to.equal(0)
			local disconnector = Input.connectToEvent(onStep, engineInterface)

			mockEngine:renderStep(0.1)

			expect(onStepSpy.callCount).to.equal(1)
			local captured = onStepSpy:captureValues("_inputObjects", "deltaTime")
			expect(captured.deltaTime).to.equal(0.1)

			disconnector()
		end)

		it("should accept a keyCode and provide a relevant inputObject to the callback", function()
			local mockEngine, engineInterface = MockEngine.new()

			local onStepSpy = createSpy()
			local onStep = Input.PublicInterface.onStep(Enum.KeyCode.Thumbstick1, onStepSpy.value)

			expect(onStepSpy.callCount).to.equal(0)
			local disconnector = Input.connectToEvent(onStep, engineInterface)

			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.Thumbstick1,
				UserInputState = Enum.UserInputState.Change,
				Position = Vector3.new(0, 0, 0),
				Delta = Vector3.new(0, 0, 0),
			})
			mockEngine:renderStep(0.1)

			expect(onStepSpy.callCount).to.equal(1)
			local captured = onStepSpy:captureValues("inputObject", "_deltaTime")
			expect(captured.inputObject.KeyCode).to.equal(Enum.KeyCode.Thumbstick1)
			expect(captured.inputObject.UserInputState).to.equal(Enum.UserInputState.Change)
			expect(captured.inputObject.Position).to.equal(Vector3.new(0, 0, 0))
			expect(captured.inputObject.Delta).to.equal(Vector3.new(0, 0, 0))

			disconnector()
		end)

		it("should provide an up-to-date inputObject to the callback", function()
			local mockEngine, engineInterface = MockEngine.new()

			local onStepSpy = createSpy()
			local onStep = Input.PublicInterface.onStep(Enum.KeyCode.Thumbstick1, onStepSpy.value)

			expect(onStepSpy.callCount).to.equal(0)
			local disconnector = Input.connectToEvent(onStep, engineInterface)

			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.Thumbstick1,
				UserInputState = Enum.UserInputState.Change,
				Position = Vector3.new(0, 0, 0),
				Delta = Vector3.new(0, 0, 0),
			})
			mockEngine:renderStep(0.1)
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.Thumbstick1,
				UserInputState = Enum.UserInputState.End,
				Position = Vector3.new(1, 0, 0),
				Delta = Vector3.new(1, 0, 0),
			})
			mockEngine:renderStep(0.1)

			expect(onStepSpy.callCount).to.equal(2)
			local captured = onStepSpy:captureValues("inputObject", "_deltaTime")
			expect(captured.inputObject.KeyCode).to.equal(Enum.KeyCode.Thumbstick1)
			expect(captured.inputObject.UserInputState).to.equal(Enum.UserInputState.End)
			expect(captured.inputObject.Position).to.equal(Vector3.new(1, 0, 0))
			expect(captured.inputObject.Delta).to.equal(Vector3.new(1, 0, 0))

			disconnector()
		end)
	end)

	describe("onMoveStep", function()
		local function simulateSeveralInputs(mockEngine, state, keyCodes)
			for _, keyCode in ipairs(keyCodes) do
				mockEngine:simulateInput({
					KeyCode = keyCode,
					UserInputState = state,
				})
			end
		end

		it("should reflect the state of each input at each render step", function()
			local mockEngine, engineInterface = MockEngine.new()

			local onMoveStepSpy = createSpy()
			local onStep = Input.PublicInterface.onMoveStep(onMoveStepSpy.value)

			expect(onMoveStepSpy.callCount).to.equal(0)
			local disconnector = Input.connectToEvent(onStep, engineInterface)

			simulateSeveralInputs(mockEngine, Enum.UserInputState.Begin, {
				Enum.KeyCode.Thumbstick1,
				Enum.KeyCode.DPadUp,
				Enum.KeyCode.DPadDown,
				Enum.KeyCode.DPadLeft,
				Enum.KeyCode.DPadRight,
			})
			mockEngine:renderStep(0.1)

			expect(onMoveStepSpy.callCount).to.equal(1)

			local captured = onMoveStepSpy:captureValues("inputObjects", "_deltaTime")
			local captured = {
				Thumbstick1 = captured.inputObjects[Enum.KeyCode.Thumbstick1],
				DPadUp = captured.inputObjects[Enum.KeyCode.DPadUp],
				DPadDown = captured.inputObjects[Enum.KeyCode.DPadDown],
				DPadLeft = captured.inputObjects[Enum.KeyCode.DPadLeft],
				DPadRight = captured.inputObjects[Enum.KeyCode.DPadRight],
			}
			expect(captured.Thumbstick1.UserInputState).to.equal(Enum.UserInputState.Begin)
			expect(captured.DPadUp.UserInputState).to.equal(Enum.UserInputState.Begin)
			expect(captured.DPadDown.UserInputState).to.equal(Enum.UserInputState.Begin)
			expect(captured.DPadLeft.UserInputState).to.equal(Enum.UserInputState.Begin)
			expect(captured.DPadRight.UserInputState).to.equal(Enum.UserInputState.Begin)

			simulateSeveralInputs(mockEngine, Enum.UserInputState.Change, {
				Enum.KeyCode.Thumbstick1,
				Enum.KeyCode.DPadUp,
				Enum.KeyCode.DPadDown,
				Enum.KeyCode.DPadLeft,
				Enum.KeyCode.DPadRight,
			})
			mockEngine:renderStep(0.1)

			-- Shouldn't need to recapture, since the inputObjects themselves
			-- are being mutated directly by the engine
			expect(captured.Thumbstick1.UserInputState).to.equal(Enum.UserInputState.Change)
			expect(captured.DPadUp.UserInputState).to.equal(Enum.UserInputState.Change)
			expect(captured.DPadDown.UserInputState).to.equal(Enum.UserInputState.Change)
			expect(captured.DPadLeft.UserInputState).to.equal(Enum.UserInputState.Change)
			expect(captured.DPadRight.UserInputState).to.equal(Enum.UserInputState.Change)

			disconnector()
		end)
	end)
end