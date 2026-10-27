local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local calculateSliderStepValue = require(Foundation.Components.Slider.calculateSliderStepValue)

export type InternalSliderThumbConfig = {
	value: React.Binding<number>,
	testId: string,
}

export type SliderThumbsProps = {
	thumbs: { InternalSliderThumbConfig },
	range: NumberRange,
	step: number?,
	onValueChanged: (thumbIndex: number, newValue: number) -> (),
}

export type SliderThumbs = {
	fractions: { React.Binding<number> },
	toFraction: (value: number) -> number,
	valueFromFraction: (fraction: number) -> number,
	getSnappedFraction: (value: number) -> number,
	getThumbBounds: (index: number) -> (number, number),
	clampToNeighbors: (index: number, value: number) -> number,
	updateThumbValue: (index: number, newValue: number) -> (),
	seekThumb: (index: number, fraction: number) -> (),
}

local function useSliderThumbs(props: SliderThumbsProps): SliderThumbs
	local toFraction = React.useCallback(function(value: number): number
		return math.clamp((value - props.range.Min) / (props.range.Max - props.range.Min), 0, 1)
	end, { props.range.Min, props.range.Max })

	local valueFromFraction = React.useCallback(function(fraction: number): number
		local rawValue = props.range.Min + fraction * (props.range.Max - props.range.Min)
		return if props.step then calculateSliderStepValue(rawValue, props.step, props.range) else rawValue
	end, { props.range, props.step } :: { unknown })

	-- Seeks snap to the step grid, so a neighbor that sits between grid positions
	-- bounds a drag at its nearest grid position.
	local getSnappedFraction = React.useCallback(function(value: number): number
		local clampedValue = math.clamp(value, props.range.Min, props.range.Max)
		if props.step and props.step > 0 then
			local stepCount = math.floor((clampedValue - props.range.Min) / props.step + 0.5)
			return toFraction(props.range.Min + stepCount * props.step)
		end
		return toFraction(clampedValue)
	end, { props.range.Min, props.range.Max, props.step, toFraction } :: { unknown })

	local getThumbBounds = React.useCallback(function(index: number): (number, number)
		local lower = if index > 1 then getSnappedFraction(props.thumbs[index - 1].value:getValue()) else 0
		local upper = if index < #props.thumbs then getSnappedFraction(props.thumbs[index + 1].value:getValue()) else 1
		return lower, upper
	end, { props.thumbs, getSnappedFraction } :: { unknown })

	local clampToNeighbors = React.useCallback(function(index: number, value: number): number
		local clampedValue = value
		if index > 1 then
			clampedValue = math.max(clampedValue, props.thumbs[index - 1].value:getValue())
		end
		if index < #props.thumbs then
			clampedValue = math.min(clampedValue, props.thumbs[index + 1].value:getValue())
		end
		return clampedValue
	end, { props.thumbs })

	local updateThumbValue = React.useCallback(function(index: number, newValue: number)
		if newValue ~= props.thumbs[index].value:getValue() then
			props.onValueChanged(index, newValue)
		end
	end, { props.thumbs, props.onValueChanged } :: { unknown })

	local seekThumb = React.useCallback(function(index: number, fraction: number)
		local lower, upper = getThumbBounds(index)
		updateThumbValue(index, clampToNeighbors(index, valueFromFraction(math.clamp(fraction, lower, upper))))
	end, { getThumbBounds, updateThumbValue, clampToNeighbors, valueFromFraction } :: { unknown })

	local fractions: { React.Binding<number> } = {}
	for index = 1, #props.thumbs do
		fractions[index] = props.thumbs[index].value:map(toFraction)
	end

	return {
		fractions = fractions,
		toFraction = toFraction,
		valueFromFraction = valueFromFraction,
		getSnappedFraction = getSnappedFraction,
		getThumbBounds = getThumbBounds,
		clampToNeighbors = clampToNeighbors,
		updateThumbValue = updateThumbValue,
		seekThumb = seekThumb,
	}
end

return useSliderThumbs
