--[[
	Layered Clothing Editor main script.
	Mounts and unmounts the Roact tree.
]]

local RunService = game:GetService("RunService")
local StudioService = game:GetService("StudioService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

require(script.Parent.defineLuaFlags)
local Plugin = script.Parent.Parent
local InExperiencePreviewerClient = require(Plugin.Src.Components.InExperiencePreviewer.InExperiencePreviewerClient)
local InExperiencePreviewerServer = require(Plugin.Src.Components.InExperiencePreviewer.InExperiencePreviewerServer)

if not game:GetFastFlag("AccessoryToolRefactor2") then
	return
end

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local GetAccessoryToolEngineFeature = require(Plugin.Src.Flags.GetAccessoryToolEngineFeature)
if not GetAccessoryToolEngineFeature() then
	return
end

-- we have to do this before including the rest of the modules because they might access studio code
local isRunningTests = DebugFlags.RunTests() or DebugFlags.RunRhodiumTests()
Roact.setGlobalConfig({
	-- TODO: Re-enable once typecheck issues are resolved.
	--propValidation = isRunningTests,
})

if isRunningTests then
	return
end

local LayeredClothingEditorPlugin = require(Plugin.Src.Components.LayeredClothingEditorPlugin)

local handle = nil

local function cleanupPreviousPreviewSessionForUser()
	local previewFolder = ReplicatedStorage:FindFirstChild("LayeredClothingEditorPreview")
	if not previewFolder then
		return
	end

	local userFolder = previewFolder:FindFirstChild(tostring(StudioService:GetUserId()))
	if userFolder then
		userFolder:Destroy()
	end
end

local function init()
	if RunService:IsRunning() then
		if RunService:IsClient() then
			InExperiencePreviewerClient:init()
		else
			InExperiencePreviewerServer:init()
		end
	else
		if RunService:IsEdit() then
			cleanupPreviousPreviewSessionForUser()
		end
		local mainPlugin = Roact.createElement(LayeredClothingEditorPlugin, {
			plugin = plugin,
		})

		handle = Roact.mount(mainPlugin)
	end
end

plugin.Unloading:Connect(function()
	if RunService:IsRunning() then
		if RunService:IsClient() then
			InExperiencePreviewerClient:shutdown()
		else
			InExperiencePreviewerServer:shutdown()
		end
	else
		if handle then
			Roact.unmount(handle)
		end
	end
end)

init()
