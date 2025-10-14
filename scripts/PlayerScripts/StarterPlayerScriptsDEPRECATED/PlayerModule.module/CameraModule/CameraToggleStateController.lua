local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GameSettings = UserSettings():GetService("UserGameSettings")

local Input = require(script.Parent:WaitForChild("CameraInput"))
local CameraUI = require(script.Parent:WaitForChild("CameraUI"))
local CameraUtils = require(script.Parent:WaitForChild("CameraUtils"))

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
			CameraUtils.setMouseIconOverride(CROSS_MOUSE_ICON)
			CameraUtils.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
			CameraUtils.setRotationTypeOverride(Enum.RotationType.CameraRelative)
		else
			CameraUtils.restoreMouseIcon()
			CameraUtils.restoreMouseBehavior()
			CameraUtils.setRotationTypeOverride(Enum.RotationType.CameraRelative)
		end

	elseif Input.getTogglePan() then
		CameraUtils.setMouseIconOverride(CROSS_MOUSE_ICON)
		CameraUtils.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
		CameraUtils.setRotationTypeOverride(Enum.RotationType.MovementRelative)

	elseif Input.getHoldPan() then
		CameraUtils.restoreMouseIcon()
		CameraUtils.setMouseBehaviorOverride(Enum.MouseBehavior.LockCurrentPosition)
		CameraUtils.setRotationTypeOverride(Enum.RotationType.MovementRelative)

	else
		CameraUtils.restoreMouseIcon()
		CameraUtils.restoreMouseBehavior()
		CameraUtils.restoreRotationType()
	end

	lastFirstPerson = isFirstPerson
end
