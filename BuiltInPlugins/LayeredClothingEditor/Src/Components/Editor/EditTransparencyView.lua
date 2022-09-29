--[[
	Frame for editing transparency of mesh and cages of editing item

	Props:
		table Localization: A Localization ContextItem, which is provided via withContext.
		callback ChangeCageTransparency: function to change cage transparency, which is provided via mapDispatchToProps
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
		EnumItem EditingCage: type of cage being edited (inner/outer)
		number LayoutOrder: render order of component in layout
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
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
	self.setValue = function(value)
		local context = self.props.LuaMeshEditingModuleContext
		if context then
			context:setTransparency(TransparencyUtil.transparencyFromLCEditorToProperty(value))
		end
	end
end

function EditTransparencyView:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local editingItem = props.EditingItemContext:getItem()
	local luaMeshEditingModuleContext = self.props.LuaMeshEditingModuleContext
	local isCageSlider = props.IsCageSlider
	local theme = props.Stylizer

	local value = 0
	if isCageSlider then
		if luaMeshEditingModuleContext then
			value = TransparencyUtil.transparencyFromPropertyToLCEditor(luaMeshEditingModuleContext:getTransparency())
		end 
	else
		value = TransparencyUtil.getTransparency(editingItem)
	end

	return Roact.createElement(TransparencySlider, {
		Value = value,
		Height = theme.SliderHeight,
		LayoutOrder = layoutOrder,
		Item = if not isCageSlider then editingItem else nil,
		SetValue = if isCageSlider then self.setValue else nil,
	})
end

EditTransparencyView = withContext({
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	Stylizer = ContextServices.Stylizer,
	EditingItemContext = EditingItemContext,
})(EditTransparencyView)

return EditTransparencyView
