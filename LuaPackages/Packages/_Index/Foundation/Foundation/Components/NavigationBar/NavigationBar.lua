local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Breakpoint = require(Foundation.Enums.Breakpoint)
local BreakpointConfig = require(Foundation.Utility.Responsive.BreakpointConfig)
local Divider = require(Foundation.Components.Divider)
local NavigationBarTab = require(script.Parent.NavigationBarTab)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useAnimatedHighlight = require(Foundation.Utility.useAnimatedHighlight)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

export type NavigationBarItem = NavigationBarTab.NavigationBarItem

export type NavigationBarProps = {
	-- Destinations to show, one tab each. Use 3 to 5 items
	items: { NavigationBarItem },
	-- Active item id for a controlled component. Shouldn't be used along with defaultActiveItemId
	activeItemId: Types.ItemId?,
	-- Initial active item id for an uncontrolled component
	defaultActiveItemId: Types.ItemId?,
	-- Called with the item id when a tab is activated
	onActivated: ((id: Types.ItemId) -> ())?,
} & Types.CommonProps

local MAX_TABS_WIDTH = BreakpointConfig.widths[Breakpoint.Small]

local defaultProps = {
	testId = "--foundation-navigation-bar",
}

local function NavigationBar(navigationBarProps: NavigationBarProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(navigationBarProps, defaultProps)
	local internalActiveItemId, setInternalActiveItemId =
		React.useState(props.defaultActiveItemId or Dash.get(props.items, { 1, "id" }))
	local activeItemId = if props.activeItemId ~= nil then props.activeItemId else internalActiveItemId

	local onActivated = React.useCallback(function(id: Types.ItemId)
		setInternalActiveItemId(id)
		if props.onActivated then
			props.onActivated(id)
		end
	end, { props.onActivated })

	local tokens = useTokens()
	local containerRef = React.useRef(nil :: GuiObject?)
	local tabRefsCache = React.useRef({} :: { [Types.ItemId]: React.RefObject<GuiObject?> })
	local tabRefs = React.useMemo(function()
		local cache = tabRefsCache.current
		for _, item in props.items do
			if not cache[item.id] then
				cache[item.id] = React.createRef()
			end
		end
		return cache
	end, { props.items })

	local hasActiveItem = Dash.some(props.items, function(item)
		return item.id == activeItemId
	end)
	local highlight = useAnimatedHighlight(
		activeItemId,
		(if ref then ref else containerRef) :: { current: GuiObject? },
		tabRefs,
		props.items
	)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "size-full-0 auto-y",
			backgroundStyle = tokens.Color.Common.NavigationBar,
			onActivated = Dash.noop,
			stateLayer = { affordance = StateLayerAffordance.None },
			selection = { Selectable = false },
			ref = ref or containerRef,
		}),
		{
			ActiveIndicator = React.createElement(View, {
				tag = "radius-circle bg-system-contrast",
				Size = highlight.highlightWidth:map(function(width: number)
					return UDim2.fromOffset(width, tokens.Size.Size_50)
				end),
				Position = highlight.highlightPosition:map(function(x: number)
					return UDim2.fromOffset(x, 0)
				end),
				Visible = hasActiveItem,
				ZIndex = 3,
				testId = `{props.testId}--active-indicator`,
			}),
			Divider = React.createElement(Divider, {
				testId = `{props.testId}--divider`,
			}),
			Tabs = React.createElement(
				View,
				{
					tag = "row gap-small size-full-0 auto-y margin-x-small",
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.fromScale(0.5, 0),
					sizeConstraint = { MaxSize = Vector2.new(MAX_TABS_WIDTH, math.huge) },
					ZIndex = 2,
					testId = `{props.testId}--tabs`,
				},
				Dash.map(props.items, function(item, index)
					return React.createElement(NavigationBarTab, {
						key = tostring(item.id),
						item = item,
						isActive = item.id == activeItemId,
						onActivated = onActivated,
						LayoutOrder = index,
						ref = tabRefs[item.id],
						testId = `{props.testId}--item-{item.id}`,
					})
				end)
			),
		}
	)
end

return React.memo(React.forwardRef(NavigationBar))
