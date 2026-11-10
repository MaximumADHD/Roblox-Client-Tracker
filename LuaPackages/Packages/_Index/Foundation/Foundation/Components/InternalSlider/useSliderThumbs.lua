local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local calculateSliderStepValue = require(Foundation.Components.Slider.calculateSliderStepValue)
local calculateSliderValueFraction = require(Foundation.Components.Slider.calculateSliderValueFraction)
local getThumbOffset = require(script.Parent.ThumbLayout.getThumbOffset)
local toThumbFraction = require(script.Parent.ThumbLayout.toThumbFraction)
local toThumbTrackFraction = require(script.Parent.ThumbLayout.toThumbTrackFraction)

local MIN_GAP_FRACTION = 0.01
local GRID_TOLERANCE = 1e-6

export type InternalSliderThumbConfig = {
	value: React.Binding<number>,
	testId: string,
}

export type SliderThumbsProps = {
	thumbs: { InternalSliderThumbConfig },
	range: NumberRange,
	step: number?,
	onValueChanged: (thumbIndex: number, newValue: number) -> (),
	-- The knob's size over the track's size on each axis.
	knobScale: React.Binding<Vector2>,
	-- Reads the same ratio from the current layout, for pointer input that can
	-- land before `knobScale` catches up.
	getKnobScale: () -> Vector2,
	isVertical: boolean,
	isContained: boolean?,
}

-- The frame from the first knob center to the last, along the value axis and
-- spanning the full cross axis.
export type ThumbSpan = {
	Position: UDim2,
	Size: UDim2,
}

export type SliderThumbs = {
	fractions: { React.Binding<number> },
	-- Where each knob center sits for pointer input, as a fraction of the track.
	trackFractions: { React.Binding<number> },
	positions: { React.Binding<UDim2> },
	span: React.Binding<ThumbSpan>,
	toFraction: (value: number) -> number,
	valueFromFraction: (fraction: number) -> number,
	clampToNeighbors: (index: number, value: number) -> number,
	updateThumbValue: (index: number, newValue: number) -> (),
	seekThumb: (index: number, fraction: number) -> (),
	getThumbTrackFraction: (index: number) -> number,
	seekThumbToTrackFraction: (index: number, trackFraction: number) -> (),
}

local function getKnobFraction(knobScale: Vector2, isVertical: boolean): number
	return if isVertical then knobScale.Y else knobScale.X
end

