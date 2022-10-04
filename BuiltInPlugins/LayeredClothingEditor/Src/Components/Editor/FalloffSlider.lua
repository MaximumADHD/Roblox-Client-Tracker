--[[
	Frame for any settings related to Point Tool

	Props:
		UDim2 Size = size of the frame
		number LayoutOrder = render order of component in layout
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local Components = AvatarToolsShared.Components
local SliderSetting = Components.SliderSetting

local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane

local FalloffSlider = Roact.PureComponent:extend("FalloffSlider")

function FalloffSlider:init()
	self.state = {
		falloff = Constants.DEFAULT_FALLOFF,
	}

	self.setFalloff = function(newFalloff)
		local context = self.props.LuaMeshEditingModuleContext
		local tool = context:getCurrentTool()
		if not tool then
			return
		end
		tool:setFalloff(newFalloff)
		self:setState({
			falloff = newFalloff,
		})
	end
end

function FalloffSlider:didMount()
	local context = self.props.LuaMeshEditingModuleContext
	local tool = context:getCurrentTool()
	if tool then
		self:setState({
			falloff = tool:getFalloff()
		})
	end
end

function FalloffSlider:render()
	local props = self.props
	local state = self.state

	local falloff = state.falloff
	local size = props.Size
	local layoutOrder = props.LayoutOrder

	local localization = props.Localization

	local theme = props.Stylizer

	return Roact.createElement(SliderSetting, {
		Title = localization:getText("ToolSettings", "FalloffDistance"),
		Value = falloff,
		MaxValue = Constants.MAX_FALLOFF,
		SnapIncrement = 0.1,
		Height = theme.SliderHeight,
		UsePercentage = false,
		LayoutOrder = layoutOrder,
		SetValue = self.setFalloff,
		IsDisabled = false,
	})
end


FalloffSlider = withContext({
	Localization = ContextServices.Localization,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	Stylizer = ContextServices.Stylizer,
})(FalloffSlider)

return FalloffSlider
