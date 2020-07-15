--[[
	DevFramework Companion main script.
	Mounts and unmounts the Roact tree.
]]

local FFlagDebugEnableDevFrameworkCompanion = game:DefineFastFlag("DebugEnableDevFrameworkCompanion", false)
if not game:GetService("StudioService"):HasInternalPermission() and not FFlagDebugEnableDevFrameworkCompanion then
	return
end

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

--[[
	Since the symlink for DeveloperFramework as a path dependency is not
	checked in, we need to ensure the DeveloperFramework folder is in the correct
	location in the package index. We do this by including the folder in the Rojo
	config and then moving it to the correct location at runtime here. We remove
	any existing DeveloperFramework folder which may be present as a result of
	rotrieve install being ran locally and creating a gitignored symlink.
]]
local function devFrameworkLoadingPatch()
	local existingPackage = Plugin.Packages._Index.DeveloperFramework:FindFirstChild("DeveloperFramework")
	if existingPackage then
		existingPackage:Destroy()
	end
	local frameworkFolder = Plugin.Packages.DEPRECATED_Framework
	frameworkFolder.Name = "DeveloperFramework"
	frameworkFolder.Parent = Plugin.Packages._Index.DeveloperFramework
end

-- TODO DEVTOOLS-4458: Replace this with Rotriever & Rojo sub-project linking solution
devFrameworkLoadingPatch()

Roact.setGlobalConfig({
	elementTracing = true,
	propValidation = true,
	typeChecks = true
})

local MainPlugin = require(Plugin.Src.MainPlugin)
local handle

local function init()
	plugin.Name = "DevFramework Companion"

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
