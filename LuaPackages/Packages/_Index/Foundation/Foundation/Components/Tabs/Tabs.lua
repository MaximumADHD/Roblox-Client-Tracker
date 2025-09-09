local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useTokens = require(Foundation.Providers.Style.useTokens)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local TabItem = require(script.Parent.TabItem)

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

	return React.createElement(View, withCommonProps(props, { ref = ref, tag = "auto-y size-full-0 col" }), {
		Wrapper = React.createElement(View, { LayoutOrder = 1, tag = "auto-y size-full-0" }, {
			ScrollContainer = React.createElement(OverflowScrollContainer, {
				LayoutOrder = 1,
				size = props.size,
			}, {
				TabList = React.createElement(
					View,
					{
						tag = {
							["row auto-xy flex-y-fill"] = true,
							["gap-large"] = not isFill,
							["size-full-0"] = isFill,
						},
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
						})
					end)
				),
			}),
			Border = React.createElement(View, {
				LayoutOrder = 2,
				AnchorPoint = Vector2.new(0, 1),
				Size = UDim2.new(1, 0, 0, tokens.Stroke.Thick),
				Position = UDim2.new(0, 0, 1, 0),
				backgroundStyle = tokens.Color.Stroke.Default,
			}),
		}),
		Content = if activeTab and activeTab.content
			then React.createElement(View, {
				LayoutOrder = 2,
				tag = "auto-y size-full-0",
			}, activeTab.content)
			else nil,
	})
end

return React.memo(React.forwardRef(Tabs))
