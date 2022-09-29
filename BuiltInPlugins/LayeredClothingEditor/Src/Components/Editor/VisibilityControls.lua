--[[
	Workspace viewport controls related to cage/mesh transparency.

	Props:
		string ToolMode: Determines what tool (Point, Lattice, etc) the plugin is using. Comes from mapStateToProps
		table Localization: A Localization ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local DropdownMenuButton = AvatarToolsShared.Components.DropdownMenuButton

local EditTransparencyView = require(Plugin.Src.Components.Editor.EditTransparencyView)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local StyleModifier = Framework.Util.StyleModifier

local UI = Framework.UI
local Pane = UI.Pane
local Button = UI.Button
local IconButton = UI.IconButton
local Image = UI.Decoration.Image

local Constants = require(Plugin.Src.Util.Constants)

local VisibilityControls = Roact.PureComponent:extend("VisibilityControls")
local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

function VisibilityControls:init()
	self.state = {
		isCageSlider = false,
	}

	self.isCageEditingActive = function()
		return self.props.ToolMode == Constants.TOOL_MODE.Point
	end

	self.getMenuIcons = function()
		local props = self.props
		local style = props.Stylizer

		local options = {}
		table.insert(options, style.MeshPartVisibilityIcon)
		if self.isCageEditingActive() then
			table.insert(options, style.CageVisibilityIcon)
		end

		return options
	end

	self.onMenuOptionClicked = function(value, index)
		local props = self.props
		local state = self.state
		local style = props.Stylizer

		local icons = state.icons

		self:setState({
			isCageSlider = icons[index] == style.CageVisibilityIcon
		})
	end
end

function VisibilityControls:didMount(prevProps)
	self:setState({
		icons = self:getMenuIcons()
	})
end

function VisibilityControls:didUpdate(prevProps)
	if prevProps.ToolMode ~= self.props.ToolMode then
		self:setState({
			icons = self:getMenuIcons(),
			isCageSlider = if self.isCageEditingActive() then self.state.isCageSlider else false,
		})
	end
end

function VisibilityControls:render()
	local props = self.props
	local state = self.state

	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local style = props.Stylizer
	local padding = style.Padding
	local buttonSize = style.ButtonSize

	local icons = state.icons

	local frameHeight = 2 * padding + buttonSize

	local orderIterator = LayoutOrderIterator.new()
	return Roact.createElement(Pane, {
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, -128, 0, 0),
		Size = UDim2.new(0, 0, 0, frameHeight),
		AutomaticSize = Enum.AutomaticSize.X,
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		Spacing = padding,
		Padding = padding,
	}, {
		OptionsDropdownButton = Roact.createElement(DropdownMenuButton, {
			ButtonSize = buttonSize,
			Items = icons,
			IsIconList = true,
			OnItemActivated = self.onMenuOptionClicked,
			LayoutOrder = orderIterator:getNextOrder(),  
		}),

		EditTransparencyView = Roact.createElement(EditTransparencyView, {
			IsCageSlider = self.isCageEditingActive() and self.state.isCageSlider,
			LayoutOrder = orderIterator:getNextOrder(),
		}),

		FocusMannequinButton = Roact.createElement(Button, {
			Style = "Round",
			Size = UDim2.fromOffset(buttonSize, buttonSize),
			LayoutOrder = orderIterator:getNextOrder(),
			OnClick = function() end, -- TODO: AVBURST-9546
			Tooltip = localization:getText("Preview", "FocusCamera"),
		}, {
			Settings = Roact.createElement(Image, {
				Image = style.FocusMannequinIcon,
			}),
		})
	})
end

VisibilityControls = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(VisibilityControls)

local function mapStateToProps(state, props)
	local status = state.status
	return {
		ToolMode = status.toolMode,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(VisibilityControls)
