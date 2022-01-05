--[[
	Entry point for the plugin instance created in the "asset" datamodels:
	eg. Edit, Play (Client), and Play (Server).

	Listeners that need access to the specific active data model should be
	created here.

	If there are no instances that need DM-specific access, it is ok to remove
	this file from the hierarchy AND, importantly, the rbxp.
--]]

-- The instance of the Edit/Server/Play datamodel's MDI
local main = script.Parent.Parent

local mdiInstance = plugin.MultipleDocumentInterfaceInstance

local Common = script.Parent.Parent.Common
local commonInit = require(Common.commonInit)

local ok, hasInternalPermission = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

if not ok then
	hasInternalPermission = false
end


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
