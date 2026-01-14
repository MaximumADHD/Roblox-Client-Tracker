local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local TabItem = require(script.Parent.TabItem)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useAnimatedHighlight = require(Foundation.Utility.useAnimatedHighlight)

local OverflowScrollContainer = require(script.Parent.OverflowScrollContainer)

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

	local containerRef = if Flags.FoundationAnimateTabs then React.useRef(nil :: GuiObject?) else nil :: never

	local animatedBorder = if Flags.FoundationAnimateTabs
		then useAnimatedHighlight(
			activeTabId,
			(if ref then ref else containerRef) :: { current: GuiObject? },
			props.size,
			props.fillBehavior
		)
		else nil :: never

	local borderPosition, borderWidth, activeTabHeight, tabRefs
	if Flags.FoundationAnimateTabs then
		borderPosition, borderWidth, activeTabHeight, tabRefs =
			animatedBorder.highlightPosition,
			animatedBorder.highlightWidth,
			animatedBorder.activeItemHeight,
			animatedBorder.itemRefs
	end

	if Flags.FoundationAnimateTabs then
		return React.createElement(View, {
			tag = "size-full-0 auto-y",
			ClipsDescendants = true,
		}, {
			Tabs = React.createElement(
				View,
				withCommonProps(props, { ref = ref or containerRef, tag = "auto-y size-full-0 col" }),
				{
					Wrapper = React.createElement(
						View,
						{ LayoutOrder = 1, tag = "auto-y size-full-0", testId = `{props.testId}--wrapper` },
						{
							ScrollContainer = React.createElement(OverflowScrollContainer, {
								LayoutOrder = 1,
								size = props.size,
								testId = `{props.testId}--scroll-container`,
							}, {
								TabList = React.createElement(
									View,
									{
										tag = {
											["row auto-xy flex-y-fill"] = true,
											["gap-large"] = not isFill,
											["size-full-0"] = isFill,
										},
										testId = `{props.testId}--list`,
									},
									Dash.map(props.tabs, function(tab, index)
										return React.createElement(TabItem, {
											id = tab.id,
											text = tab.text,
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
							}),
							Border = React.createElement(View, {
								LayoutOrder = 2,
								AnchorPoint = Vector2.new(0, 1),
								Size = UDim2.new(1, 0, 0, tokens.Stroke.Thick),
								Position = UDim2.fromScale(0, 1),
								backgroundStyle = tokens.Color.Stroke.Default,
								testId = `{props.testId}--border`,
							}),
						}
					),
					Content = if activeTab and activeTab.content
						then React.createElement(View, {
							LayoutOrder = 2,
							tag = "auto-y size-full-0",
							testId = `{props.testId}--content`,
						}, activeTab.content)
						else nil,
				}
			),
			AnimatedBorder = React.createElement(View, {
				LayoutOrder = 0,
				ZIndex = props.ZIndex + 1,
				Size = borderWidth:map(function(value)
					return UDim2.fromOffset(value, tokens.Stroke.Thick)
				end),
				Position = React.joinBindings({ borderPosition, activeTabHeight }):map(function(value)
					local xPosition, yPosition = value[1], value[2]
					return UDim2.fromOffset(xPosition, yPosition - tokens.Stroke.Thick)
				end),
				backgroundStyle = tokens.Color.System.Contrast,
				testId = `{props.testId}--animated-border`,
			}),
		})
	end

	return React.createElement(View, withCommonProps(props, { ref = ref, tag = "auto-y size-full-0 col" }), {
		Wrapper = React.createElement(
			View,
			{ LayoutOrder = 1, tag = "auto-y size-full-0", testId = `{props.testId}--wrapper` },
			{
				ScrollContainer = React.createElement(OverflowScrollContainer, {
					LayoutOrder = 1,
					size = props.size,
					testId = `{props.testId}--scroll-container`,
				}, {
					TabList = React.createElement(
						View,
						{
							tag = {
								["row auto-xy flex-y-fill"] = true,
								["gap-large"] = not isFill,
								["size-full-0"] = isFill,
							},
							testId = `{props.testId}--list`,
						},
						Dash.map(props.tabs, function(tab, index)
							return React.createElement(TabItem, {
								id = tab.id,
								text = tab.text,
								key = tostring(tab.id),
								icon = tab.icon,
								isActive = tab.id == activeTabId,
								onActivated = onActivated,
								LayoutOrder = index,
								fillBehavior = props.fillBehavior,
								size = props.size,
								isDisabled = tab.isDisabled,
								testId = `{props.testId}--item-{tab.id}`,
							})
						end)
					),
				}),
				Border = React.createElement(View, {
					LayoutOrder = 2,
					AnchorPoint = Vector2.new(0, 1),
					Size = UDim2.new(1, 0, 0, tokens.Stroke.Thick),
					Position = UDim2.fromScale(0, 1),
					backgroundStyle = tokens.Color.Stroke.Default,
					testId = `{props.testId}--border`,
				}),
			}
		),
		Content = if activeTab and activeTab.content
			then React.createElement(View, {
				LayoutOrder = 2,
				tag = "auto-y size-full-0",
				testId = `{props.testId}--content`,
			}, activeTab.content)
			else nil,
	})
end

return React.memo(React.forwardRef(Tabs))
