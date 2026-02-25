local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local TabsTypes = require(Framework.UI.Components.Tabs.types)
local Tabs = require(Framework.UI.Components.Tabs)

local ControlledTabs = Roact.PureComponent:extend("Tabs")

function ControlledTabs:init()
	self.state = {
		selectedTab = self.props.Tabs[1],
	}
	self.onTabSelected = function(tab: TabsTypes.Tab)
		print("Selected tab", tab)
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
	})
end

return {
	stories = {
		{
			name = "Labels",
			story = Roact.createElement(ControlledTabs, {
				Tabs = {
					{
						Label = "Left",
					},
					{
						Label = "Middle",
					},
					{
						Label = "Right",
					},
				},
			}),
		},
		{
			name = "Icons & tooltips",
			story = Roact.createElement(ControlledTabs, {
				Tabs = {
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png",
						Tooltip = "Inventory",
					},
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Shop.png",
						Tooltip = "Shop",
					},
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Recent.png",
						Tooltip = "Recent",
					},
				},
			}),
		},
		{
			name = "Labels & icons",
			story = Roact.createElement(ControlledTabs, {
				Tabs = {
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png",
						Label = "Inventory",
					},
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Shop.png",
						Label = "Shop",
					},
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Recent.png",
						Label = "Recent",
					},
				},
			}),
		},
		{
			name = "Disabled tab",
			story = Roact.createElement(ControlledTabs, {
				Tabs = {
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png",
						Label = "Inventory",
					},
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Shop.png",
						Label = "Shop",
						Disabled = true,
					},
					{
						Icon = "rbxasset://textures/StudioToolbox/Tabs/Recent.png",
						Label = "Recent",
					},
				},
			}),
		},
	},
}
