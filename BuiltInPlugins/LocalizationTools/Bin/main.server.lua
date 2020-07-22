--[[
	Mounts and unmounts the Roact tree.
]]

-- Fast flags
require(script.Parent.defineLuaFlags)

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)

local MainPlugin = require(main.Src.MainPlugin)
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
