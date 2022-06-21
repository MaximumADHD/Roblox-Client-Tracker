--[[
	The top-level component of the AnimationClip Editor itself.
	Contained within an AnimationClipEditorPlugin.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)


local EditorController = require(Plugin.Src.Components.EditorController)

local AnimationClipEditor = Roact.PureComponent:extend("AnimationClipEditor")

function AnimationClipEditor:render()
	local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 =theme.backgroundColor,
	}, {
		EditorController = Roact.createElement(EditorController, {
			Size = UDim2.new(1, 0, 1, 0),
		}),
	})
end

AnimationClipEditor = withContext({
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
	Analytics = ContextServices.Analytics,
})(AnimationClipEditor)

return AnimationClipEditor