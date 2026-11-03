local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Cryo = require(Framework.Parent.Cryo)

local SegmentedButton = require(Framework.UI.Components.SegmentedButton)

local StyleModifier = require(Framework.Util.StyleModifier)

local SegmentedButtonExample = Roact.PureComponent:extend("SegmentedButtonExample")

function SegmentedButtonExample:init()
	self.state = {
		currentId = nil,
		currentIndex = nil,
	}

	self.selectItem = function(item)
		if typeof(item) == "number" then
			self:setState({
				currentIndex = item,
			})
		else
			self:setState({
				currentId = item.Id,
			})
		end
	end
end

function SegmentedButtonExample:render()
	return Roact.createElement(
		SegmentedButton,
		Cryo.Dictionary.join({
			SelectedId = self.state.currentId,
			SelectedIndex = self.state.currentIndex,
			Items = {
				"Left",
				"Center",
				"Right",
			},
			OnItemActivated = self.selectItem,
			Size = UDim2.fromOffset(160, 32),
		}, self.props)
	)
end

return {
	stories = {
		{
			name = "Default",
			story = function()
				return Roact.createElement(SegmentedButtonExample)
			end,
		},

		{
			name = "Two Items",
			story = function()
				return Roact.createElement(SegmentedButtonExample, {
					Items = {
						"Left",
						"Right",
					},
				})
			end,
		},

		{
			name = "Icon Items",
			story = function()
				return Roact.createElement(SegmentedButtonExample, {
					Items = {
						{
							Icon = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png",
							Id = "Inventory",
							Label = "Inventory",
						},
						{
							Icon = "rbxasset://textures/StudioToolbox/Tabs/Shop.png",
							Id = "Shop",
							Label = "Shop",
						},
						{
							Icon = "rbxasset://textures/StudioToolbox/Tabs/Recent.png",
							Id = "Recent",
							Label = "Recent",
						},
					},
					Size = UDim2.fromOffset(300, 32),
				})
			end,
		},

		{
			name = "Icon Items",
			story = function()
				return Roact.createElement(SegmentedButtonExample, {
					Items = {
						{
							Icon = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png",
							Id = "Inventory",
						},
						{
							Icon = "rbxasset://textures/StudioToolbox/Tabs/Shop.png",
							Id = "Shop",
						},
						{
							Icon = "rbxasset://textures/StudioToolbox/Tabs/Recent.png",
							Id = "Recent",
						},
					},
				})
			end,
		},

		{
			name = "Disabled",
			story = function()
				return Roact.createElement(SegmentedButtonExample, {
					StyleModifier = StyleModifier.Disabled,
				})
			end,
		},
	},
}
