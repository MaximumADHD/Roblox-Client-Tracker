--[[
	Mounts and unmounts the Roact tree.
	New Plugin Setup: Change all instances of "PluginTemplate" to the
		name of your plugin (incl. csv, .config, and rbxp file)

	**** NOTE: In the rbxp file, the name of the rbxm that is defined in
		"projectFileMap" must be the same as the name of the folder
]]

if not plugin then
	return
end

require(script.Parent.defineLuaFlags)

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
