local debugPrint = require(script.Parent.debugPrint)
local InputBindingKind = require(script.Parent.InputBindingKind)

local INPUT_TYPES = {
	[Enum.UserInputType.Keyboard] = true,
	[Enum.UserInputType.Gamepad1] = true,
	[Enum.UserInputType.Gamepad2] = true,
	[Enum.UserInputType.Gamepad3] = true,
	[Enum.UserInputType.Gamepad4] = true,
	[Enum.UserInputType.Gamepad5] = true,
	[Enum.UserInputType.Gamepad6] = true,
	[Enum.UserInputType.Gamepad7] = true,
	[Enum.UserInputType.Gamepad8] = true,
}

--[[
	In order to reduce the friction of tracking this globally, we track the
	gamepad connection state of each "engine interface" individually. In
	production contexts, this table will have one key-value pair. When running
	tests, each test will provide it's own mock engine interface; this table
	will keep them separate and prevent tests from interfering with one another
]]
local engineGamepadState = {}

local function initializeEngineGamepadState()
	return {
		gamepadConnectedConnection = nil,
		gamepadDisconnectedConnection = nil,
		onStepConnections = 0,
		primaryGamepadState = {},
	}
end

local function getEngineState(engineInterface)
	if engineGamepadState[engineInterface] == nil then
		engineGamepadState[engineInterface] = initializeEngineGamepadState()
	end
	
	return engineGamepadState[engineInterface]
end

local function updatePrimaryGamepad(engineInterface)
	local engineState = getEngineState(engineInterface)

	local primaryGamepad = Enum.UserInputType.Gamepad1
	for _, gamepadNum in ipairs(engineInterface.getNavigationGamepads()) do
		if engineInterface.getGamepadConnected(gamepadNum) then
			primaryGamepad = gamepadNum
			break
		end
	end

	-- States returned by getGamepadState are mutable and updated by the engine,
	-- so this table only needs to be setup once per gamepad update
	local states = engineInterface.getGamepadState(primaryGamepad)

	engineState.primaryGamepadState = {}
	for _, state in ipairs(states) do
		engineState.primaryGamepadState[state.KeyCode] = state
	end
end

local function getInputEvent(action, matchInput)
	return function(inputObject)
		if matchInput(inputObject) then
			debugPrint("[EVENT] Process input: ",
				inputObject.KeyCode,
				"-",
				inputObject.UserInputState
			)
			action(inputObject)
		end
	end
end

local function wrapWithGamepadStateListener(engineInterface, connection)
	local engineState = getEngineState(engineInterface)

	if engineState.onStepConnections == 0 then
		updatePrimaryGamepad(engineInterface)
		engineState.gamepadConnectedConnection = engineInterface.subscribeToGamepadConnected(function()
			updatePrimaryGamepad(engineInterface)
		end)
		engineState.gamepadDisconnectedConnection = engineInterface.subscribeToGamepadDisconnected(function()
			updatePrimaryGamepad(engineInterface)
		end)
	end
	engineState.onStepConnections = engineState.onStepConnections + 1

	return function()
		connection:Disconnect()

		engineState.onStepConnections = engineState.onStepConnections - 1
		if engineState.onStepConnections == 0 then
			engineState.gamepadConnectedConnection:Disconnect()
			engineState.gamepadConnectedConnection = nil
			engineState.gamepadDisconnectedConnection:Disconnect()
			engineState.gamepadDisconnectedConnection = nil
		end
	end
end

-- Returns a function that can be called to disconnect from the event
local function connectToEvent(binding, engineInterface)
	if binding.kind == InputBindingKind.Begin then
		local function matchInput(inputObject)
			return INPUT_TYPES[inputObject.UserInputType]
				and inputObject.UserInputState == Enum.UserInputState.Begin
				and inputObject.KeyCode == binding.keyCode
		end

		local connection = engineInterface.subscribeToInputBegan(getInputEvent(binding.action, matchInput))

		return function()
			connection:Disconnect()
		end
	elseif binding.kind == InputBindingKind.End then
		local function matchInput(inputObject)
			return INPUT_TYPES[inputObject.UserInputType]
				and inputObject.UserInputState == Enum.UserInputState.End
				and inputObject.KeyCode == binding.keyCode
		end

		local connection = engineInterface.subscribeToInputEnded(getInputEvent(binding.action, matchInput))

		return function()
			connection:Disconnect()
		end
	elseif binding.kind == InputBindingKind.Step then
		local engineState = getEngineState(engineInterface)

		local connection = engineInterface.subscribeToRenderStepped(function(step)
			debugPrint("[EVENT] Render step triggered onStep callback")
			binding.action(engineState.primaryGamepadState[binding.keyCode], step)
		end)

		return wrapWithGamepadStateListener(engineInterface, connection)
	elseif binding.kind == InputBindingKind.MoveStep then
		local engineState = getEngineState(engineInterface)

		local connection = engineInterface.subscribeToRenderStepped(function(step)
			debugPrint("[EVENT] Render step triggered onMoveStep callback")
			local moveState = {
				[Enum.KeyCode.Thumbstick1] = engineState.primaryGamepadState[Enum.KeyCode.Thumbstick1],
				[Enum.KeyCode.DPadUp] = engineState.primaryGamepadState[Enum.KeyCode.DPadUp],
				[Enum.KeyCode.DPadDown] = engineState.primaryGamepadState[Enum.KeyCode.DPadDown],
				[Enum.KeyCode.DPadLeft] = engineState.primaryGamepadState[Enum.KeyCode.DPadLeft],
				[Enum.KeyCode.DPadRight] = engineState.primaryGamepadState[Enum.KeyCode.DPadRight],
			}

			binding.action(moveState, step)
		end)

		return wrapWithGamepadStateListener(engineInterface, connection)
	end
end

local function makeInputBinding(kind)
	return function(keyCode, action, meta)
		assert(typeof(keyCode) == "EnumItem" and keyCode.EnumType == Enum.KeyCode,
			"Invalid argument #1: expected a member of Enum.KeyCode")
		assert(typeof(action) == "function", "Invalid argument #2: expected a function")

		return {
			kind = kind,
			keyCode = keyCode,
			action = action,
			meta = meta,
		}
	end
end

local function onMoveStepInputBinding(action)
	return {
		kind = InputBindingKind.MoveStep,
		action = action,
	}
end

local function getUniqueKey(binding)
	if binding.keyCode then
		return tostring(binding.kind) .. "-" .. tostring(binding.keyCode)
	else
		return tostring(binding.kind)
	end
end

return {
	getUniqueKey = getUniqueKey,
	connectToEvent = connectToEvent,
	PublicInterface = {
		onBegin = makeInputBinding(InputBindingKind.Begin),
		onEnd = makeInputBinding(InputBindingKind.End),
		onStep = makeInputBinding(InputBindingKind.Step),
		onMoveStep = onMoveStepInputBinding,
	}
}
