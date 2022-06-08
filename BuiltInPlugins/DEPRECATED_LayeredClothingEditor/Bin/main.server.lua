--[[
	Layered Clothing Editor main script.
	Mounts and unmounts the Roact tree.
]]
require(script.Parent.defineLuaFlags)

if game:GetFastFlag("AccessoryToolRefactor2") then
	return
end

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local GetAccessoryToolEngineFeature = require(Plugin.Src.Flags.GetAccessoryToolEngineFeature)
if not GetAccessoryToolEngineFeature() then
	return
end

-- we have to do this before including the rest of the modules because they might access studio code
local isRunningTests = DebugFlags.RunTests() or DebugFlags.RunRhodiumTests()
Roact.setGlobalConfig({
	-- TODO: Re-enable once typecheck issues are resolved.
	--propValidation = isRunningTests,
})

if isRunningTests then
	return
end

local LayeredClothingEditorPlugin = require(Plugin.Src.Components.LayeredClothingEditorPlugin)

local handle = nil

local function init()
	local mainPlugin = Roact.createElement(LayeredClothingEditorPlugin, {
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
