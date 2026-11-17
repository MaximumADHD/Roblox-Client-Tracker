local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local ControlState = require(Foundation.Enums.ControlState)
local Icon = require(Foundation.Components.Icon)
local TileIconIndicator = require(script.Parent.TileIconIndicator)
local View = require(Foundation.Components.View)
local blendColors = require(Foundation.Utility.blendColors)
local getStateLayerStyle = require(Foundation.Components.Interactable.getStateLayerStyle)
local useTokens = require(Foundation.Providers.Style.useTokens)

type ControlState = ControlState.ControlState
type IconVariant = BuilderIcons.IconVariant
type TileIconIndicator = TileIconIndicator.TileIconIndicator

export type TileIconMediaProps = {
	icon: string,
	iconVariant: IconVariant?,
	indicator: TileIconIndicator?,
	controlState: React.Binding<ControlState>?,
	testId: string,
}

local ICON_RATIO = 0.4

local function TileIconMedia(props: TileIconMediaProps)
	local tokens = useTokens()
	local minIconSize = tokens.Size.Size_600
	local maxIconSize = tokens.Size.Size_1000
	-- Matches the largest IconButton, so an indicator beside one is the same size.
	local compactWidth = tokens.Size.Size_1200

	local width, setWidth = React.useBinding(0)
	local isCompact, setIsCompact = React.useState(false)
	local onSizeChanged = React.useCallback(function(instance: GuiObject)
		setWidth(instance.AbsoluteSize.X)
		setIsCompact(instance.AbsoluteSize.X <= compactWidth)
	end, { compactWidth })

	return React.createElement(View, {
		tag = "size-full-full radius-circle",
		-- Tinted by the tile's hover and press, so hovering anywhere on the tile highlights the circle.
		backgroundStyle = if props.controlState
			then props.controlState:map(function(state)
				return blendColors(tokens.Color.Shift.Shift_200, getStateLayerStyle(tokens, nil, state :: ControlState))
			end)
			else tokens.Color.Shift.Shift_200,
		onAbsoluteSizeChanged = onSizeChanged,
		testId = `{props.testId}--circle`,
	}, {
		Icon = React.createElement(Icon, {
			name = props.icon,
			variant = props.iconVariant,
			size = width:map(function(value: number)
				return math.clamp(math.round(value * ICON_RATIO), minIconSize, maxIconSize)
			end),
			style = tokens.Color.Content.Emphasis,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			testId = `{props.testId}--icon`,
		}),
		Indicator = if props.indicator
			then React.createElement(TileIconIndicator, {
				indicator = props.indicator,
				isCompact = isCompact,
				testId = props.testId,
			})
			else nil,
	})
end

return React.memo(TileIconMedia)
