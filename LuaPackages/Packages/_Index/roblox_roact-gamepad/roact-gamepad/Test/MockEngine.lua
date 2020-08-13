local createSignal = require(script.Parent.Parent.createSignal)

local MockEngine = {}
MockEngine.__index = MockEngine

local DIRECTIONAL_INPUTS = {
	[Enum.KeyCode.DPadUp] = "NextSelectionUp",
	[Enum.KeyCode.Up] = "NextSelectionUp",
	[Enum.KeyCode.DPadDown] = "NextSelectionDown",
	[Enum.KeyCode.Down] = "NextSelectionDown",
	[Enum.KeyCode.DPadLeft] = "NextSelectionLeft",
	[Enum.KeyCode.Left] = "NextSelectionLeft",
	[Enum.KeyCode.DPadRight] = "NextSelectionRight",
	[Enum.KeyCode.Right] = "NextSelectionRight",
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
		subscribeToInputChanged = function(callback)
			local disconnector = self.__inputSignal:subscribe(callback)

			return {
				Disconnect = disconnector
			}
		end,
		subscribeToInputEnded = function(callback)
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

function MockEngine:simulateInput(inputObject)
	-- Simulate navigational actions by jumping to relevant neighbors
	local keyCode = inputObject.KeyCode
	local neighborProperty = DIRECTIONAL_INPUTS[keyCode]

	-- To mimic engine behavior, this happens *before* the input signal is
	-- processed
	if neighborProperty ~= nil and self.__interface.getSelection() ~= nil then
		self.__interface.setSelection(self.__interface.getSelection()[neighborProperty])
	end

	-- Pass on input by firing the input signal with an approximation of a
	-- InputObject
	self.__inputSignal:fire(inputObject)
end

return MockEngine