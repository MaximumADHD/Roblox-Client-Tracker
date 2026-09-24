local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local showContextMenu = require(Framework.UI.Components.showContextMenu)
local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local ButtonContextMenuExample = Roact.PureComponent:extend("ButtonContextMenuExample")

function ButtonContextMenuExample:init()
	self.onClickedAction = function(action)
		print("Clicked action id", action.Id)
	end

	self.onButtonClicked = function()
		local props = self.props
		local plugin = props.Plugin:get()

		local contextMenuItems = {
			{
				Id = "Id1",
				Text = "Action 1",
				OnItemClicked = self.onClickedAction,
			},
			{
				Id = "Id2",
				Text = "Action 2",
				Checked = true,
				OnItemClicked = self.onClickedAction,
			},
			{
				Id = "Id3",
				Text = "Action 3 - Disabled",
				Enabled = false,
				OnItemClicked = self.onClickedAction,
			},
			{
				Id = "Id4",
				Text = "Action 4 - icon",
				Icon = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
				OnItemClicked = self.onClickedAction,
			},
			{
				Text = "Action 5 - Auto generated id",
				OnItemClicked = self.onClickedAction,
			},
		}

		showContextMenu(plugin, contextMenuItems)
	end
end

function ButtonContextMenuExample:render()
	return Roact.createElement(Button, {
		Style = "Round",
		Text = "Click Me!",
		Size = UDim2.fromOffset(120, 32),
		OnClick = self.onButtonClicked,
	})
end

ButtonContextMenuExample = withContext({
	Plugin = ContextServices.Plugin,
})(ButtonContextMenuExample)

local PaneContextSubMenuExample = Roact.PureComponent:extend("PaneContextSubMenuExample")

function PaneContextSubMenuExample:init()
	self.onClickedAction = function(action)
		print("Clicked action: ", action.Text)
	end

	self.onRightClick = function()
		local props = self.props
		local plugin = props.Plugin:get()

		local contextMenuItems = {
			{
				Text = "Copy",
				Icon = "rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png",
				OnItemClicked = self.onClickedAction,
			},
			{
				ShowSeparator = true,
			},
			{
				Text = "Formatting Options",
				{
					Text = "Cut",
					Icon = "rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png",
					OnItemClicked = self.onClickedAction,
				},
				{
					Text = "Paste",
					OnItemClicked = self.onClickedAction,
				},
			},
		}

		showContextMenu(plugin, contextMenuItems)
	end
end

function PaneContextSubMenuExample:render()
	return Roact.createElement(Pane, {
		Style = "BorderBox",
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Horizontal,
		Spacing = UDim.new(0, 10),
		Padding = 5,
		OnRightClick = self.onRightClick,
	}, {
		Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 1,
			Text = "Right-click here to open context menu",
		}),
	})
end

PaneContextSubMenuExample = withContext({
	Plugin = ContextServices.Plugin,
})(PaneContextSubMenuExample)

local OrderedContextMenuExample = Roact.PureComponent:extend("OrderedContextMenuExample")

function OrderedContextMenuExample:init()
	self.onClickedAction = function(action)
		print("Clicked action: ", action.Text)
	end

	self.onButtonClicked = function()
		local props = self.props
		local plugin = props.Plugin:get()

		local contextMenuItems = {}
		contextMenuItems["idB"] = { Text = "B", OnItemClicked = self.onClickedAction }
		contextMenuItems["idD"] = { Text = "D", OnItemClicked = self.onClickedAction }
		contextMenuItems["idA"] = { Text = "A", OnItemClicked = self.onClickedAction }
		contextMenuItems["idC"] = { Text = "C", OnItemClicked = self.onClickedAction }
		contextMenuItems["idI"] = { Text = "I", OnItemClicked = self.onClickedAction }

		local order = { "idA", "idB", "idC", "idD", "idI" }

		contextMenuItems["idD"].Enabled = false

		showContextMenu(plugin, contextMenuItems, order)
	end
end

function OrderedContextMenuExample:render()
	return Roact.createElement(Button, {
		Style = "Round",
		Text = "Click Me!",
		Size = UDim2.fromOffset(120, 32),
		OnClick = self.onButtonClicked,
	})
end

OrderedContextMenuExample = withContext({
	Plugin = ContextServices.Plugin,
})(OrderedContextMenuExample)

return {
	stories = {
		{
			name = "Button with Context Menu",
			story = ButtonContextMenuExample,
		},
		{
			name = "Context Menu with sub-menus",
			story = PaneContextSubMenuExample,
		},
		{
			name = "Menu with a specific order",
			story = OrderedContextMenuExample,
		},
	},
}
