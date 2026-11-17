local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local StatusIndicator = require(Foundation.Components.StatusIndicator)
local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local getStatusIndicatorSize = require(Foundation.Components.StatusIndicator.getStatusIndicatorSize)
local useTokens = require(Foundation.Providers.Style.useTokens)

type Bindable<T> = Types.Bindable<T>
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

export type TileIconIndicator = {
	-- Number shown in the indicator, which makes it numeric. Omit it for a regular status indicator.
	value: Bindable<number>?,
	-- Highest count shown before the indicator reads `max+`. Defaults to unlimited.
	max: number?,
	-- Color treatment of the indicator. Defaults to `Emphasis`; a numeric one only takes the numeric variants.
	variant: StatusIndicatorVariant?,
	-- Ring drawn around the indicator to separate it from the circle. Defaults to `Surface_0`.
	mask: Types.ColorStyle?,
}

export type TileIconIndicatorProps = {
	indicator: TileIconIndicator,
	isCompact: boolean,
	testId: string,
}

-- Angle above horizontal at which the indicator's center sits on the circle's edge, matching the handoff.
local INDICATOR_ANGLE = math.rad(39)
local INDICATOR_CENTER = Vector2.new(0.5 + 0.5 * math.cos(INDICATOR_ANGLE), 0.5 - 0.5 * math.sin(INDICATOR_ANGLE))

local function TileIconIndicator(props: TileIconIndicatorProps)
	local tokens = useTokens()
	local indicator = props.indicator
	local isNumeric = indicator.value ~= nil
	local size: StatusIndicatorSize = if not isNumeric
		then StatusIndicatorSize.Small
		elseif props.isCompact then StatusIndicatorSize.Medium
		else StatusIndicatorSize.Large
	local renderedSize: StatusIndicatorSize = if isNumeric and not Flags.FoundationStatusIndicatorDesignUpdate
		then StatusIndicatorSize.Medium
		else size
	local diameter = getStatusIndicatorSize(tokens, renderedSize, isNumeric)
	local mask = indicator.mask or tokens.Color.Surface.Surface_0
	local testId = `{props.testId}--status-indicator`

	-- Anchored at its right edge so a wider count grows inward, toward the circle's center.
	return React.createElement(View, {
		tag = "auto-x",
		Size = UDim2.fromOffset(0, diameter),
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(INDICATOR_CENTER.X, diameter / 2, INDICATOR_CENTER.Y, 0),
		ZIndex = 3,
	}, {
		Indicator = if indicator.value ~= nil
			then React.createElement(StatusIndicator, {
				value = indicator.value,
				max = indicator.max,
				variant = (
						indicator.variant or StatusIndicatorVariant.Emphasis
					) :: StatusIndicator.StatusIndicatorNumericVariant,
				size = size,
				mask = mask,
				testId = testId,
			})
			else React.createElement(StatusIndicator, {
				variant = indicator.variant or StatusIndicatorVariant.Emphasis,
				size = size,
				mask = mask,
				testId = testId,
			}),
	})
end

return React.memo(TileIconIndicator)
