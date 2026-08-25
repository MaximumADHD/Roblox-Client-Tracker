local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
local StateLayerMode = require(Foundation.Enums.StateLayerMode)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local function buildDayTags(isInRangeDay: boolean, bandRadiusTag: string?): { [string]: boolean }
	local dayTags = {
		["size-full text-title-small text-align-x-center text-align-y-center"] = true,
		["radius-circle"] = not isInRangeDay,
	}
	if isInRangeDay and bandRadiusTag and bandRadiusTag ~= "" then
		dayTags[bandRadiusTag] = true
	end
	return dayTags
end

type Props = {
	-- Range connector band drawn behind a selected endpoint so its circle bridges into
	-- the adjacent in-range squares (avoids the corner gap at range edges).
	bandPosition: UDim2?,
	bandRadiusTag: string?,
	bandSize: UDim2?,
	emphasizeText: boolean?,
	highlight: boolean?,
	isSelectable: boolean,
	isSelected: boolean?,
	LayoutOrder: number,
	onActivated: () -> (),
	onHoverEnter: (() -> ())?,
	testId: string?,
	label: string,
}

local function CalendarGridDayLabel(props: Props)
	local tokens = useTokens()
	local color3 = if props.isSelected
		then tokens.Inverse.Content.Emphasis.Color3
		elseif not props.isSelectable or not props.emphasizeText then tokens.Color.Content.Muted.Color3
		else tokens.Color.Content.Emphasis.Color3
	local transparency = if not props.isSelected and (not props.isSelectable or not props.emphasizeText)
		then Constants.DISABLED_TRANSPARENCY
		else 0

	-- In-range days fill the cell squarely so their backgrounds abut into a continuous
	-- band; the selected endpoints stay circular, giving the range rounded ends.
	local isInRangeDay = props.highlight == true and not props.isSelected
	local dayTags = buildDayTags(isInRangeDay, props.bandRadiusTag)

	local onStateChanged = React.useMemo(function(): ((ControlState) -> ())?
		if props.onHoverEnter == nil then
			return nil
		end
		return function(newState: ControlState)
			if newState == ControlState.Hover then
				props.onHoverEnter()
			end
		end
	end, { props.onHoverEnter })

	local dayElement = React.createElement(Text, {
		backgroundStyle = if props.isSelected
			then tokens.Color.System.Contrast
			elseif props.highlight then tokens.Color.ActionStandard.Background
			else nil,
		onActivated = if props.isSelectable then props.onActivated else nil,
		onStateChanged = if props.isSelectable then onStateChanged else nil,
		RichText = not props.isSelectable,
		stateLayer = {
			mode = if props.isSelected then StateLayerMode.Inverse else StateLayerMode.Default,
		},
		tag = dayTags,
		testId = props.testId,
		Text = if props.isSelectable then props.label else `<s>{props.label}</s>`,
		textStyle = {
			Color3 = color3,
			Transparency = transparency,
		},
	})

	-- Endpoint of a grid range: draw the connector band behind the circle so it fills the
	-- half-cell toward the range interior, matching the in-range squares' color.
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "size-full",
	}, {
		Band = if props.bandPosition and props.bandSize
			then React.createElement(View, {
				backgroundStyle = tokens.Color.ActionStandard.Background,
				Position = props.bandPosition,
				Size = props.bandSize,
				tag = if props.bandRadiusTag and props.bandRadiusTag ~= "" then props.bandRadiusTag else nil,
				ZIndex = 0,
			})
			else nil,
		Day = dayElement,
	})
end

return CalendarGridDayLabel
