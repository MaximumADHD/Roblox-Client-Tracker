local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useForwardRef = ReactUtils.useForwardRef
local ControlState = require(Foundation.Enums.ControlState)
local ControlStateEvent = require(Foundation.Enums.ControlStateEvent)
local Flags = require(Foundation.Utility.Flags)
local Types = require(Foundation.Components.Types)

type ControlState = ControlState.ControlState
type ControlStateEvent = ControlStateEvent.ControlStateEvent
type StateChangedCallback = Types.StateChangedCallback

local guiStateMapper: { [Enum.GuiState]: ControlState } = {
	[Enum.GuiState.Idle] = ControlState.Default,
	[Enum.GuiState.Hover] = ControlState.Hover,
	[Enum.GuiState.Press] = ControlState.Pressed,
	[Enum.GuiState.NonInteractable] = ControlState.Disabled,
}

local function useGuiControlState_DEPRECATED(guiObjectRef: React.Ref<Instance>, onStateChanged: StateChangedCallback)
	local isSelected = React.useRef(false)
	local currentControlState = React.useRef(ControlState.Initialize :: ControlState)

	local onControlStateChanged = React.useCallback(function(newState: ControlState)
		local oldState = currentControlState.current

		if isSelected.current then
			if newState == ControlState.Default or newState == ControlState.Hover then
				newState = ControlState.Selected
			elseif newState == ControlState.Pressed then
				newState = ControlState.SelectedPressed
			end
		end

		if oldState == newState then
			return
		end

		currentControlState.current = newState

		if onStateChanged ~= nil then
			onStateChanged(newState)
		end
	end, { onStateChanged })

	local onRefChange = React.useCallback(function(instance: GuiObject)
		local connections: { RBXScriptConnection } = {}
		if instance then
			onControlStateChanged(guiStateMapper[instance.GuiState])

			table.insert(
				connections,
				instance:GetPropertyChangedSignal("GuiState"):Connect(function()
					local controlState: ControlState = guiStateMapper[instance.GuiState]
					onControlStateChanged(controlState)
				end)
			)

			-- Selected state is not part of GuiState, so we need to handle it separately with SelectionGained and SelectionLost
			table.insert(
				connections,
				instance.SelectionGained:Connect(function()
					isSelected.current = true
					onControlStateChanged(currentControlState.current :: ControlState)
				end)
			)
			table.insert(
				connections,
				instance.SelectionLost:Connect(function()
					isSelected.current = false
					onControlStateChanged(currentControlState.current :: ControlState)
				end)
			)
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { onControlStateChanged })

	return useForwardRef(guiObjectRef, onRefChange)
end

type Tracker = {
	isSelected: boolean,
	controlState: ControlState,
	onStateChanged: StateChangedCallback?,
	connections: { RBXScriptConnection }?,
}

local function assignRef(ref: React.Ref<Instance>?, instance: Instance?)
	if typeof(ref) == "function" then
		ref(instance)
	elseif ref ~= nil then
		(ref :: any).current = instance
	end
end

local function setControlState(tracker: Tracker, newState: ControlState)
	if tracker.isSelected then
		if newState == ControlState.Default or newState == ControlState.Hover then
			newState = ControlState.Selected
		elseif newState == ControlState.Pressed then
			newState = ControlState.SelectedPressed
		end
	end

	if tracker.controlState == newState then
		return
	end

	tracker.controlState = newState

	if tracker.onStateChanged ~= nil then
		tracker.onStateChanged(newState)
	end
end

local function useGuiControlState(guiObjectRef: React.Ref<Instance>, onStateChanged: StateChangedCallback)
	local trackerRef = React.useRef<<Tracker>>(nil :: never)
	if trackerRef.current == nil then -- using this odd structure to avoid reallocating unused tables per-render
		trackerRef.current = {
			isSelected = false,
			controlState = ControlState.Initialize,
			onStateChanged = onStateChanged,
			connections = nil,
		}
	end

	-- Read at event time, so a new callback doesn't reconnect the instance's signals
	trackerRef.current.onStateChanged = onStateChanged

	return React.useCallback(function(instance: GuiObject?)
		local tracker = trackerRef.current
		assignRef(guiObjectRef, instance)

		local connections = tracker.connections
		if connections ~= nil then
			for _, connection in connections do
				connection:Disconnect()
			end
			tracker.connections = nil
		end

		if instance == nil then
			return
		end

		setControlState(tracker, guiStateMapper[instance.GuiState])

		tracker.connections = {
			instance:GetPropertyChangedSignal("GuiState"):Connect(function()
				setControlState(tracker, guiStateMapper[instance.GuiState])
			end),
			-- Selected state is not part of GuiState, so we need to handle it separately with SelectionGained and SelectionLost
			instance.SelectionGained:Connect(function()
				tracker.isSelected = true
				setControlState(tracker, tracker.controlState)
			end),
			instance.SelectionLost:Connect(function()
				tracker.isSelected = false
				setControlState(tracker, tracker.controlState)
			end),
		}
	end, { guiObjectRef })
end

return if Flags.FoundationLightweightGuiControlState
	then useGuiControlState :: typeof(useGuiControlState_DEPRECATED)
	else useGuiControlState_DEPRECATED
