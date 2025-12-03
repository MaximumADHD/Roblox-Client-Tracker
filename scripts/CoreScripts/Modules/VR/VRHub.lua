--!nonstrict
--Modules/VR/VRHub.lua
--Handles all global VR state that isn't built into a specific module.
--Written by 0xBAADF00D (Kyle) on 6/10/16
local StarterGui = game:GetService("StarterGui")
local VRService = game:GetService("VRService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui.RobloxGui
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

local LaserPointer = require(CorePackages.Workspace.Packages.VrCommon).LaserPointer

local VRControllerModel = require(CorePackages.Workspace.Packages.VrCommon).VRControllerModel

local SplashScreenManager = require(CorePackages.Workspace.Packages.SplashScreenManager).SplashScreenManager

local SafetyBubble = require(script.Parent.SafetyBubble)

local VRHub = {}
local RegisteredModules = {}
local OpenModules = {}

--VR Setup
local vrUpdateRenderstepName = HttpService:GenerateGUID(true)

VRHub.LaserPointer = nil

VRHub.ControllerModelsEnabled = false
VRHub.LeftControllerModel = nil
VRHub.RightControllerModel = nil

VRHub.isFPSAtTarget = SplashScreenManager.isFPSAtTarget()
VRHub.SafetyBubble = nil
-- TODO: AvatarGestures cannot be turned on until this is implemented
VRHub.IsFirstPerson = false

StarterGui:RegisterSetCore("VRLaserPointerMode", function(mode)
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

-- This function exists to support the deprecated lua API
-- game.StarterGui:SetCore("VREnableControllerModels", "<value>")
-- Any usage of these old APIs should redirect to the newer 
-- VRService.ControllerModels = Enum.VRControllerModelMode.<Value>
StarterGui:RegisterSetCore("VREnableControllerModels", function(enabled)
	if enabled then
		VRService.ControllerModels = Enum.VRControllerModelMode.Transparent
	else
		VRService.ControllerModels = Enum.VRControllerModelMode.Disabled
	end
end)

VRService:GetPropertyChangedSignal("ControllerModels"):Connect(function()
	enableControllerModels(VRService.ControllerModels == Enum.VRControllerModelMode.Transparent)
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

	if VRHub.SafetyBubble then
		VRHub.SafetyBubble:update(dt)
	end
end

local function onCameraCFrameChanged()
	-- We normally update the position of the controllers and laser pointer in RenderStepped.
	-- If a developer moves the camera after that, for example using TweenService, the controllers and pointer
	-- will always be a frame behind and the user will notice a severe jitter.  This can be fixed by
	-- calling the update functions again after the camera moves, passing in a deltaTime of zero.

	if VRHub.LaserPointer then
		VRHub.LaserPointer:update(0)
	end
	if VRHub.LeftControllerModel then
		VRHub.LeftControllerModel:update(0)
	end
	if VRHub.RightControllerModel then
		VRHub.RightControllerModel:update(0)
	end
end

local cameraCFrameChangedConn = nil
local function onCurrentCameraChanged()
	if cameraCFrameChangedConn then
		cameraCFrameChangedConn:disconnect()
	end
	if workspace.CurrentCamera then
		cameraCFrameChangedConn = (workspace.CurrentCamera :: Camera):GetPropertyChangedSignal("CFrame"):Connect(onCameraCFrameChanged)
	end
end

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)
onCurrentCameraChanged()

local function onVREnabledChanged()
	if VRService.VREnabled then
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide

		if not VRHub.LaserPointer then
			VRHub.LaserPointer = LaserPointer.new()
		end

		--Check again in case creating the laser pointer gracefully failed
		if VRHub.LaserPointer then
			if VRHub.isFPSAtTarget then
				VRHub.LaserPointer:setMode(LaserPointer.Mode.Navigation)
			else
				VRHub.LaserPointer:setMode(LaserPointer.Mode.Disabled)
			end
		end

		enableControllerModels(VRService.ControllerModels == Enum.VRControllerModelMode.Transparent)

		RunService:BindToRenderStep(vrUpdateRenderstepName, Enum.RenderPriority.Last.Value, onRenderSteppedLast)

		if VRHub.LaserPointer then
			VRHub.LaserPointer:setForcePointer(true)
		end
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide

		VRHub.SafetyBubble = SafetyBubble.new()

		-- this is the equivalent of MouseButton1 in VR
		ContextActionService:BindCoreActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)
	else
		if VRHub.LaserPointer then
			VRHub.LaserPointer:setMode(LaserPointer.Mode.Disabled)
		end
		RunService:UnbindFromRenderStep(vrUpdateRenderstepName)
	end
end

local function onVREnabled(property)
	if property ~= "VREnabled" then
		return
	end
	onVREnabledChanged()
end

local function onVRSessionStateChanged()
	if VRService.VRSessionState == Enum.VRSessionState.Focused then
		if VRHub.LaserPointer and VRHub.LaserPointer.Mode.Disabled then
			VRHub.LaserPointer:setMode(LaserPointer.Mode.Navigation)
			enableControllerModels(VRService.ControllerModels == Enum.VRControllerModelMode.Transparent)
		end
		if not VRHub.ControllerModelsEnabled then
			enableControllerModels(VRService.ControllerModels == Enum.VRControllerModelMode.Transparent)
		end
	else
		if VRHub.LaserPointer and VRHub.LaserPointer.Mode.Navigation then
			VRHub.LaserPointer:setMode(LaserPointer.Mode.Disabled)
		end
		if VRHub.ControllerModelsEnabled then
			enableControllerModels(false)
		end
	end
end

local function onVRPropertyChanged(property)
	if property == "VREnabled" then
		onVREnabledChanged()
	elseif property == "VRSessionState" then
		onVRSessionStateChanged()
	end
end

onVREnabledChanged()
VRService.Changed:connect(onVRPropertyChanged)

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

VRHub.ModuleOpened = Create("BindableEvent")({
	Name = "VRModuleOpened",
})
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

VRHub.ModuleClosed = Create("BindableEvent")({
	Name = "VRModuleClosed",
})
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

VRHub.ShowHighlightedLeaveGameIcon = false

VRHub.ShowHighlightedLeaveGameIconToggled = Create("BindableEvent")({
	Name = "ShowHighlightedLeaveGameIconToggled",
})

function VRHub:SetShowHighlightedLeaveGameIconToggled(showHighlightedLeaveGameIcon)
	if VRHub.ShowHighlightedLeaveGameIcon ~= showHighlightedLeaveGameIcon then
		VRHub.ShowHighlightedLeaveGameIcon = showHighlightedLeaveGameIcon
		VRHub.ShowHighlightedLeaveGameIconToggled:Fire()
	end
end

VRHub.ShowTopBar = true
VRHub.ShowMoreMenu = false

VRHub.ShowTopBarChanged = Create("BindableEvent")({
	Name = "ShowTopBarChanged",
})

VRHub.ShowMoreMenuChanged = Create("BindableEvent")({
	Name = "ShowMoreMenuChanged",
})

function VRHub:SetShowTopBar(showTopBar)
	if VRHub.ShowTopBar ~= showTopBar then
		VRHub.ShowTopBar = showTopBar
		VRHub.ShowTopBarChanged:Fire()
	end
end

function VRHub:SetShowMoreMenu(showMoreMenu)
	if VRHub.ShowMoreMenu ~= showMoreMenu then
		VRHub.ShowMoreMenu = showMoreMenu
		VRHub.ShowMoreMenuChanged:Fire()
	end
end

function VRHub:ToggleSafetyBubble()
	if VRHub.SafetyBubble then
		VRHub.SafetyBubble:ToggleEnabled()
	end
end

function VRHub:GetControllerModel(userCFrame)
	if userCFrame == Enum.UserCFrame.LeftHand then
		return VRHub.LeftControllerModel
	elseif userCFrame == Enum.UserCFrame.RightHand then
		return VRHub.RightControllerModel
	else
		return nil
	end
end

function VRHub:GetControllerButtonPosition(keyCode)
	local leftControllerButtonPos = VRHub.LeftControllerModel and VRHub.LeftControllerModel:getButtonPosition(keyCode)
	local rightControllerButtonPos = VRHub.RightControllerModel and VRHub.RightControllerModel:getButtonPosition(keyCode)
	return leftControllerButtonPos, rightControllerButtonPos
end

SplashScreenManager.addStatusChangeListener(function(isFPSAtTarget)
	VRHub.isFPSAtTarget = isFPSAtTarget
	onVREnabledChanged()
end)

return VRHub
