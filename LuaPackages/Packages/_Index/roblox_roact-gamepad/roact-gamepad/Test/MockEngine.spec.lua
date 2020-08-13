return function()
	local MockEngine = require(script.Parent.MockEngine)
	local createSpy = require(script.Parent.createSpy)

	describe("MockEngine behavior", function()
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

		-- FIXME
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
				KeyCode = Enum.KeyCode.Down
			})
			expect(inputBeganSpy.callCount).to.equal(1)
			expect(selectionChangedSpy.callCount).to.equal(1)
			expect(engineInterface.getSelection()).to.equal(lower)

			-- Simulate a downward input, and confirm that the expected
			-- selection change occurs and selection returns to the upper
			-- element
			mockEngine:simulateInput({
				KeyCode = Enum.KeyCode.Up
			})
			expect(inputBeganSpy.callCount).to.equal(2)
			expect(selectionChangedSpy.callCount).to.equal(2)
			expect(engineInterface.getSelection()).to.equal(upper)
		end)
	end)
end