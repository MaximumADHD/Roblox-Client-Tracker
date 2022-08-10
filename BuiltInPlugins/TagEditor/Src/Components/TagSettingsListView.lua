--[[
	The list of all tags in the top pane of the tag editor
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types) -- uncomment to use types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Checkbox = UI.Checkbox
local DropdownMenu = UI.DropdownMenu
local IconButton = UI.IconButton
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame

local TagSettingRow = require(script.Parent.TagSettingRow)

local ColorSystem = Framework.Style.ColorSystem

export type Props = {
	LayoutOrder: number,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

-- If the component has a specific style associated with it in makeTheme, define those values here
type _Style = {
	Size: UDim2,
	IconControlSize: UDim2,
	CheckboxControlSize: UDim2,
	DropdownControlSize: UDim2,
}

local TagSettingsListView = Roact.PureComponent:extend("TagSettingsListView")

function TagSettingsListView:init()
	self.OnVisualizeDropdownClicked = function()
		self:setState({
			VisualizeAsDropdownHidden = false
		})
	end

	self.OnVisualizeDropdownItemCloseMenu = function()
		self:setState(function(state)
			return {
				VisualizeAsDropdownHidden = true
			}
		end)
	end

	self.OnVisualizeDropdownItemActivated = function(item, index)
		self.OnVisualizeDropdownItemCloseMenu()
		self:setState({
			VisualizeAsCurrentSelectedItem = item,
		})
	end

	self.OnButtonClicked = function()
		print("Click!")
	end

	self:setState({
		VisualizeAsDropdownHidden = true,
		VisualizeAsCurrentSelectedItem = "Box",
	})
end

function TagSettingsListView:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TagSettingsListView

	return Roact.createElement(ScrollingFrame, {
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		Size = style.Size,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Vertical,
		Padding = 9,
	}, {
		ColorRow = Roact.createElement(TagSettingRow , {
			LayoutOrder = 1,
			Text = "Color",
			ControlSize = style.IconControlSize,
			Control = Roact.createElement(IconButton, {
				RightIcon = "rbxasset://textures/ui/InGameMenu/WhiteSquare.png",
				IconColor = ColorSystem.Red[20],
				OnClick = self.OnButtonClicked,
			}),
		}),
		IconRow= Roact.createElement(TagSettingRow, {
			LayoutOrder = 2,
			Text = "Icon",
			ControlSize = style.IconControlSize,
			Control = Roact.createElement(IconButton, {
				RightIcon = "rbxasset://textures/TerrainTools/button_arrow_down.png",
				IconColor = ColorSystem.Blue[20],
				OnClick = self.OnButtonClicked,
			}),
		}),
		AlwaysOnTopRow= Roact.createElement(TagSettingRow, {
			ControlSize = style.CheckboxControlSize,
			LayoutOrder = 3,
			Text = "Always on top",
			Control = Roact.createElement(Checkbox, {
				OnClick = self.OnButtonClicked,
			}),
		}),
		VisualizeAsRow= Roact.createElement(TagSettingRow, {
			ControlSize = style.DropdownControlSize,
			LayoutOrder = 4,
			Text = "Visualize as",
			Control = Roact.createElement(Pane, {
				Size = style.DropdownControlSize,
				Style = "BorderBox",
			}, {
				Button = Roact.createElement(IconButton, {
					Text = self.state.VisualizeAsCurrentSelectedItem,
					RightIcon = "rbxasset://textures/TerrainTools/button_arrow_down.png",
					IconColor = ColorSystem.Green[20],
					OnClick = self.OnVisualizeDropdownClicked,
					Size = style.DropdownControlSize,
				}),
				DropdownMenu = Roact.createElement(DropdownMenu, {
					Hide = self.state.VisualizeAsDropdownHidden,
					OnItemActivated = self.OnVisualizeDropdownItemActivated,
					OnFocusLost = self.OnVisualizeDropdownItemCloseMenu,
					PlaceholderText = "Box",
					Items = {
						"Box",
						"Sphere",
						"Outline",
						"Text",
						"Icon",
					},
				}),
			}),
		}),
		TaggedInstancesRow= Roact.createElement(TagSettingRow, {
			ControlSize = style.CheckboxControlSize,
			LayoutOrder = 5,
			Text = "Tagged Instances",
			Control = Roact.createElement(Checkbox, {
				OnClick = self.OnButtonClicked,
			}),
		}),
	})
end

TagSettingsListView = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagSettingsListView)

return TagSettingsListView
