local Packages = script.Parent.Parent.Parent
local Cryo = require(Packages.Cryo)

local createSignal = require(script.Parent.Parent.createSignal)

local MockEngine = {}
MockEngine.__index = MockEngine

local VALID_INPUT_TYPES = {
	[Enum.UserInputType.Gamepad1] = true,
	[Enum.UserInputType.Gamepad2] = true,
	[Enum.UserInputType.Gamepad3] = true,
	[Enum.UserInputType.Gamepad4] = true,
	[Enum.UserInputType.Gamepad5] = true,
	[Enum.UserInputType.Gamepad6] = true,
	[Enum.UserInputType.Gamepad7] = true,
	[Enum.UserInputType.Gamepad8] = true,
	[Enum.UserInputType.Keyboard] = true,
}

local GAMEPAD_STATES = {
	Enum.KeyCode.Thumbstick2,
	Enum.KeyCode.DPadDown,
	Enum.KeyCode.DPadUp,
	Enum.KeyCode.ButtonL3,
	Enum.KeyCode.ButtonL2,
	Enum.KeyCode.DPadRight,
	Enum.KeyCode.ButtonR1,
	Enum.KeyCode.ButtonSelect,
	Enum.KeyCode.ButtonStart,
	Enum.KeyCode.ButtonY,
	Enum.KeyCode.DPadLeft,
	Enum.KeyCode.ButtonR2,
	Enum.KeyCode.ButtonR3,
	Enum.KeyCode.ButtonX,
	Enum.KeyCode.Thumbstick1,
	Enum.KeyCode.ButtonB,
	Enum.KeyCode.ButtonA,
	Enum.KeyCode.ButtonL1,
}

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

local function defaultInputObject(keyCode)
	return {
		KeyCode = keyCode,

		Delta = Vector3.new(),
		Position = Vector3.new(),
		UserInputType = Enum.UserInputType.Gamepad1,
		UserInputState = Enum.UserInputState.End,
	}
end

local function wrapDisconnector(disconnect)
	return {
		Disconnect = disconnect
	}
end

function MockEngine.new()
	local self = setmetatable({
		-- Mock engine state
		__mockSelected = nil,
		__connectedGamepads = {},
		__gamepadStates = {},

		-- Signals that represent engine events firing
		__selectionChangedSignal = createSignal(),
		__inputSignal = createSignal(),
		__renderStepped = createSignal(),
		__gamepadConnected = createSignal(),
		__gamepadDisconnected = createSignal(),

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
		getGamepadConnected = function(id)
			return self.__connectedGamepads[id] or false
		end,
		getGamepadState = function(id)
			if self.__gamepadStates[id] == nil then
				self:__initializeGamepadState(id)
			end
			
			-- To mimic the real engine behavior, this returns a table that can
			-- continue to be mutated by the mock engine
			return self.__gamepadStates[id]
		end,
		getNavigationGamepads = function(id)
			return Cryo.Dictionary.keys(self.__connectedGamepads)
		end,
		subscribeToSelectionChanged = function(callback)
			local disconnector = self.__selectionChangedSignal:subscribe(callback)

			return wrapDisconnector(disconnector)
		end,
		subscribeToInputBegan = function(callback)
			local disconnector = self.__inputSignal:subscribe(callback)

			return wrapDisconnector(disconnector)
		end,
		subscribeToInputChanged = function(callback)
			local disconnector = self.__inputSignal:subscribe(callback)

			return wrapDisconnector(disconnector)
		end,
		subscribeToInputEnded = function(callback)
			local disconnector = self.__inputSignal:subscribe(callback)

			return wrapDisconnector(disconnector)
		end,
		subscribeToRenderStepped = function(callback)
			local disconnector = self.__renderStepped:subscribe(callback)

			return wrapDisconnector(disconnector)
		end,
		subscribeToGamepadConnected = function(callback)
			local disconnector = self.__gamepadConnected:subscribe(callback)

			return wrapDisconnector(disconnector)
		end,
		subscribeToGamepadDisconnected = function(callback)
			local disconnector = self.__gamepadDisconnected:subscribe(callback)

			return wrapDisconnector(disconnector)
		end,
	}

	self.__interface = mockInterface

	return self, mockInterface
end

function MockEngine:__initializeGamepadState(id)
	self.__gamepadStates[id] = Cryo.List.map(GAMEPAD_STATES, function(keyCode)
		return defaultInputObject(keyCode)
	end)
end

function MockEngine:simulateSelectionChanged(selectionTarget)
	self.__mockSelected = selectionTarget
	self.__selectionChangedSignal:fire()
end

function MockEngine:simulateInput(inputObject)
	-- Simplify the input object so that we don't always need to provide all the
	-- values
	local inputObject = Cryo.Dictionary.join({
		Delta = Vector3.new(),
		Position = Vector3.new(),
		UserInputType = Enum.UserInputType.Gamepad1,
	}, inputObject)

	assert(typeof(inputObject.KeyCode) == "EnumItem" and inputObject.KeyCode.EnumType == Enum.KeyCode,
		"Invalid inputObject.KeyCode: expected a member of Enum.KeyCode")
	assert(VALID_INPUT_TYPES[inputObject.UserInputType], "Invalid inputObject.UserInputType")

	-- Simulate navigational actions by jumping to relevant neighbors
	local keyCode = inputObject.KeyCode
	local neighborProperty = DIRECTIONAL_INPUTS[keyCode]

	-- To mimic engine behavior, this happens *before* the input signal is
	-- processed
	if neighborProperty ~= nil and self.__interface.getSelection() ~= nil then
		self.__interface.setSelection(self.__interface.getSelection()[neighborProperty])
	end

	-- For gamepad inputs, update the gamepad state InputObject
	if inputObject.UserInputType ~= Enum.UserInputType.Keyboard then
		local gamepadId = inputObject.UserInputType

		-- As a shorthand, if the originating gamepad for this simulated input
		-- isn't connected yet, we first simulate connecting that gamepad
		if not self.__connectedGamepads[gamepadId] then
			self:connectGamepad(gamepadId)
		end

		local gamepadState = self.__gamepadStates[gamepadId]
		local index = Cryo.List.findWhere(gamepadState, function(state)
			return state.KeyCode == keyCode
		end)

		if index == nil then
			error(("Invalid InputObject: KeyCode %s is not possible on %s"):format(
				tostring(keyCode),
				tostring(gamepadId)
			), 2)
		end

		for key, value in pairs(inputObject) do
			gamepadState[index][key] = value
		end
	end

	-- Pass on input by firing the input signal with an approximation of a
	-- InputObject
	self.__inputSignal:fire(inputObject)
end

function MockEngine:renderStep(deltaTime)
	if deltaTime == nil then
		deltaTime = 1 / 30
	end

	self.__renderStepped:fire(deltaTime)
end

function MockEngine:connectGamepad(id)
	assert(typeof(id) == "EnumItem" and id.EnumType == Enum.UserInputType,
		"Invalid argument #1: expected a member of Enum.UserInputType")

	self.__connectedGamepads[id] = true
	self:__initializeGamepadState(id)

	self.__gamepadConnected:fire(id)
end

function MockEngine:disconnectGamepad(id)
	assert(typeof(id) == "EnumItem" and id.EnumType == Enum.UserInputType,
		"Invalid argument #1: expected a member of Enum.UserInputType")

	self.__connectedGamepads[id] = nil
	self.__gamepadDisconnected:fire(id)
end

return MockEngine