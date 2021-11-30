--[[
	Entry point for the plugin instance created in the "standalone" datamodel.

	For plugins with UI instances, state, or cross-dm functions, those instances
	should be created here.
--]]

if not plugin then
	return
end

local Common = script.Parent.Parent.Common

-- TODO DEVTOOLS-4481: The DevFramework Flags util has a bug triggers the assert for missing
-- flags in NoOpt/Debug. When that is fixed this template should be updated to use it.
require(Common.defineLuaFlags)

local ok, hasInternalPermission = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

if not ok or not hasInternalPermission then
	return
end

local FFlagEnableUserInputPlaybackPlugin = game:GetFastFlag("EnableUserInputPlaybackPlugin")
if not FFlagEnableUserInputPlaybackPlugin then
	return
end

local commonInit = require(Common.commonInit)
commonInit()

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)

local MainPlugin = require(main.Src.MainPlugin)
local DMBridge = require(main.Src.Util.DMBridge)
local handle, inspector

local function init()
	plugin.Name = main.Name
	DMBridge.setPluginObject(plugin)

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)

	-- Allows connecton to the Developer Inspector for internal engineers
	if hasInternalPermission then
		inspector = Framework.DeveloperTools.forStandalonePlugin(main.Name, plugin, {
			rootInstance = handle,
			rootPrefix = {"UserInputPlaybackGui"},
		})
	end

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
