--[[
	Device Emulator main script
	Mounts and unmounts the Roact tree.
]]

if not plugin then
	return
end

require(script.Parent.defineLuaFlags)

local FFlagDeviceEmulatorPluginBasedUi = game:GetFastFlag("DeviceEmulatorPluginBasedUi")
if not FFlagDeviceEmulatorPluginBasedUi then
	return
end

local commonInit = require(script.Parent.commonInit)
commonInit()

local main = script.Parent.Parent
local shouldPluginRun = require(main.Src.Util.shouldPluginRun)

if not shouldPluginRun() then
	return
end

local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)

local MainPlugin = require(main.Src.MainPlugin)
local hasInternalPermission = require(main.Src.Util.hasInternalPermission)()
local handle

-- Allows connecton to the Developer Inspector for internal engineers
local inspector
if hasInternalPermission then
	inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
end

local function init()
	plugin.Name = main.Name

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)

	if inspector then
		inspector:addRoactTree("Roact tree", handle)
	end
end

plugin.Unloading:Connect(function()
	if inspector then
		inspector:destroy()
	end

	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

init()
