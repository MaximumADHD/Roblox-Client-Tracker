--[[
	The top-level component of the AnimationClip Editor itself.
	Contained within an AnimationClipEditorPlugin.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local EditorController = require(Plugin.Src.Components.EditorController)

local AnimationClipEditor = Roact.PureComponent:extend("AnimationClipEditor")

function AnimationClipEditor:render()
	return withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
		}, {
			EditorController = Roact.createElement(EditorController, {
				Size = UDim2.new(1, 0, 1, 0),
			}),
		})
	end)
end

return AnimationClipEditor

