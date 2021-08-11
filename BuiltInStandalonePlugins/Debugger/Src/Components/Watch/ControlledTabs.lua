local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Tabs = UI.Tabs
local TabsTypes = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.UI.Tabs.types)

local ControlledTabs = Roact.PureComponent:extend("Tabs")

-- ControlledTabs
function ControlledTabs:init()
	local props = self.props
	local initTab = props.Tabs and props.Tabs[1]
	
	self.state = {
		selectedTab = initTab or {},
	}

	self.onTabSelected = function(tab: TabsTypes.Tab)
		self:setState({
			selectedTab = tab,
		})
	end
end

function ControlledTabs:render()
	local props = self.props
	local state = self.state
	return Roact.createElement(Tabs, {
		Tabs = props.Tabs,
		SelectedTab = state.selectedTab,
		OnTabSelected = self.onTabSelected,
		LayoutOrder = props.LayoutOrder,
	})
end

-- RoactRodux Connection
ControlledTabs = RoactRodux.connect(
	function(state, props)
		return {}
	end,

	function(dispatch)
		return {}
	end
)(ControlledTabs)

return ControlledTabs
