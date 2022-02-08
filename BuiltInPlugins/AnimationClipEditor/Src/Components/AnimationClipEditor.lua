--[[
	The top-level component of the AnimationClip Editor itself.
	Contained within an AnimationClipEditorPlugin.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local EditorController = require(Plugin.Src.Components.EditorController)

local AnimationClipEditor = Roact.PureComponent:extend("AnimationClipEditor")


function AnimationClipEditor:render()
	local theme = THEME_REFACTOR and self.props.Stylizer.PluginTheme or self.props.Theme:get("PluginTheme")
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
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Analytics = ContextServices.Analytics,
})(AnimationClipEditor)




return AnimationClipEditor
