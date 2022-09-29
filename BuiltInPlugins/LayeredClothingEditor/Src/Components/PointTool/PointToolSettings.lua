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

local PointToolSettings = Roact.PureComponent:extend("PointToolSettings")

function PointToolSettings:init()
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

function PointToolSettings:didMount()
	local context = self.props.LuaMeshEditingModuleContext
	local tool = context:getCurrentTool()
	if tool then
		self:setState({
			falloff = tool:getFalloff()
		})
	end
end

function PointToolSettings:render()
	local props = self.props
	local state = self.state

	local falloff = state.falloff
	local size = props.Size
	local layoutOrder = props.LayoutOrder

	local localization = props.Localization

	local theme = props.Stylizer

	return Roact.createElement(Pane, {
		LayoutOrder = layoutOrder,
		Size = size,
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Padding = {
			Top = theme.MainPadding,
			Left = theme.MainPadding,
			Right = theme.MainPadding,
		}
	}, {
		FalloffSetting = Roact.createElement(SliderSetting, {
			Title = localization:getText("ToolSettings", "FalloffDistance"),
			Value = falloff,
			MaxValue = Constants.MAX_FALLOFF,
			SnapIncrement = 0.1,
			Size = UDim2.new(1, 0, 0, theme.SliderHeight),
			UsePercentage = false,
			LayoutOrder = 1,
			SetValue = self.setFalloff,
			IsDisabled = false,
		}),
	})
end


PointToolSettings = withContext({
	Localization = ContextServices.Localization,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	Stylizer = ContextServices.Stylizer,
})(PointToolSettings)

return PointToolSettings