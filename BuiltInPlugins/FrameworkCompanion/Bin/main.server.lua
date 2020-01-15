--[[
	DevFramework Companion main script.
	Mounts and unmounts the Roact tree.
]]

local FFlagDebugEnableDevFrameworkCompanion = game:DefineFastFlag("DebugEnableDevFrameworkCompanion", false)
if not FFlagDebugEnableDevFrameworkCompanion then
	return
end

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)

local MainPlugin = require(main.Src.MainPlugin)
local handle

local function init()
	plugin.Name = "DevFramework Companion"

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
