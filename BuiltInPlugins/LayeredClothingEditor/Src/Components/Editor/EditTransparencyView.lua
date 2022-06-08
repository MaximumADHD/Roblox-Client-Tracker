--[[
	Frame for editing transparency of mesh and cages of editing item

	Props:
		table Localization: A Localization ContextItem, which is provided via withContext.
		callback ChangeCageTransparency: function to change cage transparency, which is provided via mapDispatchToProps
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
		EnumItem EditingCage: type of cage being edited (inner/outer)
		table CagesTransparency: cages transparency, which is provided via store
		number LayoutOrder: render order of component in layout
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local Components = AvatarToolsShared.Components
local TransparencySlider = Components.TransparencySlider

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local TransparencyUtil = AccessoryAndBodyToolSharedUtil.TransparencyUtil
local ItemCharacteristics = AccessoryAndBodyToolSharedUtil.ItemCharacteristics

local ChangeCageTransparency = require(Plugin.Src.Thunks.ChangeCageTransparency)

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane

local Constants = require(Plugin.Src.Util.Constants)

local EditTransparencyView = Roact.PureComponent:extend("EditTransparencyView")
local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

function EditTransparencyView:init()
	self.setValue = function(cageType, value)
		local context = self.props.LuaMeshEditingModuleContext
		if context then
			context:setTransparency(TransparencyUtil.transparencyFromLCEditorToProperty(value))
			self.props.ChangeCageTransparency(cageType, value)
		end
	end
end

function EditTransparencyView:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local editingItem = props.EditingItemContext:getItem()
	local editingCage = props.EditingCage

	local outerCage = ItemCharacteristics.getOuterCage(editingItem)
	local innerCage = ItemCharacteristics.getInnerCage(editingItem)

	local theme = props.Stylizer
	local localization = props.Localization
	local orderIterator = LayoutOrderIterator.new()

	local transparencySliderHeight = theme.SliderHeight
	local transparencyViewHeight = transparencySliderHeight * 2

	return Roact.createElement(Pane, {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, transparencyViewHeight),
		BackgroundColor3 = theme.BackgroundColor,
		Layout = Enum.FillDirection.Vertical,
	}, {
		Mesh = Roact.createElement(TransparencySlider, {
			Title = localization:getText("Transparency", "Mesh"),
			Value = TransparencyUtil.getTransparency(editingItem),
			Size = UDim2.new(1, -theme.MainPadding, 0, theme.SliderHeight),
			LayoutOrder = orderIterator:getNextOrder(),
			Item = editingItem,
			IsDisabled = not editingItem,
		}),
		OuterCage = editingCage == Enum.CageType.Outer and Roact.createElement(TransparencySlider, {
			Title = localization:getText("Transparency", "OuterCage"),
			Value = Constants.DEFAULT_CAGE_TRANSPARENCY,
			Size = UDim2.new(1, -theme.MainPadding, 0, theme.SliderHeight),
			LayoutOrder = orderIterator:getNextOrder(),
			IsDisabled = not outerCage,
			SetValue = function(value)
				self.setValue(Enum.CageType.Outer, value)
			end,
		}),
		InnerCage = editingCage == Enum.CageType.Inner and Roact.createElement(TransparencySlider, {
			Title = localization:getText("Transparency", "InnerCage"),
			Value = Constants.DEFAULT_CAGE_TRANSPARENCY,
			Size = UDim2.new(1, -theme.MainPadding, 0, theme.SliderHeight),
			LayoutOrder = orderIterator:getNextOrder(),
			IsDisabled = not innerCage,
			SetValue = function(value)
				self.setValue(Enum.CageType.Inner, value)
			end,
		}),
	})
end


EditTransparencyView = withContext({
	Localization = ContextServices.Localization,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	Stylizer = ContextServices.Stylizer,
	EditingItemContext = EditingItemContext,
})(EditTransparencyView)



local function mapStateToProps(state, props)
	local selectItem = state.selectItem
	return {
		EditingCage = selectItem.editingCage,
		CagesTransparency = selectItem.cagesTransparency,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		ChangeCageTransparency = function(cage, value)
			dispatch(ChangeCageTransparency(cage, value))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditTransparencyView)