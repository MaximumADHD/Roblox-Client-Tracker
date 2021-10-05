--[[
	Mounts and unmounts the Roact tree.
]]

local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local Roact = require(Plugin.Packages.Roact)

-- Fast flags
require(script.Parent.defineLuaFlags)

local MainPlugin = require(Plugin.Src.MainPlugin)
local handle

local function init()
	plugin.Name = "LocalizationTools"

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)
end

plugin.Unloading:Connect(function()
	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

init()
