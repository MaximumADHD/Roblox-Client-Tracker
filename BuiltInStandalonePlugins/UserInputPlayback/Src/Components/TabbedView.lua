--[[
	A view which has a tab bar on top. The tab selection controls the view's content.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Tabs = UI.Tabs

local TabbedView = Roact.PureComponent:extend("TabbedView")

function TabbedView:init()
	local props = self.props
	assert(props.Tabs)
	assert(#props.Tabs >= 1)

	self.state = {
		selectedTab = props.InitialTab or props.Tabs[1],
	}

	-- FIXME STUDIOPLAT-28652: Export the types of tab directly in the init file
	self.onTabSelected = function(tab)
		self:setState({
			selectedTab = tab,
		})
	end
end

function TabbedView:render()
	local props = self.props
	local state = self.state
	local style = props.Stylizer

	return Roact.createElement(UI.Pane, {
		Size = UDim2.new(1, 0, 1, 0),
		Layout = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		TabBar = Roact.createElement(UI.Pane, {
			Style = "Box",
			BackgroundColor = style.TabBarBackgroundColor,
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			Tabs = Roact.createElement(Tabs, {
				Tabs = props.Tabs,
				SelectedTab = state.selectedTab,
				OnTabSelected = self.onTabSelected,
			}),
		}),

		TabContent = Roact.createElement(UI.Pane, {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = style.ForegroundTabColor,
		}, {
			TabView = Roact.createElement(state.selectedTab.ContentComponent),
		}),
	})
end

TabbedView = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(TabbedView)

return TabbedView
