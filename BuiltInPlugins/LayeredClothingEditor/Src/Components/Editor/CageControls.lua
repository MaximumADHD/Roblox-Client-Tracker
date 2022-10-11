--[[
	Workspace viewport controls related to cage editing.

	Props:
		EnumItem EditingCage: Is the current cage being edited the Inner/Outer cage, or neither. Comes from mapStateToProps
		string ToolMode: Determines what tool (Point, Lattice, etc) the plugin is using. Comes from mapStateToProps
		callback SelectEditingCage: callback to set current cage. Comes from mapDispatchToProps
		callback SetToolMode: callback to change what tool is being used. Comes from mapDispatchToProps.
		table Signals: A Signals ContextItem, which is provided via withContext.
		table EditingItemContext: A EditingItemContext ContextItem, which is provided via withContext.
		table LuaMeshEditingModuleContext: A LuaMeshEditingModuleContext ContextItem, which is provided via withContext.
		table Localization: A Localization ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext
local SignalsContext = AvatarToolsShared.Contexts.Signals
local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext

local DropdownMenuButton = AvatarToolsShared.Components.DropdownMenuButton

local AvatarUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared.AvatarUtil

local SelectEditingCage = require(Plugin.Src.Thunks.SelectEditingCage)
local SetToolMode = require(Plugin.Src.Actions.SetToolMode)

local FalloffSlider = require(Plugin.Src.Components.Editor.FalloffSlider)

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

local CageControls = Roact.PureComponent:extend("CageControls")
local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

function CageControls:init()
	self.getMenuOptions = function()
		local props = self.props
		local localization = props.Localization
		local editingCage = props.EditingCage

		local options = {}
		table.insert(options, localization:getText("Editor", "BringMannequinToView"))

		if self.isCageEditingActive() then
			if editingCage == Enum.CageType.Outer then
				table.insert(options, localization:getText("Reset", "OuterCage"))
			elseif editingCage == Enum.CageType.Inner then
				table.insert(options, localization:getText("Reset", "InnerCage"))
			end
		end

		return options
	end

	self.onMenuOptionClicked = function(value, index)
		self.menuOptionFunctions[index]()
	end

	self.bringMannequinToView = function() 
		local props = self.props
		local editingItem = props.EditingItemContext:getItem()
		local luaMeshEditingModuleContext = props.LuaMeshEditingModuleContext
		if editingItem and editingItem.Parent then
			AvatarUtil:bringAvatarToView(editingItem.Parent, function()
				luaMeshEditingModuleContext:initContextsFromItem(editingItem)
			end)
		end
	end

	self.resetPoints = function()
		local context = self.props.LuaMeshEditingModuleContext
		if context then
			context:resetTools()
		end
	end

	self.menuOptionFunctions = {
		self.bringMannequinToView,
		self.resetPoints,
	}

	self.cageEditingButtonClicked = function()
		if self.props.ToolMode == Constants.TOOL_MODE.Point then
			self.props.SetToolMode(Constants.TOOL_MODE.None)
		else
			self.props.SetToolMode(Constants.TOOL_MODE.Point)
		end
	end

	self.outerCageButtonClicked = function()
		if self.props.EditingCage ~= Enum.CageType.Outer then
			self.props.SelectEditingCage(Enum.CageType.Outer)
			self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged):Fire()
		end
	end

	self.innerCageButtonClicked = function()
		if self.props.EditingCage ~= Enum.CageType.Inner then
			self.props.SelectEditingCage(Enum.CageType.Inner)
			self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged):Fire()
		end
	end

	self.isCageEditingActive = function()
		return self.props.ToolMode == Constants.TOOL_MODE.Point
	end

	self.getOuterCageButtonModifier = function()
		if self.isCageEditingActive() then
			if self.props.EditingCage == Enum.CageType.Outer then
				return StyleModifier.Pressed
			end
		else
			return StyleModifier.Disabled
		end
	end

	self.getInnerCageButtonModifier = function()
		if self.isCageEditingActive() then
			if self.props.EditingCage == Enum.CageType.Inner then
				return StyleModifier.Pressed
			end
		else
			return StyleModifier.Disabled
		end
	end
end

function CageControls:renderButton(modifier, order, icon, onClick, tooltip)
	local props = self.props

	local style = props.Stylizer
	local buttonSize = style.ButtonSize

	return Roact.createElement(Button, {
		Style = "Round",
		StyleModifier = modifier,
		Size = UDim2.fromOffset(buttonSize, buttonSize),
		LayoutOrder = order,
		OnClick = onClick,
		Tooltip = tooltip,
	}, {
		Settings = Roact.createElement(Image, {
			Image = icon,
		}),
	})
end

function CageControls:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local style = props.Stylizer
	local padding = style.Padding
	local buttonSize = style.ButtonSize

	local frameHeight = 2 * padding + buttonSize

	local active = self.isCageEditingActive()

	local orderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Pane, {
		Size = UDim2.new(0, 0, 0, frameHeight),
		AutomaticSize = Enum.AutomaticSize.X,
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Spacing = padding,
		Padding = padding,
	}, {
		CageEditingButton = self:renderButton(
			if active then StyleModifier.Pressed else nil,
			orderIterator:getNextOrder(),
			style.CageModeIcon,
			self.cageEditingButtonClicked,
			localization:getText("EditingMode", "Text")
		),

		OuterCageButton = active and self:renderButton(
			self.getOuterCageButtonModifier(),
			orderIterator:getNextOrder(),
			style.OuterCageIcon,
			self.outerCageButtonClicked,
			localization:getText("EditingMode", "OuterCage")
		),

		InnerCageButton = active and self:renderButton(
			self.getInnerCageButtonModifier(),
			orderIterator:getNextOrder(),
			style.InnerCageIcon,
			self.innerCageButtonClicked,
			localization:getText("EditingMode", "InnerCage")
		),

		FalloffSlider = active and Roact.createElement(FalloffSlider, {
			LayoutOrder = orderIterator:getNextOrder(),
		}),

		AutoSkinButton = self:renderButton(
			nil,
			orderIterator:getNextOrder(),
			style.AutoWeightIcon,
			function() end, -- TODO: AVBURST-10424
			localization:getText("EditingMode", "AutoWeight")
		),

		OptionsDropdownButton = Roact.createElement(DropdownMenuButton, {
			ButtonSize = buttonSize,
			Icon = style.OptionsIcon,
			Items = self.getMenuOptions(),
			OnItemActivated = self.onMenuOptionClicked,
			LayoutOrder = orderIterator:getNextOrder(),
		}),
	})
end

local function mapStateToProps(state, props)
	local selectItem = state.selectItem
	local status = state.status
	return {
		EditingCage = selectItem.editingCage,
		ToolMode = status.toolMode,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SelectEditingCage = function(cage)
			dispatch(SelectEditingCage(cage))
		end,
		SetToolMode = function(toolMode)
			dispatch(SetToolMode(toolMode))
		end,
	}
end

CageControls = withContext({
	Signals = SignalsContext,
	Localization = ContextServices.Localization,
	EditingItemContext = EditingItemContext,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	Stylizer = ContextServices.Stylizer,
})(CageControls)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CageControls)
