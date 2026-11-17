local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)
local ReactOtter = require(Packages.ReactOtter)

local Types = require(Foundation.Components.Types)
local getDisabledStyle = require(Foundation.Utility.getDisabledStyle)
local mapBindable = require(Foundation.Utility.mapBindable)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local useTokens = require(Foundation.Providers.Style.useTokens)

type Bindable<T> = Types.Bindable<T>

export type InputSliderFill = {
	color: ColorSequence,
	transparency: NumberSequence,
	offset: Bindable<Vector2>,
}

local function getFraction(value: number, range: NumberRange): number
	local span = range.Max - range.Min
	if span <= 0 then
		return 1
	end
	return (math.clamp(value, range.Min, range.Max) - range.Min) / span
end

-- The gradient switches from filled to unfilled at its midpoint, so offsetting it moves that edge to the fraction.
local function getGradientOffset(fraction: number): Vector2
	if fraction <= 0 then
		return Vector2.new(-1, 0)
	elseif fraction >= 1 then
		return Vector2.new(1, 0)
	end
	return Vector2.new(fraction - 0.5, 0)
end

--[[
	Builds the gradient that paints the filled portion of the track. A value
	change animates when `shouldAnimateRef` is set, unless reduced motion is on.
	Binding values follow the binding directly and do not animate.
]]
local function useInputSliderFill(
	value: Bindable<number>,
	range: NumberRange,
	isDisabled: boolean,
	shouldAnimateRef: { current: boolean }
): InputSliderFill
	local tokens = useTokens()
	local preferences = usePreferences()

	local isValueBinding = ReactIs.isBinding(value)
	local plainValue = if isValueBinding then nil else value :: number
	local animatedFraction, setAnimatedFraction = ReactOtter.useAnimatedBinding(getFraction(plainValue or 0, range))

	React.useEffect(function()
		if plainValue == nil then
			return
		end

		local fraction = getFraction(plainValue, range)
		if shouldAnimateRef.current and not preferences.reducedMotion then
			setAnimatedFraction(ReactOtter.ease(fraction, {
				easingStyle = tokens.Ease.StandardOut,
				duration = tokens.Time.Time_300,
			}))
		else
			setAnimatedFraction(ReactOtter.instant(fraction) :: any)
		end
		shouldAnimateRef.current = false
	end, { plainValue, range, preferences.reducedMotion, tokens } :: { unknown })

	local offset = React.useMemo(function()
		local fraction = if isValueBinding
			then mapBindable(value, function(current: number)
				return getFraction(current, range)
			end)
			else animatedFraction
		return mapBindable(fraction, getGradientOffset)
	end, { isValueBinding, value, range, animatedFraction } :: { unknown })

	local sequences = React.useMemo(function()
		local filled = getDisabledStyle(tokens.Color.Shift.Shift_300, isDisabled)
		local unfilled = getDisabledStyle(tokens.Color.Shift.Shift_200, isDisabled)
		return {
			color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, filled.Color3 :: Color3),
				ColorSequenceKeypoint.new(0.499, filled.Color3 :: Color3),
				ColorSequenceKeypoint.new(0.5, unfilled.Color3 :: Color3),
				ColorSequenceKeypoint.new(1, unfilled.Color3 :: Color3),
			}),
			transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, filled.Transparency or 0),
				NumberSequenceKeypoint.new(0.499, filled.Transparency or 0),
				NumberSequenceKeypoint.new(0.5, unfilled.Transparency or 0),
				NumberSequenceKeypoint.new(1, unfilled.Transparency or 0),
			}),
		}
	end, { tokens, isDisabled } :: { unknown })

	return {
		color = sequences.color,
		transparency = sequences.transparency,
		offset = offset,
	}
end

return useInputSliderFill
