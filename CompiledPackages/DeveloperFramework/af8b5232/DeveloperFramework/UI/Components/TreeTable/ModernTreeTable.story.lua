local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)
local join = Dash.join
local React = require(Framework.Util.React)
local TreeTable = require(Framework.UI.Components.TreeTable)

local Items = {
	{
		name = "Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap",
		value = {
			Value = "Very long value that should wrap Very long value that should wrap Very long value that should wrap Very long value that should wrap Very long value that should wrap",
			LeftIcon = {
				Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
				Size = UDim2.new(0, 14, 0, 14),
			},
		},
		children = {
			{
				name = "Ocean",
				value = 53,
				children = {
					{
						name = "Billy The Fish",
						value = 12,
					},
				},
			},
		},
	},
	{
		name = "ReplicatedStorage",
		value = 18,
		children = {
			{
				name = "WeatherSystem",
				value = {
					Value = 193,
					LeftIcon = {
						Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
						Size = UDim2.new(0, 14, 0, 14),
					},
				},
			},
			{
				name = "CloudSystem",
				value = 9001,
				children = {
					{
						name = "Cheeky Cumulus",
						value = {
							Value = 200,
							LeftIcon = {
								Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
								Size = UDim2.new(0, 14, 0, 14),
							},
						},
					},
				},
			},
		},
	},
	{
		name = "ServerStorage",
		value = 30,
		children = {
			{
				name = "Secret Base",
				value = 212,
				children = {
					{
						name = "Obsidian Door",
						value = 120,
					},
				},
			},
		},
	},
}

function ModernTreeTableBaseStory(props)
	local selection, setSelection = React.useState({})
	local expansion, setExpansion = React.useState({})

	return React.createElement(TreeTable, {
		Size = UDim2.new(1, 0, 0, 240),
		Columns = {
			{
				Name = "Name",
				Key = "name",
			},
			{
				Name = "Value",
				Key = "value",
			},
		},
		OnExpansionChange = function(newExpansion)
			setExpansion(function(oldValue)
				return join(oldValue, newExpansion)
			end)
		end,
		OnSelectionChange = setSelection,
		Expansion = expansion,
		Selection = selection,
		RootItems = Items,
		GetChildren = function(item)
			return item.children or {}
		end,
		Scroll = false,
		Variant = "modern",
		DisableHover = props.controls.DisableHover,
	})
end

return {
	controls = {
		DisableHover = false,
	},
	stories = {
		{
			name = "Base",
			story = ModernTreeTableBaseStory,
		},
	},
}
