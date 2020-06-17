local Plugin = script.Parent.Parent
local Roact = require(Plugin.Roact)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local AnimationClipEditorPlugin = require(Plugin.Src.Components.AnimationClipEditorPlugin)

if DebugFlags.RunTests() or DebugFlags.RunRhodiumTests() then
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