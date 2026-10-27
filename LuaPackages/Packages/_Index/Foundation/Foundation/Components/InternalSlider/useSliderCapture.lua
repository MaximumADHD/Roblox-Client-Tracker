local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Services = require(Foundation.Utility.Wrappers.Services)
local GuiService = Services.GuiService
local RunService = Services.RunService

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local getSelectionEntryDirection = require(Foundation.Components.Slider.getSelectionEntryDirection)
local useSliderCaptureKeys = require(Foundation.Components.Slider.useSliderCaptureKeys)

local useSliderDirectionalInput = require(script.Parent.useSliderDirectionalInput)
local useSliderThumbs = require(script.Parent.useSliderThumbs)
type InternalSliderThumbConfig = useSliderThumbs.InternalSliderThumbConfig

export type SliderCaptureProps = {
	thumbs: { InternalSliderThumbConfig },
	rootRef: { current: GuiObject? },
	range: NumberRange,
	step: number?,
	isVertical: boolean,
	isDisabled: boolean,
	updateThumbValue: (index: number, newValue: number) -> (),
	clampToNeighbors: (index: number, value: number) -> number,
}

export type SliderCapture = {
	controlState: ControlState,
	isCaptured: boolean,
	isSelected: boolean,
	activeThumbIndex: number,
	setActiveIndex: (index: number) -> (),
	onStateChanged: (state: ControlState) -> (),
	focusTargetRef: { current: GuiObject? },
	captureTargetRef: { current: GuiObject? },
}

local MAX_SELECTION_ATTEMPTS = 10

local function useSliderCapture(props: SliderCaptureProps): SliderCapture
	local thumbCount = #props.thumbs

	local controlState, setControlState = React.useState(ControlState.Initialize :: ControlState)
	local isCaptured, setIsCaptured = React.useState(false)
	local activeIndex, setActiveIndex = React.useState(1)
	local activeThumbIndex = math.min(activeIndex, thumbCount)

	local focusTargetRef = React.useRef<<GuiObject?>>(nil)
	local captureTargetRef = React.useRef<<GuiObject?>>(nil)
	local wasSelectedRef = React.useRef(false)

	local isSelected = isCaptured
		or controlState == ControlState.Selected
		or controlState == ControlState.SelectedPressed

	local onCapture = React.useCallback(function()
		if not isCaptured then
			setIsCaptured(true)
		elseif thumbCount > 1 then
			setActiveIndex(activeThumbIndex % thumbCount + 1)
		end
	end, { isCaptured, thumbCount, activeThumbIndex } :: { unknown })
	useSliderCaptureKeys(isSelected and not props.isDisabled, onCapture)

	local exitCapture = React.useCallback(function()
		setIsCaptured(false)
		GuiService.SelectedObject = focusTargetRef.current
	end, {})

	React.useEffect(function()
		if props.isDisabled then
			setIsCaptured(false)
		end
	end, { props.isDisabled })

	React.useEffect(function()
		local function redirectDragSelection()
			local selectedObject = GuiService.SelectedObject
			local isUnexpectedSliderSelection = selectedObject == props.rootRef.current
				or (
					selectedObject ~= nil
					and props.rootRef.current ~= nil
					and selectedObject:IsDescendantOf(props.rootRef.current)
					and selectedObject ~= focusTargetRef.current
					and selectedObject ~= captureTargetRef.current
				)

			if isUnexpectedSliderSelection then
				GuiService.SelectedObject = focusTargetRef.current
			end
		end

		redirectDragSelection()
		local connection = GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(redirectDragSelection)
		return function()
			connection:Disconnect()
		end
	end, { props.rootRef })

	React.useEffect(function()
		if not isCaptured then
			return
		end

		local captureTarget = captureTargetRef.current
		GuiService.SelectedObject = captureTarget

		-- The engine rejects a selection whose object has not been laid out yet,
		-- which can still be the case on the frame the cursor mounts.
		local retryConnection: RBXScriptConnection? = nil
		if GuiService.SelectedObject ~= captureTarget then
			local attempts = 0
			retryConnection = RunService.Heartbeat:Connect(function()
				attempts += 1
				GuiService.SelectedObject = captureTarget
				if GuiService.SelectedObject == captureTarget or attempts >= MAX_SELECTION_ATTEMPTS then
					if retryConnection then
						retryConnection:Disconnect()
						retryConnection = nil
					end
				end
			end)
		end

		local connection = GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(function()
			if GuiService.SelectedObject ~= captureTargetRef.current and retryConnection == nil then
				setIsCaptured(false)
			end
		end)
		return function()
			connection:Disconnect()
			if retryConnection then
				retryConnection:Disconnect()
			end
			-- Not every engine configuration clears a selection whose object
			-- unmounts, so a release that leaves the cursor selected hands
			-- selection back to the focus target.
			if captureTarget ~= nil and GuiService.SelectedObject == captureTarget then
				GuiService.SelectedObject = focusTargetRef.current
			end
		end
	end, { isCaptured })

	local directionalInputHandlers = React.useMemo(function(): useSliderDirectionalInput.Handlers
		return {
			getValue = function()
				return props.thumbs[activeThumbIndex].value:getValue()
			end,
			onStep = function(newValue: number)
				props.updateThumbValue(activeThumbIndex, props.clampToNeighbors(activeThumbIndex, newValue))
			end,
			onExit = exitCapture,
		}
	end, { props.thumbs, activeThumbIndex, props.updateThumbValue, props.clampToNeighbors, exitCapture } :: { unknown })

	useSliderDirectionalInput(
		isCaptured and not props.isDisabled,
		props.step,
		props.range,
		props.isVertical,
		directionalInputHandlers
	)

	local onStateChanged = React.useCallback(function(state: ControlState)
		setControlState(state)

		local isNowSelected = state == ControlState.Selected or state == ControlState.SelectedPressed
		if thumbCount > 1 and isNowSelected and not wasSelectedRef.current then
			setActiveIndex(if getSelectionEntryDirection(props.isVertical) < 0 then thumbCount else 1)
		end
		wasSelectedRef.current = isNowSelected
	end, { thumbCount, props.isVertical } :: { unknown })

	return {
		controlState = controlState,
		isCaptured = isCaptured,
		isSelected = isSelected,
		activeThumbIndex = activeThumbIndex,
		setActiveIndex = setActiveIndex,
		onStateChanged = onStateChanged,
		focusTargetRef = focusTargetRef,
		captureTargetRef = captureTargetRef,
	}
end

return useSliderCapture
