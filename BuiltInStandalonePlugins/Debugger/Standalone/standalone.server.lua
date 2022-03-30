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

local main = script.Parent.Parent

local Common = script.Parent.Parent.Common

-- TODO DEVTOOLS-4481: The DevFramework Flags util has a bug triggers the assert for missing
-- flags in NoOpt/Debug. When that is fixed this template should be updated to use it.
require(Common.defineLuaFlags)

local DebugFlags = require(Common.Parent.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

-- New Plugin Setup: Uncomment this line and replace with your flag's name.
-- If your plugin is internal-only, change if statement to:
-- if not (game:GetService("StudioService"):HasInternalPermission() and FLAG) then

local FFlagStudioDebuggerOverhaul_Dev = game:GetFastFlag("StudioDebuggerOverhaul_Dev")
if not FFlagStudioDebuggerOverhaul_Dev then
	return
end

local commonInit = require(Common.commonInit)
commonInit()

local hasInternalPermission = game:GetService("StudioService"):HasInternalPermission()

local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)

local MainPlugin = require(main.Src.MainPlugin)
local handle, inspector

local function init()
	plugin.Name = main.Name

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)

	-- Allows connecton to the Developer Inspector for internal engineers
	if hasInternalPermission then
		if inspector then
			inspector:destroy()
			inspector = nil
		end

		inspector = Framework.DeveloperTools.forStandalonePlugin(main.Name, plugin, {})
	end

	if inspector then
		inspector:addRoactTree("Roact tree", handle)
	end
end

local function destroyWindow()
	if inspector then
		inspector:destroy()
		inspector = nil
	end

	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end

plugin.Unloading:Connect(destroyWindow)

init()
