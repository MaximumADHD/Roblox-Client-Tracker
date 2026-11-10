--!strict
--[[
	InputSampler - samples the local player's character and camera input relevant for simulation
]]--

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local Types = require(script.Parent.Types)

local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsCCLIntegrationD = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationD")
	or FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationDGA")
local FFlagUserPlayerScriptsPlayerControlState = FlagUtil.getUserFlag("UserPlayerScriptsPlayerControlState2")
	or FlagUtil.getUserFlag("UserPlayerScriptsPlayerControlState2GA")
local FFlagUserAbilitiesUserInterfaceB = FlagUtil.getUserFlag("UserAbilitiesUserInterfaceB")
local FFlagUserControlModuleDisabledUpdate = FlagUtil.getUserFlag("UserControlModuleDisabledUpdate")

local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("ControlModule"):WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = if FFlagUserPlayerScriptsCCLIntegrationD
	then AvatarAbilitiesInterface.get(Players.LocalPlayer)
	else nil

local CONTROL_STATE_INSTANCE_NAME = if FFlagUserAbilitiesUserInterfaceB then "ControlState" else "PlayerControlState"

type ControlData = {
	enabled: boolean,
	isJumping: boolean,
	worldMoveVector: Vector3,
}

type InputSamplerType = {
	__index: InputSamplerType,
	new: () -> InputSampler,
	Update: (self: InputSampler, data: Types.PlayerModuleInternalData) -> (),
}

type InputSampler = typeof(setmetatable({} :: {
	controlData: ControlData,
}, {} :: InputSamplerType))

local InputSampler: InputSamplerType = {} :: InputSamplerType
InputSampler.__index = InputSampler

function InputSampler.new()
	local self = setmetatable({
		controlData = {
			enabled = true,
			isJumping = false,
			worldMoveVector = Vector3.zero,
		},
	}, InputSampler)

	return self
end

function InputSampler:Update(data)
	if not FFlagUserControlModuleDisabledUpdate then
		return
	end

	local player = data.player
	if not player then return end

	if FFlagUserPlayerScriptsPlayerControlState then
		local character = player.Character
		if not character then return end
		local controlState: any
		if FFlagUserAbilitiesUserInterfaceB then
			controlState = character:FindFirstChildOfClass(CONTROL_STATE_INSTANCE_NAME)
		else
			controlState = character:FindFirstChild(CONTROL_STATE_INSTANCE_NAME)
		end
		if not controlState then return end
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		local isRelative = UserGameSettings.RotationType == Enum.RotationType.CameraRelative
		local camLook = Workspace.CurrentCamera and Workspace.CurrentCamera.CFrame.LookVector or Vector3.zAxis
		local horiz = Vector3.new(camLook.X, 0, camLook.Z)
		local facingDir = if horiz.Magnitude > 0.001 then horiz.Unit else Vector3.zAxis
		local newState: { [string]: any } = {
			RotateToLookDirection = isRelative,
			LookDirection = facingDir,
		}
		if data.controlModule.enabled or self.controlData.enabled then
			newState["Move"] = data.controlModule.worldMoveVector
			if not (avatarAbilitiesInterface and avatarAbilitiesInterface:isEnabled()) then
				newState["Jump"] = data.controlModule.isJumping
			end
		end

		self.controlData.enabled = data.controlModule.enabled
		self.controlData.isJumping = data.controlModule.isJumping
		self.controlData.worldMoveVector = data.controlModule.worldMoveVector

		controlState:UpdateFields(newState)
	elseif data.isServerAuthority then
		local inputContexts = player:FindFirstChild("InputContexts")
		if not inputContexts then return end
		local characterContext = inputContexts:FindFirstChild("CharacterContext")
		if not characterContext then return end

		local rotationAction = characterContext:FindFirstChild("RotationAction")
		if rotationAction then
			local binding = rotationAction:FindFirstChild("RotationScriptableBinding") :: InputBinding?
			if binding then
				binding:Fire(UserGameSettings.RotationType == Enum.RotationType.CameraRelative)
			end
		end
	end
end

return InputSampler.new()
