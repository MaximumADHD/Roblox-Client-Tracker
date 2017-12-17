--Modules/VR/VRHub.lua
--Handles all global VR state that isn't built into a specific module.
--Written by 0xBAADF00D (Kyle) on 6/10/16
local StarterGui = game:GetService("StarterGui")
local VRService = game:GetService("VRService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local RobloxGui = CoreGui.RobloxGui
local Util = require(RobloxGui.Modules.Settings.Utility)

local LaserPointer = require(RobloxGui.Modules.VR.LaserPointer)
local VRControllerModel = require(RobloxGui.Modules.VR.VRControllerModel)

local useLaserPointerSuccess, useLaserPointerValue = pcall(function() return settings():GetFFlag("UseLaserPointerVR") end)
local useLaserPointerFlag = useLaserPointerSuccess and useLaserPointerValue

local useVRControllerModelsSuccess, useVRControllerModelsValue = pcall(function() return settings():GetFFlag("UseControllerModelsVR") end)
local useVRControllerModelsFlag = useVRControllerModelsSuccess and useVRControllerModelsValue

local VRHub = {}
local RegisteredModules = {}
local OpenModules = {}

--VR Setup
local vrUpdateRenderstepName = HttpService:GenerateGUID(true)

VRHub.LaserPointer = nil

VRHub.ControllerModelsEnabled = false
VRHub.LeftControllerModel = nil
VRHub.RightControllerModel = nil

StarterGui:RegisterSetCore("VRLaserPointerMode", function(mode)
	if not useLaserPointerFlag then
		return
	end
	if not VRHub.LaserPointer then
		return
	end
	if not mode or not tostring(mode) then
		return
	end
	VRHub.LaserPointer:setMode(LaserPointer.Mode[tostring(mode)] or LaserPointer.Mode.Disabled)
end)

local function enableControllerModels(enabled)
	if enabled ~= VRHub.ControllerModelsEnabled then
		VRHub.ControllerModelsEnabled = enabled

		if enabled then
			if not VRHub.LeftControllerModel then
				VRHub.LeftControllerModel = VRControllerModel.new(Enum.UserCFrame.LeftHand)
			end
			VRHub.LeftControllerModel:setEnabled(true)

			if not VRHub.RightControllerModel then
				VRHub.RightControllerModel = VRControllerModel.new(Enum.UserCFrame.RightHand)
			end
			VRHub.RightControllerModel:setEnabled(true)
		else
			if VRHub.LeftControllerModel then
				VRHub.LeftControllerModel:setEnabled(false)
			end
			if VRHub.RightControllerModel then
				VRHub.RightControllerModel:setEnabled(false)
			end
		end
	end
end
local enableControllerModelsSetByDeveloper = false
StarterGui:RegisterSetCore("VREnableControllerModels", function(enabled)
	if not useVRControllerModelsFlag then
		return
	end
	enableControllerModelsSetByDeveloper = true
	enableControllerModels(enabled)
end)

local start = tick()
local function onRenderSteppedLast()
	local now = tick()
	local dt = now - start
	start = now

	if VRHub.LaserPointer then
		VRHub.LaserPointer:update(dt)
	end

	if VRHub.LeftControllerModel then
		VRHub.LeftControllerModel:update(dt)
	end
	if VRHub.RightControllerModel then
		VRHub.RightControllerModel:update(dt)
	end
end

local function onVREnabled(property)
	if property ~= "VREnabled" then
		return
	end
	
	if VRService.VREnabled then
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide

		if useLaserPointerFlag then
			if not VRHub.LaserPointer then
				VRHub.LaserPointer = LaserPointer.new()
			end

			--Check again in case creating the laser pointer gracefully failed (instance hasn't shipped to some platforms yet for example)
			if VRHub.LaserPointer then
				VRHub.LaserPointer:setMode(LaserPointer.Mode.Navigation)
			end
		end
		if useVRControllerModelsFlag then
			if not enableControllerModelsSetByDeveloper then
				enableControllerModels(true)
			end
		end
		RunService:BindToRenderStep(vrUpdateRenderstepName, Enum.RenderPriority.Last.Value, onRenderSteppedLast)
	else
		if VRHub.LaserPointer then
			VRHub.LaserPointer:setMode(LaserPointer.Mode.Disabled)
		end
		RunService:UnbindFromRenderStep(vrUpdateRenderstepName)
	end
end
onVREnabled("VREnabled")
VRService.Changed:connect(onVREnabled)

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