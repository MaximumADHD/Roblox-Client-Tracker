--[[
	Entry point for the plugin instance created in the "asset" datamodels:
	eg. Edit, Play (Client), and Play (Server).

	Listeners that need access to the specific active data model should be
	created here.

	If there are no instances that need DM-specific access, it is ok to remove
	this file from the hierarchy AND, importantly, the rbxp.
--]]

if not plugin then
	return
end

local main = script.Parent.Parent.Parent

local Common = script.Parent.Parent.Common
local commonInit = require(Common.commonInit)
commonInit()

local TestLoader = require(main.Packages.TestLoader)
TestLoader.launch("ActivityFeed", main.Src)
if TestLoader.isCli() then
	return
end

-- if true due to issue where we can't access flags in defineLuaFlags (to be resolved soon)
if true or not game:GetFastFlag("COLLAB4260ActivityFeed") then
	return
end

local mdiInstance = plugin.MultipleDocumentInterfaceInstance
local inspector

local function initializeDataModel()
	if not plugin.HostDataModelTypeIsCurrent then
		return
	end

	local hasInternalPermission = game:GetService("StudioService"):HasInternalPermission()
	if hasInternalPermission then
		local Framework = require(main.Packages.Framework)
		inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
		inspector:addPluginRouter(plugin)
	end
end

local function init()
	commonInit()
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
