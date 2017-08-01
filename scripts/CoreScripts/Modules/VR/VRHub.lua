--Modules/VR/VRHub.lua
--Handles all global VR state that isn't built into a specific module.
--Written by 0xBAADF00D (Kyle) on 6/10/16
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Util = require(RobloxGui.Modules.Settings.Utility)

local LaserPointer = require(RobloxGui.Modules.VR.LaserPointer)
local useLaserPointerSuccess, useLaserPointerValue = pcall(function() return settings():GetFFlag("UseLaserPointerVR") end)
local useLaserPointerFlag = useLaserPointerSuccess and useLaserPointerValue

local VRHub = {}
local RegisteredModules = {}
local OpenModules = {}

--VR Setup
local vrUpdateRenderstepName = HttpService:GenerateGUID(true)

VRHub.LaserPointer = nil

local start = tick()
local function onRenderSteppedLast()
	local now = tick()
	local dt = now - start
	start = now

	if VRHub.LaserPointer then
		VRHub.LaserPointer:update(dt)
	end
end

local function onVREnabled(property)
	if property ~= "VREnabled" then
		return
	end
	
	if UserInputService.VREnabled then
		if useLaserPointerFlag then
			if not VRHub.LaserPointer then
				VRHub.LaserPointer = LaserPointer.new()
			end

			--Check again in case creating the laser pointer gracefully failed (instance hasn't shipped to some platforms yet for example)
			if VRHub.LaserPointer then
				VRHub.LaserPointer:setEnabled(true)
			end
		end
		RunService:BindToRenderStep(vrUpdateRenderstepName, Enum.RenderPriority.Last.Value, onRenderSteppedLast)
	else
		if VRHub.LaserPointer then
			VRHub.LaserPointer:setEnabled(false)
		end
		RunService:UnbindFromRenderStep(vrUpdateRenderstepName)
	end
end
onVREnabled("VREnabled")
UserInputService.Changed:connect(onVREnabled)

--VRHub API
function VRHub:RegisterModule(module)
	RegisteredModules[module.ModuleName] = module
end

function VRHub:GetModule(moduleName)
	return RegisteredModules[moduleName]
end

function VRHub:IsModuleOpened(moduleName)
	return OpenModules[moduleName] ~= nil
end

function VRHub:GetOpenedModules()
	local result = {}

	for _, openModule in pairs(OpenModules) do
		table.insert(result, openModule)
	end

	return result
end

VRHub.ModuleOpened = Util:Create "BindableEvent" {
	Name = "VRModuleOpened"
}
--Wrapper function to document the arguments to the event
function VRHub:FireModuleOpened(moduleName)
	if not RegisteredModules[moduleName] then
		error("Tried to open module that is not registered: " .. moduleName)
	end

	if OpenModules[moduleName] ~= RegisteredModules[moduleName] then
		OpenModules[moduleName] = RegisteredModules[moduleName]
		VRHub.ModuleOpened:Fire(moduleName)
	end
end

VRHub.ModuleClosed = Util:Create "BindableEvent" {
	Name = "VRModuleClosed"
}
--Wrapper function to document the arguments to the event
function VRHub:FireModuleClosed(moduleName)
	if not RegisteredModules[moduleName] then
		error("Tried to close module that is not registered: " .. moduleName)
	end

	if OpenModules[moduleName] ~= nil then
		OpenModules[moduleName] = nil
		VRHub.ModuleClosed:Fire(moduleName)
	end
end

function VRHub:KeepVRTopbarOpen()
	for moduleName, openModule in pairs(OpenModules) do
		if openModule.KeepVRTopbarOpen then
			return true
		end
	end
	return false
end

return VRHub