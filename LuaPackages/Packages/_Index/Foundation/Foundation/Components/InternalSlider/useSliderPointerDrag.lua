local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local InputMode = require(Foundation.Utility.Input.InputMode)
local getInputMode = require(Foundation.Utility.Input.getInputMode)

local Services = require(Foundation.Utility.Wrappers.Services)
local UserInputService = Services.UserInputService

local calculateSliderFraction = require(Foundation.Components.Slider.calculateSliderFraction)
local getGuiInputPosition = require(Foundation.Components.Slider.getGuiInputPosition)

local useSliderThumbs = require(script.Parent.useSliderThumbs)
type InternalSliderThumbConfig = useSliderThumbs.InternalSliderThumbConfig

export type SliderPointerDragProps = {
	thumbs: { InternalSliderThumbConfig },
	rootRef: { current: GuiObject? },
	isVertical: boolean,
	getThumbTrackFraction: (index: number) -> number,
	seekThumbToTrackFraction: (index: number, trackFraction: number) -> (),
	setActiveIndex: (index: number) -> (),
	onDragStarted: (() -> ())?,
	onDragEnded: (() -> ())?,
}

export type SliderPointerDrag = {
	draggedIndex: number?,
	onThumbDragStarted: (index: number) -> (),
	onThumbDragEnded: () -> (),
	onTrackDragStarted: (rbx: UIDragDetector, inputPosition: Vector2) -> (),
	onTrackDrag: (rbx: UIDragDetector, inputPosition: Vector2) -> (),
	onTrackDragEnded: () -> (),
}

-- Knob positions come from layout math, so distances within this of each other
-- count as a tie.
local TIE_TOLERANCE = 1e-9

-- A tie goes to the earlier thumb.
local function getNearestThumbIndex(fraction: number, fractions: { number }): number
	local nearestIndex = 1
	local nearestDistance = math.abs(fractions[1] - fraction)
	for index = 2, #fractions do
		local distance = math.abs(fractions[index] - fraction)
		if distance < nearestDistance - TIE_TOLERANCE then
			nearestIndex = index
			nearestDistance = distance
		end
	end
	return nearestIndex
end

local function useSliderPointerDrag(props: SliderPointerDragProps): SliderPointerDrag
	local draggedIndex, setDraggedIndex = React.useState<<number?>>(nil)
	local trackDragIndexRef = React.useRef<<number?>>(nil)

	local onThumbDragStarted = React.useCallback(function(index: number)
		setDraggedIndex(index)
		props.setActiveIndex(index)
		if props.onDragStarted then
			props.onDragStarted()
		end
	end, { props.setActiveIndex, props.onDragStarted } :: { unknown })

	local onThumbDragEnded = React.useCallback(function()
		setDraggedIndex(nil)
		if props.onDragEnded then
			props.onDragEnded()
		end
	end, { props.onDragEnded })

	local getTrackFraction = React.useCallback(function(inputPosition: Vector2): number?
		local track = props.rootRef.current
		if not track then
			return nil
		end
		return calculateSliderFraction(getGuiInputPosition(inputPosition, track), track, props.isVertical)
	end, { props.isVertical, props.rootRef } :: { unknown })

	local onTrackDragStarted = React.useCallback(
		function(_rbx: UIDragDetector, inputPosition: Vector2)
			local fraction = getTrackFraction(inputPosition)
			-- The rendered input mode can lag a press that is itself the first
			-- pointer input, so the press reads the input type it was made with.
			local isDirectional = getInputMode(UserInputService:GetLastInputType()) == InputMode.Directional
			if isDirectional or fraction == nil then
				return
			end

			local fractions = {}
			for index in props.thumbs do
				fractions[index] = props.getThumbTrackFraction(index)
			end
			local index = getNearestThumbIndex(fraction, fractions)
			trackDragIndexRef.current = index
			onThumbDragStarted(index)
			props.seekThumbToTrackFraction(index, fraction)
		end,
		{
			getTrackFraction,
			props.thumbs,
			props.getThumbTrackFraction,
			onThumbDragStarted,
			props.seekThumbToTrackFraction,
		} :: { unknown }
	)

	local onTrackDrag = React.useCallback(function(_rbx: UIDragDetector, inputPosition: Vector2)
		local index = trackDragIndexRef.current
		local fraction = getTrackFraction(inputPosition)
		if index == nil or fraction == nil then
			return
		end
		props.seekThumbToTrackFraction(index, fraction)
	end, { getTrackFraction, props.seekThumbToTrackFraction } :: { unknown })

	local onTrackDragEnded = React.useCallback(function()
		if trackDragIndexRef.current == nil then
			return
		end
		trackDragIndexRef.current = nil
		onThumbDragEnded()
	end, { onThumbDragEnded })

	return {
		draggedIndex = draggedIndex,
		onThumbDragStarted = onThumbDragStarted,
		onThumbDragEnded = onThumbDragEnded,
		onTrackDragStarted = onTrackDragStarted,
		onTrackDrag = onTrackDrag,
		onTrackDragEnded = onTrackDragEnded,
	}
end

return useSliderPointerDrag
