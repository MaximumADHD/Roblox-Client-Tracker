--!strict
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GameSettings = UserSettings():GetService("UserGameSettings")

local FFlagUserCameraToggleDontSetMouseIconEveryFrame
do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserCameraToggleDontSetMouseIconEveryFrame")
	end)
	FFlagUserCameraToggleDontSetMouseIconEveryFrame = success and value
end

local FFlagUserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame
do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame")
	end)
	FFlagUserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame = success and value
end

local Mouse
if not FFlagUserCameraToggleDontSetMouseIconEveryFrame then
	local LocalPlayer = Players.LocalPlayer
	if not LocalPlayer then
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end

	Mouse = LocalPlayer:GetMouse()
end

local Input = require(script.Parent:WaitForChild("CameraInput"))
local CameraUI = require(script.Parent:WaitForChild("CameraUI"))
local CameraUtils: any = if FFlagUserCameraToggleDontSetMouseIconEveryFrame or FFlagUserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame
	then require(script.Parent:WaitForChild("CameraUtils"))
	else nil

local lastTogglePan = false
local lastTogglePanChange = tick()

local CROSS_MOUSE_ICON = "rbxasset://textures/Cursors/CrossMouseIcon.png"

local lockStateDirty = false
local wasTogglePanOnTheLastTimeYouWentIntoFirstPerson = false
local lastFirstPerson = false

CameraUI.setCameraModeToastEnabled(false)

return function(isFirstPerson: boolean)
	local togglePan = Input.getTogglePan()
	local toastTimeout = 3

	if isFirstPerson and togglePan ~= lastTogglePan then
		lockStateDirty = true
	end

	if lastTogglePan ~= togglePan or tick() - lastTogglePanChange > toastTimeout then
		local doShow = togglePan and tick() - lastTogglePanChange < toastTimeout

		CameraUI.setCameraModeToastOpen(doShow)

		if togglePan then
			lockStateDirty = false
		end
		lastTogglePanChange = tick()
		lastTogglePan = togglePan
	end

	if isFirstPerson ~= lastFirstPerson then
		if isFirstPerson then
			wasTogglePanOnTheLastTimeYouWentIntoFirstPerson = Input.getTogglePan()
			Input.setTogglePan(true)
		elseif not lockStateDirty then
			Input.setTogglePan(wasTogglePanOnTheLastTimeYouWentIntoFirstPerson)
		end
	end

	if isFirstPerson then
		if Input.getTogglePan() then
			if FFlagUserCameraToggleDontSetMouseIconEveryFrame then
				CameraUtils.setMouseIconOverride(CROSS_MOUSE_ICON)
			else
				Mouse.Icon = CROSS_MOUSE_ICON
			end
			if FFlagUserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame then
				CameraUtils.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
				CameraUtils.setRotationTypeOverride(Enum.RotationType.CameraRelative)
			else
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
				GameSettings.RotationType = Enum.RotationType.CameraRelative
			end
		else
			if FFlagUserCameraToggleDontSetMouseIconEveryFrame then
				CameraUtils.restoreMouseIcon()
			else
				Mouse.Icon = ""
			end
			if FFlagUserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame then
				CameraUtils.restoreMouseBehavior()
				CameraUtils.setRotationTypeOverride(Enum.RotationType.CameraRelative)
			else
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default
				GameSettings.RotationType = Enum.RotationType.CameraRelative
			end
		end

	elseif Input.getTogglePan() then
		if FFlagUserCameraToggleDontSetMouseIconEveryFrame then
			CameraUtils.setMouseIconOverride(CROSS_MOUSE_ICON)
		else
			Mouse.Icon = CROSS_MOUSE_ICON
		end
		if FFlagUserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame then
			CameraUtils.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
			CameraUtils.setRotationTypeOverride(Enum.RotationType.MovementRelative)
		else
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			GameSettings.RotationType = Enum.RotationType.MovementRelative
		end

	elseif Input.getHoldPan() then
		if FFlagUserCameraToggleDontSetMouseIconEveryFrame then
			CameraUtils.restoreMouseIcon()
		else
			Mouse.Icon = ""
		end
		if FFlagUserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame then
			CameraUtils.setMouseBehaviorOverride(Enum.MouseBehavior.LockCurrentPosition)
			CameraUtils.setRotationTypeOverride(Enum.RotationType.MovementRelative)
		else
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
			GameSettings.RotationType = Enum.RotationType.MovementRelative
		end

	else
		if FFlagUserCameraToggleDontSetMouseIconEveryFrame then
			CameraUtils.restoreMouseIcon()
		else
			Mouse.Icon = ""
		end
		if FFlagUserCameraToggleDontSetMouseBehaviorOrRotationTypeEveryFrame then
			CameraUtils.restoreMouseBehavior()
			CameraUtils.restoreRotationType()
		else
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			GameSettings.RotationType = Enum.RotationType.MovementRelative
		end
	end

	lastFirstPerson = isFirstPerson
end
