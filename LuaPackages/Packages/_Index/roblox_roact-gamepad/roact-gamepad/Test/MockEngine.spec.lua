return function()
	local Packages = script.Parent.Parent.Parent
	local Cryo = require(Packages.Cryo)

	local MockEngine = require(script.Parent.MockEngine)
	local createSpy = require(script.Parent.createSpy)

	describe("selection logic simulation", function()
		it("should fire a change signal when simulating selection change", function()
			local mockEngine, engineInterface = MockEngine.new()

			local selectionChangedSpy = createSpy()
			engineInterface.subscribeToSelectionChanged(selectionChangedSpy.value)

			local selectionTarget = Instance.new("Frame")
			mockEngine:simulateSelectionChanged(selectionTarget)

			expect(selectionChangedSpy.callCount).to.equal(1)
			expect(engineInterface.getSelection()).to.equal(selectionTarget)
		end)

		it("should automatically simulate selection change when simulating gamepad directional inputs", function()
			local mockEngine, engineInterface = MockEngine.new()

			-- Create two UI elements that are vertical neighbors
			local upper = Instance.new("Frame")
			local lower = Instance.new("Frame")
			upper.NextSelectionDown = lower
			lower.NextSelectionUp = upper

			-- Set starting selection to the upper element of the two
			engineInterface.setSelection(upper)
			expect(engineInterface.getSelection()).to.equal(upper)

			local selectionChangedSpy = createSpy()
			local inputBeganSpy = createSpy()
			engineInterface.subscribeToSelectionChanged(selectionChangedSpy.value)
			engineInterface.subscribeToInputBegan(inputBeganSpy.value)

			-- Simulate a downward input, and confirm that the expected
			-- selection change occurs and selection is now on the lower element
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.DPadDown
			})
			expect(inputBeganSpy.callCount).to.equal(1)
			expect(selectionChangedSpy.callCount).to.equal(1)
			expect(engineInterface.getSelection()).to.equal(lower)

			-- Simulate a downward input, and confirm that the expected
			-- selection change occurs and selection returns to the upper
			-- element
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.DPadUp
			})
			expect(inputBeganSpy.callCount).to.equal(2)
			expect(selectionChangedSpy.callCount).to.equal(2)
			expect(engineInterface.getSelection()).to.equal(upper)
		end)

		it("should automatically simulate selection change when simulating keyboard directional inputs", function()
			local mockEngine, engineInterface = MockEngine.new()

			-- Create two UI elements that are vertical neighbors
			local upper = Instance.new("Frame")
			local lower = Instance.new("Frame")
			upper.NextSelectionDown = lower
			lower.NextSelectionUp = upper

			-- Set starting selection to the upper element of the two
			engineInterface.setSelection(upper)
			expect(engineInterface.getSelection()).to.equal(upper)

			local selectionChangedSpy = createSpy()
			local inputBeganSpy = createSpy()
			engineInterface.subscribeToSelectionChanged(selectionChangedSpy.value)
			engineInterface.subscribeToInputBegan(inputBeganSpy.value)

			-- Simulate a downward input, and confirm that the expected
			-- selection change occurs and selection is now on the lower element
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.DPadDown,
				UserInputState = Enum.UserInputState.Begin,
			})
			expect(inputBeganSpy.callCount).to.equal(1)
			expect(selectionChangedSpy.callCount).to.equal(1)
			expect(engineInterface.getSelection()).to.equal(lower)

			-- Simulate a downward input, and confirm that the expected
			-- selection change occurs and selection returns to the upper
			-- element
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.DPadUp,
				UserInputState = Enum.UserInputState.Begin,
			})
			expect(inputBeganSpy.callCount).to.equal(2)
			expect(selectionChangedSpy.callCount).to.equal(2)
			expect(engineInterface.getSelection()).to.equal(upper)
		end)
	end)

	describe("gamepad state simulation", function()
		it("should fire events when gamepads are connected and disconnected", function()
			local mockEngine, engineInterface = MockEngine.new()

			local gamepadConnectedSpy = createSpy()
			local gamepadDisconnectedSpy = createSpy()

			engineInterface.subscribeToGamepadConnected(gamepadConnectedSpy.value)
			engineInterface.subscribeToGamepadDisconnected(gamepadDisconnectedSpy.value)

			expect(gamepadConnectedSpy.callCount).to.equal(0)
			expect(gamepadDisconnectedSpy.callCount).to.equal(0)

			local gamepad1 = Enum.UserInputType.Gamepad1
			mockEngine:connectGamepad(gamepad1)

			expect(gamepadConnectedSpy.callCount).to.equal(1)
			gamepadConnectedSpy:assertCalledWith(gamepad1)
			expect(gamepadDisconnectedSpy.callCount).to.equal(0)

			mockEngine:disconnectGamepad(gamepad1)

			expect(gamepadConnectedSpy.callCount).to.equal(1)
			expect(gamepadDisconnectedSpy.callCount).to.equal(1)
			gamepadDisconnectedSpy:assertCalledWith(gamepad1)
		end)

		it("should report gamepad connection status", function()
			local mockEngine, engineInterface = MockEngine.new()

			expect(engineInterface.getGamepadConnected(gamepad1)).to.equal(false)

			local gamepad1 = Enum.UserInputType.Gamepad1
			mockEngine:connectGamepad(gamepad1)

			expect(engineInterface.getGamepadConnected(gamepad1)).to.equal(true)

			mockEngine:disconnectGamepad(gamepad1)

			expect(engineInterface.getGamepadConnected(gamepad1)).to.equal(false)
		end)

		it("should automatically 'connect' a gamepad when a matching input is simulated", function()
			local mockEngine, engineInterface = MockEngine.new()

			expect(engineInterface.getGamepadConnected(Enum.UserInputType.Gamepad1)).to.equal(false)

			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.Begin,
				UserInputType = Enum.UserInputType.Gamepad1,
			})

			expect(engineInterface.getGamepadConnected(Enum.UserInputType.Gamepad1)).to.equal(true)
		end)

		it("should give access to current gamepad input state", function()
			local mockEngine, engineInterface = MockEngine.new()

			local gamepad1 = Enum.UserInputType.Gamepad1
			mockEngine:connectGamepad(gamepad1)

			-- Check that a valid state is returned even when no inputs for the
			-- given keyCode have been issued. There should be an entry for each
			-- possible KeyCode (Thumbstick 1 and 2, L1/L2/L3, R1/R2/R3,
			-- A/B/X/Y, Select/Start, DPad up/down/left/right), 18 total
			local gamepadState = engineInterface.getGamepadState(gamepad1)
			expect(#gamepadState).to.equal(18)

			local buttonAIndex = Cryo.List.findWhere(gamepadState, function(inputObject)
				return inputObject.KeyCode == Enum.KeyCode.ButtonA
			end)
			expect(buttonAIndex).to.be.ok()

			local buttonAInputObject = gamepadState[buttonAIndex]

			-- A quick consistency check with expected default values
			expect(buttonAInputObject.UserInputType).to.equal(gamepad1)
			expect(buttonAInputObject.UserInputState).to.equal(Enum.UserInputState.End)

			mockEngine:simulateInput({
				UserInputType = gamepad1,
				KeyCode = Enum.KeyCode.ButtonA,
				UserInputState = Enum.UserInputState.Begin,
			})

			-- The engine will directly mutate the InputObjects it returns from
			-- `GetGamepadState`, so we simulate the same behavior here. This
			-- means we can check that the input object we already saved to
			-- buttonAInputObject to mutate in response to inputs
			expect(buttonAInputObject.UserInputState).to.equal(Enum.UserInputState.Begin)
		end)
	end)

	describe("render step simulation", function()
		it("should fire subscribed events when render steps are simulated", function()
			local mockEngine, engineInterface = MockEngine.new()

			local renderSteppedSpy = createSpy()
			engineInterface.subscribeToRenderStepped(renderSteppedSpy.value)

			expect(renderSteppedSpy.callCount).to.equal(0)

			mockEngine:renderStep(0.03)

			expect(renderSteppedSpy.callCount).to.equal(1)
			renderSteppedSpy:assertCalledWith(0.03)
		end)
	end)
end