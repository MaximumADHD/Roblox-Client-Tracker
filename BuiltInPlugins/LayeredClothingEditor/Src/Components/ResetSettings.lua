--[[
	Frame for any settings related to Reset Tab.

	Required Props:
		UDim2 Size: size of the frame
	Optional Props:
		table Localization: A Localization ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number LayoutOrder: render order of component in layout
		callback ResetPoints: Resets RbfPoint data to default, provided via mapDispatchToProps.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local UI = Framework.UI
local Button = UI.Button
local StringUtil = require(Plugin.Src.Util.StringUtil)

local Util = Framework.Util
local Typecheck = Util.Typecheck

local ResetSettings = Roact.PureComponent:extend("ResetSettings")
Typecheck.wrap(ResetSettings, script)

function ResetSettings:init()
	self.resetPoints = function()
		local context = self.props.LuaMeshEditingModuleContext
		if context then
			context:resetTools()
		end
	end
end

function ResetSettings:render()
	local props = self.props

	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local editingCage = props.EditingCage
	local localization = props.Localization
	local theme = props.Stylizer

	local text = ""
	if editingCage == Enum.CageType.Inner then
		text = localization:getText("Reset", "InnerCage")
	elseif editingCage == Enum.CageType.Outer then
		text = localization:getText("Reset", "OuterCage")
	end

	local textWidth = StringUtil.getTextWidth(text, theme.TextSize, theme.Font)

	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = size,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		Button = Roact.createElement(Button, {
			Size = UDim2.new(0, textWidth + theme.MainPadding, 0, theme.ButtonHeight),
			Text = text,
			Style = "Round",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			OnClick = self.resetPoints,
		}),
	})
end

ResetSettings = withContext({
	Localization = ContextServices.Localization,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	Stylizer = ContextServices.Stylizer,
})(ResetSettings)

local function mapStateToProps(state, props)
	local selectItem = state.selectItem
	return {
		EditingCage = selectItem.editingCage,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(ResetSettings)
