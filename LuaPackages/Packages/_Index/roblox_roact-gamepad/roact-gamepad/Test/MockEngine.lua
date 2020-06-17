local createSignal = require(script.Parent.Parent.createSignal)

local MockEngine = {}
MockEngine.__index = MockEngine

local DIRECTIONAL_INPUTS = {
	[Enum.KeyCode.DPadUp] = "NextSelectionUp",
	[Enum.KeyCode.DPadDown] = "NextSelectionDown",
	[Enum.KeyCode.DPadLeft] = "NextSelectionLeft",
	[Enum.KeyCode.DPadRight] = "NextSelectionRight",
}

function MockEngine.new()
	local self = setmetatable({
		__mockSelected = nil,
		__selectionChangedSignal = createSignal(),
		__inputSignal = createSignal(),

		__interface = nil,
	}, MockEngine)

	local mockInterface = {
		getSelection = function()
			return self.__mockSelected
		end,
		setSelection = function(selectionTarget)
			self.__mockSelected = selectionTarget

			-- Since this isn't driven by the engine, manually fire the signal
			self.__selectionChangedSignal:fire()
		end,
		subscribeToSelectionChanged = function(callback)
			local disconnector = self.__selectionChangedSignal:subscribe(callback)

			return {
				Disconnect = disconnector
			}
		end,
		subscribeToInputBegan = function(callback)
			local disconnector = self.__inputSignal:subscribe(callback)

			return {
				Disconnect = disconnector
			}
		end,
	}

	self.__interface = mockInterface

	return self, mockInterface
end

function MockEngine:simulateSelectionChanged(selectionTarget)
	self.__mockSelected = selectionTarget
	self.__selectionChangedSignal:fire()
end

function MockEngine:simulateInput(keyCode)
	-- Simulate navigational actions by jumping to relevant neighbors
	local neighborProperty = DIRECTIONAL_INPUTS[keyCode]
	if neighborProperty ~= nil and self.__interface.getSelection() ~= nil then
		self.__interface.setSelection(self.__interface.getSelection()[neighborProperty])
	end

	-- Pass on input by firing the input signal with an approximation of a
	-- InputObject
	self.__inputSignal:fire({
		KeyCode = keyCode,
		-- TODO: Clean up some of this logic as we improve the input bindings
		-- API to be more flexible
		UserInputType = Enum.UserInputType.Gamepad1,
		UserInputState = Enum.UserInputState.Begin,
	})
end

return MockEngine