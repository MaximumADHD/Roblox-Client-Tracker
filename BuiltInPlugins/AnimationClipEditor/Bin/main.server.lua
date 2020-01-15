local Plugin = script.Parent.Parent
local Roact = require(Plugin.Roact)
local AnimationClipEditorPlugin = require(Plugin.Src.Components.AnimationClipEditorPlugin)

local isEnableRoactAnimationEditorOn = settings():GetFFlag("EnableRoactAnimationEditor2")

if not isEnableRoactAnimationEditorOn then
	return
end


local handle = nil

local function init()
	local mainPlugin = Roact.createElement(AnimationClipEditorPlugin, {
		plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)
end

plugin.Unloading:Connect(function()
	if handle then
		Roact.unmount(handle)
	end
end)

init()