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
	toFraction: (value: number) -> number,
	seekThumb: (index: number, fraction: number) -> (),
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

-- Coincident thumbs resolve toward the later thumb when the press lands past
-- them, so the pair can always be pulled apart in either direction.
local function getNearestThumbIndex(fraction: number, fractions: { number }): number
	local nearestIndex = 1
	local nearestDistance = math.abs(fractions[1] - fraction)
	for index = 2, #fractions do
		local distance = math.abs(fractions[index] - fraction)
		local isPastCoincidentThumb = fractions[index] == fractions[nearestIndex] and fraction > fractions[index]
		if distance < nearestDistance or isPastCoincidentThumb then
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

	local onTrackDragStarted = React.useCallback(function(_rbx: UIDragDetector, inputPosition: Vector2)
		local fraction = getTrackFraction(inputPosition)
		-- The rendered input mode can lag a press that is itself the first
		-- pointer input, so the press reads the input type it was made with.
		local isDirectional = getInputMode(UserInputService:GetLastInputType()) == InputMode.Directional
		if isDirectional or fraction == nil then
			return
		end

		local fractions = {}
		for index, thumb in props.thumbs do
			fractions[index] = props.toFraction(thumb.value:getValue())
		end
		local index = getNearestThumbIndex(fraction, fractions)
		trackDragIndexRef.current = index
		onThumbDragStarted(index)
		props.seekThumb(index, fraction)
	end, { getTrackFraction, props.thumbs, props.toFraction, onThumbDragStarted, props.seekThumb } :: { unknown })

	local onTrackDrag = React.useCallback(function(_rbx: UIDragDetector, inputPosition: Vector2)
		local index = trackDragIndexRef.current
		local fraction = getTrackFraction(inputPosition)
		if index == nil or fraction == nil then
			return
		end
		props.seekThumb(index, fraction)
	end, { getTrackFraction, props.seekThumb } :: { unknown })

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
