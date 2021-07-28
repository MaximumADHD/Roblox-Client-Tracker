--[[
	Entry point for the plugin instance created in the "standalone" datamodel:
	eg. Edit, Play (Client), and Play (Server).

	For plugins with UI instances, state, or cross-dm functions, those instances
	should be created here.

	New Plugin Setup: Change all instances of "StandaloneTemplate" to the
		name of your plugin (incl. csv, .config, and rbxp file)

	**** NOTE: In the rbxp file, the name of the rbxm that is defined in
		"projectFileMap" must be the same as the name of the folder
--]]

if not plugin then
	return
end

local Common = script.Parent.Parent.Common

-- TODO DEVTOOLS-4481: The DevFramework Flags util has a bug triggers the assert for missing
-- flags in NoOpt/Debug. When that is fixed this template should be updated to use it.
require(Common.defineLuaFlags)

-- New Plugin Setup: Uncomment this line and replace with your flag's name.
-- If your plugin is internal-only, change if statement to:
-- if not (game:GetService("StudioService"):HasInternalPermission() and FLAG) then

local FFlagDebuggerPlugin = game:GetFastFlag("DebuggerPlugin")
if not FFlagDebuggerPlugin then
	return
end

local commonInit = require(Common.commonInit)
commonInit()

local FFlagEnableRoactInspector = game:GetFastFlag("EnableRoactInspector")
local hasInternalPermission = game:GetService("StudioService"):HasInternalPermission()

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)

local MainPlugin = require(main.Src.MainPlugin)
local handle

-- Allows connecton to the Developer Inspector for internal engineers
local inspector
if FFlagEnableRoactInspector and hasInternalPermission then
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
