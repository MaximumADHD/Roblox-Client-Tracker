local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Tabs = UI.Tabs

local Models = Plugin.Src.Models
local TableTab = require(Models.Watch.TableTab)

local Actions = Plugin.Src.Actions
local SetTab = require(Actions.Watch.SetTab)

local ControlledTabs = Roact.PureComponent:extend("Tabs")

function ControlledTabs:render()
	local props = self.props
	return Roact.createElement(Tabs, {
		Tabs = props.Tabs,
		SelectedTab = props.selectedTab,
		OnTabSelected = props.onTabSelected,
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,
		AutomaticSize = Enum.AutomaticSize.X,
	})
end

ControlledTabs = RoactRodux.connect(function(state, props)
	local selectedTabString = state.Watch.currentTab
	local selectedTab = selectedTabString == TableTab.Variables and props.Tabs[1] or props.Tabs[2]
	return {
		selectedTab = selectedTab,
	}
end, function(dispatch)
	return {
		onTabSelected = function(tab)
			local tabString = tab.Key
			return dispatch(SetTab(tabString))
		end,
	}
end)(ControlledTabs)

return ControlledTabs
