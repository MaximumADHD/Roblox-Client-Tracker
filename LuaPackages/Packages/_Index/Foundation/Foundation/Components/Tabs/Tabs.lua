local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local OverflowScrollContainer = require(Foundation.Components.OverflowScrollContainer)
local TabItem = require(script.Parent.TabItem)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useAnimatedHighlight = require(Foundation.Utility.useAnimatedHighlight)

local DEPRECATED_OverflowScrollContainer = require(script.Parent.OverflowScrollContainer)

type InputSize = InputSize.InputSize
type FillBehavior = FillBehavior.FillBehavior
export type TabItem = TabItem.TabItem
export type TabsProps = {
	-- Default active tab id for uncontrolled component. Active tab is tracked inside the component.
	defaultActiveTabId: Types.ItemId?,
	-- Active tab id for controlled component. Active tab is tracked by the user. Shouldn't be used along with defaultActiveTabId
	activeTabId: Types.ItemId?,
	-- Callback function when a tab is activated
	onActivated: ((id: Types.ItemId) -> ())?,
	-- List of tabs to display
	tabs: { TabItem },
	size: InputSize?,
	-- Whether tabs fill the whole width growing to the equal size (Fill) or take minmum space (Fit)
	fillBehavior: FillBehavior?,
} & Types.CommonProps

local defaultProps = {
	fillBehavior = FillBehavior.Fill,
	size = InputSize.Medium,
	testId = "--foundation-tabs",
	ZIndex = 1,
}

local function Tabs(tabsProps: TabsProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local props = withDefaults(tabsProps, defaultProps)
	local internalActiveTabId, setInternalActiveTabId =
		React.useState(props.defaultActiveTabId or Dash.get(props, { 1, "id" }))

	local onActivated = React.useCallback(function(id: Types.ItemId)
		if props.onActivated then
			props.onActivated(id)
		end
		setInternalActiveTabId(id)
	end)

	local isFill = props.fillBehavior == FillBehavior.Fill
	local activeTabId = props.activeTabId or internalActiveTabId
	local activeTab = Dash.find(props.tabs, function(tab)
		return tab.id == activeTabId
	end)

	local containerRef = React.useRef(nil :: GuiObject?)

	local tabListWidth, setTabListWidth
	local updateTabListsWidth
	if Flags.FoundationUnifiedScrimScrolling then
		tabListWidth, setTabListWidth = React.useBinding(0)
		updateTabListsWidth = React.useCallback(function(tabList: GuiObject)
			setTabListWidth(tabList.AbsoluteSize.X)
		end, {})
	end

	-- Create refs for each tab (use user-provided ref if available)
	local tabRefs
	local tabRefsCache = React.useRef({} :: { [Types.ItemId]: React.RefObject<GuiObject?> })
	tabRefs = React.useMemo(function()
		local cache = tabRefsCache.current
		for _, tab in props.tabs do
			if tab.ref then
				cache[tab.id] = tab.ref
			elseif not cache[tab.id] then
				cache[tab.id] = React.createRef()
			end
		end
		return cache
	end, { props.tabs })

	local animatedBorder = useAnimatedHighlight(
		activeTabId,
		(if ref then ref else containerRef) :: { current: GuiObject? },
		tabRefs,
		props.size,
		props.fillBehavior
	)

	local borderPosition, borderWidth, activeTabHeight =
		animatedBorder.highlightPosition, animatedBorder.highlightWidth, animatedBorder.activeItemHeight

	local tabsSize: InputSize = if Flags.FoundationFixTabsFitBorderWidth then props.size else nil :: never

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = if Flags.FoundationUnifiedScrimScrolling then "auto-y no-clip" else "auto-y clip",
			Size = UDim2.fromScale(1, 0),
			sizeConstraint = if Flags.FoundationUnifiedScrimScrolling and not isFill
				then {
					MaxSize = tabListWidth:map(function(width: number)
						return Vector2.new(width, math.huge)
					end),
				}
				else nil,
		}),
		{
			Tabs = React.createElement(View, {
				ref = ref or containerRef,
				tag = "col auto-y",
				Size = UDim2.fromScale(1, 0),
			}, {
				Wrapper = React.createElement(View, {
					LayoutOrder = 1,
					tag = "auto-y",
					Size = UDim2.fromScale(1, 0),
					testId = `{props.testId}--wrapper`,
				}, {
					ScrollContainer = React.createElement(
						if Flags.FoundationUnifiedScrimScrolling
							then OverflowScrollContainer
							else DEPRECATED_OverflowScrollContainer,
						if Flags.FoundationUnifiedScrimScrolling
							then {
								LayoutOrder = 1,
								size = props.size,
								scrimBottomInset = tokens.Stroke.Thick,
								testId = `{props.testId}--scroll-container`,
							}
							else {
								LayoutOrder = 1,
								size = props.size,
								testId = `{props.testId}--scroll-container`,
							},
						{
							TabList = React.createElement(
								View,
								{
									onAbsoluteSizeChanged = if Flags.FoundationUnifiedScrimScrolling
										then updateTabListsWidth
										else nil,
									tag = {
										["row flex-y-fill auto-xy"] = true,
										["gap-large"] = if Flags.FoundationFixTabsFitBorderWidth
											then not isFill and (tabsSize == InputSize.Small or tabsSize == InputSize.XSmall)
											else not isFill,
									},
									Size = if isFill then UDim2.fromScale(1, 0) else nil,
									testId = `{props.testId}--list`,
								},
								Dash.map(props.tabs, function(tab, index)
									return React.createElement(TabItem, {
										id = tab.id,
										text = tab.text,
										indicator = tab.indicator,
										key = tostring(tab.id),
										icon = tab.icon,
										isActive = tab.id == activeTabId,
										onActivated = onActivated,
										LayoutOrder = index,
										fillBehavior = props.fillBehavior,
										size = props.size,
										isDisabled = tab.isDisabled,
										testId = `{props.testId}--item-{tab.id}`,
										ref = tabRefs[tab.id],
									})
								end)
							),
						}
					),
					Border = React.createElement(View, {
						LayoutOrder = 2,
						AnchorPoint = Vector2.new(0, 1),
						Size = UDim2.new(1, 0, 0, tokens.Stroke.Thick),
						Position = UDim2.fromScale(0, 1),
						backgroundStyle = tokens.Color.Stroke.Default,
						testId = `{props.testId}--border`,
					}),
				}),
				Content = if activeTab and activeTab.content
					then React.createElement(View, {
						LayoutOrder = 2,
						tag = "auto-y",
						Size = UDim2.fromScale(1, 0),
						testId = `{props.testId}--content`,
					}, activeTab.content)
					else nil,
			}),
			AnimatedBorder = React.createElement(View, {
				LayoutOrder = 0,
				ZIndex = props.ZIndex + 1,
				Size = borderWidth:map(function(value)
					return UDim2.fromOffset(value, tokens.Stroke.Thick)
				end),
				AnchorPoint = if Flags.FoundationFixTabsBorderPosition then Vector2.new(0, 1) else nil,
				Position = React.joinBindings({ borderPosition, activeTabHeight }):map(function(value)
					local xPosition, yPosition = value[1], value[2]
					return UDim2.fromOffset(
						xPosition,
						if Flags.FoundationFixTabsBorderPosition then yPosition else yPosition - tokens.Stroke.Thick
					)
				end),
				backgroundStyle = tokens.Color.System.Contrast,
				testId = `{props.testId}--animated-border`,
			}),
		}
	)
end

return React.memo(React.forwardRef(Tabs))
