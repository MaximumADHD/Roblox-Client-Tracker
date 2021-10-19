--[[
	Entry point for the plugin instance created in the "asset" datamodels:
	eg. Edit, Play (Client), and Play (Server).
--]]

local ok, hasInternalPermission = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

if not ok then
	hasInternalPermission = false
end

if not hasInternalPermission then
	return
end

local FFlagEnableUserInputPlaybackPlugin = game:GetFastFlag("EnableUserInputPlaybackPlugin")
if not FFlagEnableUserInputPlaybackPlugin then
	return
end

local main = script.Parent.Parent
local mdiInstance = plugin.MultipleDocumentInterfaceInstance

local inspector
local function initializeDataModel()
	if not plugin.HostDataModelTypeIsCurrent then
		return
	end

	if hasInternalPermission then
		local Framework = require(main.Packages.Framework)
		inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
		inspector:addPluginRouter(plugin)
	end
end

local function init()
	local session = mdiInstance.FocusedDataModelSession

	session.CurrentDataModelTypeAboutToChange:Connect(function()
		if inspector then
			inspector:destroy()
			inspector = nil
		end
	end)

	session.CurrentDataModelTypeChanged:Connect(function()
		initializeDataModel()
	end)

	initializeDataModel()
end

init()
