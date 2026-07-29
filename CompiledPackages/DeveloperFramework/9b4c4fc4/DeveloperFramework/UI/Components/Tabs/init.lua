--[[
	(USES STYLESHEETS)
	A horizontal row of tabs with one always selected.

	Required Props:
		callback OnTabSelected: Callback for when user clicks a tab
		table Tabs: The list of tabs
		any SelectedTab: The currently selected tab, either passing the Tab object directly, a string matching a tab Key, or a number for the tab index

	Optional Props:
		table ForwardRef: An optional reference to pass to the underlying tabs component
		number LayoutOrder: The layout order of the tabs
		table TabComponent: The tab component to render each tab (default = SimpleTab)
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Enum.FillDirection FillDirection: The fill direction of the tabs, default = Horizontal
		table TabsListRef: A ref which will point to a list of refs for each of the tabs
		callback OnAbsoluteSizeChanged: called when AbsoluteSize of the Tabs component changes
]]

local Framework = script:FindFirstAncestor("UI").Parent
local TabsTypes = require(script.types)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Roact = require(Framework.Parent.Roact)

local Typecheck = require(Framework.Util.Typecheck)
local withForwardRef = require(Framework.Wrappers.withForwardRef)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)
local Dash = require(Framework.Parent.Dash)
local map = Dash.map
local findIndex = Dash.findIndex

local Pane = require(Framework.UI.Components.Pane)
local SimpleTab = require(Framework.UI.Components.SimpleTab)

local Tabs = Roact.PureComponent:extend("Tabs")
Typecheck.wrap(Tabs, script)

local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()
local isRoact17 = require(Framework.Util.isRoact17)(Roact)

function Tabs:init()
	if self.props.TabsListRef ~= nil then
		for index, tab in self.props.Tabs do
			self.props.TabsListRef.current[tab.Key or index] = Roact.createRef()
		end
	end
end

function Tabs:render()
	local props: TabsTypes.ConnectedProps = self.props
	local tabComponent = props.TabComponent or SimpleTab

	local tabIndex = props.SelectedTab
	if typeof(props.SelectedTab) == "table" then
		tabIndex = findIndex(props.Tabs, function(tab)
			return tab == props.SelectedTab
		end)
	elseif typeof(props.SelectedTab) == "string" then
		tabIndex = findIndex(props.Tabs, function(tab)
			return tab.Key == props.SelectedTab
		end)
	end

	local tabs = map(props.Tabs, function(tab: TabsTypes.Tab, index: number)
		return Roact.createElement(tabComponent, {
			key = if FFlagDevFrameworkFixMissingKeyErrors and isRoact17 then tab.Key or tostring(tab) else nil,
			Tab = tab,
			Index = index,
			Disabled = tab.Disabled,
			Selected = tabIndex == index,
			OnTabSelected = props.OnTabSelected,

			[Roact.Ref] = if props.TabsListRef ~= nil then props.TabsListRef.current[tab.Key or index] else nil,
		})
	end)

	local fillDirection = if props.FillDirection then props.FillDirection else Enum.FillDirection.Horizontal

	return Roact.createElement(
		Pane,
		if supportsStyleSheets
			then {
				LayoutOrder = props.LayoutOrder,
				[React.Tag] = joinTags(
					"Component-Tabs",
					(props :: any)[React.Tag] or "X-Fit",
					if fillDirection == Enum.FillDirection.Vertical then "X-Column" else "X-Row"
				),
				[Roact.Ref] = props.ForwardRef,
				[React.Change.AbsoluteSize] = props.OnAbsoluteSizeChanged,
			}
			else {
				AutomaticSize = Enum.AutomaticSize.XY,
				Layout = fillDirection,
				LayoutOrder = props.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,

				[Roact.Ref] = props.ForwardRef,
				[Roact.Change.AbsoluteSize] = props.OnAbsoluteSizeChanged,
			},
		tabs
	)
end

Tabs = withContext({
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(Tabs)

return withForwardRef(Tabs)
