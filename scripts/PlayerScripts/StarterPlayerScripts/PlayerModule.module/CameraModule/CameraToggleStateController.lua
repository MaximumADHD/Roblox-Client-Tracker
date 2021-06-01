local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GameSettings = UserSettings():GetService("UserGameSettings")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

local Mouse = LocalPlayer:GetMouse()

local Input = require(script.Parent:WaitForChild("CameraInput"))
local CameraUI = require(script.Parent:WaitForChild("CameraUI"))

local lastTogglePan = false
local lastTogglePanChange = tick()

local CROSS_MOUSE_ICON = "rbxasset://textures/Cursors/CrossMouseIcon.png"

local lockStateDirty = false
local wasTogglePanOnTheLastTimeYouWentIntoFirstPerson = false
local lastFirstPerson = false

CameraUI.setCameraModeToastEnabled(false)

return function(isFirstPerson)
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
			Mouse.Icon = CROSS_MOUSE_ICON
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			GameSettings.RotationType = Enum.RotationType.CameraRelative
		else
			Mouse.Icon = ""
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			GameSettings.RotationType = Enum.RotationType.CameraRelative
		end

	elseif Input.getTogglePan() then
		Mouse.Icon = CROSS_MOUSE_ICON
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
		GameSettings.RotationType = Enum.RotationType.MovementRelative

	elseif Input.getHoldPan() then
		Mouse.Icon = ""
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
		GameSettings.RotationType = Enum.RotationType.MovementRelative

	else
		Mouse.Icon = ""
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		GameSettings.RotationType = Enum.RotationType.MovementRelative
	end

	lastFirstPerson = isFirstPerson
end
