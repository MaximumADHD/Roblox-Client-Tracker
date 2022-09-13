if not plugin then
	return
end

require(script.Parent.defineLuaFlags)

local _, hasInternalPermission = pcall(function()
	-- Currently not available in CLI
	return game:GetService("StudioService"):HasInternalPermission()
end)

local main = script.Parent.Parent

local DebugFlags = require(main.Src.Util.DebugFlags)

if DebugFlags.RunningUnderCLI() then
	return
end

local ok, isEdit = pcall(function()
	return game:GetService("RunService"):IsEdit()
end)

if not ok or not isEdit then
	local toolbar = plugin:CreateToolbar("Audio Discovery")
	local buttonId = "ViewSounds"
	local button = toolbar:CreateButton(buttonId, "View Sounds", "rbxasset://textures/AudioDiscovery/icon.png")
	button.Enabled = false
	return
end

local commonInit = require(script.Parent.commonInit)
commonInit()

local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)

local Networking = Framework.Http.Networking

local MainPlugin = require(main.Src.MainPlugin)

local SoundAssetChecker = require(main.Src.Util.SoundAssetChecker)

local handle
local soundAssetChecker

-- Allows connecton to the Developer Inspector for internal engineers
local inspector
if hasInternalPermission then
	inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
end

local function init()
	plugin.Name = main.Name
	
	local networking = Networking.new({
		isInternal = true,
	})
	soundAssetChecker = SoundAssetChecker.new(networking)
	soundAssetChecker:start()
	
	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
		SoundAssetChecker = soundAssetChecker
	})

	handle = Roact.mount(mainPlugin)

	if inspector then
		inspector:addRoactTree("Roact tree", handle)
	end
end

plugin.Unloading:Connect(function()
	if soundAssetChecker then
		soundAssetChecker:destroy()
		soundAssetChecker = nil
	end
	
	if inspector then
		inspector:destroy()
	end

	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

init()