local function useSliderThumbs(props: SliderThumbsProps): SliderThumbs
	local toFraction = React.useCallback(function(value: number): number
		return calculateSliderValueFraction(value, props.range)
	end, { props.range })

	local valueFromFraction = React.useCallback(function(fraction: number): number
		local rawValue = props.range.Min + fraction * (props.range.Max - props.range.Min)
		return if props.step then calculateSliderStepValue(rawValue, props.step, props.range) else rawValue
	end, { props.range, props.step } :: { unknown })

	-- The nearest step grid position at or past `value` in `direction`, so a gap
	-- bound past an off-grid neighbor still lands on the grid.
	local getGridBound = React.useCallback(function(value: number, direction: number): number
		if not props.step or props.step <= 0 then
			return value
		end
		local position = (value - props.range.Min) / props.step
		local tolerance = GRID_TOLERANCE * math.max(1, math.abs(position))
		local stepCount = if direction > 0 then math.ceil(position - tolerance) else math.floor(position + tolerance)
		return props.range.Min + stepCount * props.step
	end, { props.range.Min, props.step } :: { unknown })

	-- Interaction keeps neighboring thumbs at least one step apart, or 1% of the
	-- range without a step. A thumb that is already closer, such as from a
	-- controlled value, holds its position rather than moving closer or being
	-- pushed apart.
	local clampToNeighbors = React.useCallback(function(index: number, value: number): number
		local minGap = if props.step and props.step > 0
			then props.step
			else MIN_GAP_FRACTION * (props.range.Max - props.range.Min)
		local current = props.thumbs[index].value:getValue()
		local clampedValue = value
		if index > 1 then
			local neighbor = props.thumbs[index - 1].value:getValue()
			clampedValue = math.max(clampedValue, neighbor, math.min(getGridBound(neighbor + minGap, 1), current))
		end
		if index < #props.thumbs then
			local neighbor = props.thumbs[index + 1].value:getValue()
			clampedValue = math.min(clampedValue, neighbor, math.max(getGridBound(neighbor - minGap, -1), current))
		end
		return clampedValue
	end, { props.thumbs, props.range.Min, props.range.Max, props.step, getGridBound } :: { unknown })

	local updateThumbValue = React.useCallback(function(index: number, newValue: number)
		if newValue ~= props.thumbs[index].value:getValue() then
			props.onValueChanged(index, newValue)
		end
	end, { props.thumbs, props.onValueChanged } :: { unknown })

	local seekThumb = React.useCallback(function(index: number, fraction: number)
		updateThumbValue(index, clampToNeighbors(index, valueFromFraction(math.clamp(fraction, 0, 1))))
	end, { updateThumbValue, clampToNeighbors, valueFromFraction } :: { unknown })

	local fractions: { React.Binding<number> } = {}
	for index = 1, #props.thumbs do
		fractions[index] = props.thumbs[index].value:map(toFraction)
	end

	local thumbCount = #props.thumbs
	local getThumbTrackFraction = React.useCallback(function(index: number): number
		return toThumbTrackFraction(
			toFraction(props.thumbs[index].value:getValue()),
			index,
			thumbCount,
			getKnobFraction(props.getKnobScale(), props.isVertical)
		)
	end, { props.thumbs, toFraction, thumbCount, props.getKnobScale, props.isVertical } :: { unknown })

	local seekThumbToTrackFraction = React.useCallback(function(index: number, trackFraction: number)
		local knobFraction = getKnobFraction(props.getKnobScale(), props.isVertical)
		seekThumb(index, toThumbFraction(trackFraction, index, thumbCount, knobFraction))
	end, { seekThumb, thumbCount, props.getKnobScale, props.isVertical } :: { unknown })

	local trackFractions: { React.Binding<number> } = {}
	for index = 1, thumbCount do
		trackFractions[index] = React.joinBindings({ fraction = fractions[index], knobScale = props.knobScale })
			:map(function(values: { fraction: number, knobScale: Vector2 })
				return toThumbTrackFraction(
					values.fraction,
					index,
					thumbCount,
					getKnobFraction(values.knobScale, props.isVertical)
				)
			end)
	end

	-- Knob positions stay in track scale so a UIScale ancestor scales them once,
	-- along with the track.
	local positions: { React.Binding<UDim2> } = {}
	for index = 1, thumbCount do
		positions[index] = React.joinBindings({ fraction = fractions[index], knobScale = props.knobScale })
			:map(function(values: { fraction: number, knobScale: Vector2 })
				local center = values.fraction
					+ getThumbOffset(
						values.fraction,
						index,
						thumbCount,
						getKnobFraction(values.knobScale, props.isVertical),
						props.isContained
					)
				return if props.isVertical then UDim2.fromScale(0.5, 1 - center) else UDim2.fromScale(center, 0.5)
			end)
	end

	local span = React.joinBindings({
		first = fractions[1],
		last = fractions[thumbCount],
		knobScale = props.knobScale,
	}):map(function(values: { first: number, last: number, knobScale: Vector2 }): ThumbSpan
		local knobFraction = getKnobFraction(values.knobScale, props.isVertical)
		local firstCenter = values.first + getThumbOffset(values.first, 1, thumbCount, knobFraction, props.isContained)
		local lastCenter = values.last
			+ getThumbOffset(values.last, thumbCount, thumbCount, knobFraction, props.isContained)
		local extent = lastCenter - firstCenter
		return if props.isVertical
			then {
				Position = UDim2.fromScale(0, 1 - lastCenter),
				Size = UDim2.fromScale(1, extent),
			}
			else {
				Position = UDim2.fromScale(firstCenter, 0),
				Size = UDim2.fromScale(extent, 1),
			}
	end)

	return {
		fractions = fractions,
		trackFractions = trackFractions,
		positions = positions,
		span = span,
		getThumbTrackFraction = getThumbTrackFraction,
		seekThumbToTrackFraction = seekThumbToTrackFraction,
		toFraction = toFraction,
		valueFromFraction = valueFromFraction,
		clampToNeighbors = clampToNeighbors,
		updateThumbValue = updateThumbValue,
		seekThumb = seekThumb,
	}
end

return useSliderThumbs
