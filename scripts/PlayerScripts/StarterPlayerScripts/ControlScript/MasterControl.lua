--[[
	// FileName: MasterControl
	// Version 1.0
	// Written by: jeditkacheff
	// Description: All character control scripts go thru this script, this script makes sure all actions are performed
--]]

-- [[ Constants ]]--
local ZERO_VECTOR3 = Vector3.new(0, 0, 0)
local STATE_JUMPING = Enum.HumanoidStateType.Jumping
local STATE_FREEFALL = Enum.HumanoidStateType.Freefall
local STATE_LANDED = Enum.HumanoidStateType.Landed

--[[ Local Variables ]]--
local MasterControl = {}

local Players = game:GetService('Players')
local RunService = game:GetService('RunService')

while not Players.LocalPlayer do
	Players.PlayerAdded:wait()
end
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local CachedHumanoid = nil

local isJumping = false
local moveValue = Vector3.new(0, 0, 0)

local isJumpEnabled = true
local areControlsEnabled = true

local clickToMoveFailStateChanged = Instance.new("BindableEvent")
clickToMoveFailStateChanged.Name = "ClickToMoveFailStateChanged"

--[[ Local Functions ]]--
function MasterControl:GetHumanoid()
	if LocalCharacter then
		if CachedHumanoid then
			return CachedHumanoid
		else
			CachedHumanoid = LocalCharacter:FindFirstChildOfClass("Humanoid")
			return CachedHumanoid
		end
	end
end

local characterAncestryChangedConn = nil
local characterChildRemovedConn = nil
local function characterAdded(character)
	if characterAncestryChangedConn then
		characterAncestryChangedConn:disconnect()
	end

	if characterChildRemovedConn then
		characterChildRemovedConn:disconnect()
	end	
	
	LocalCharacter = character
	CachedHumanoid = LocalCharacter:FindFirstChildOfClass("Humanoid")
	characterAncestryChangedConn = character.AncestryChanged:connect(function()
		if character.Parent == nil then
			LocalCharacter = nil
		else
			LocalCharacter = character
		end
	end)
	
	characterChildRemovedConn = character.ChildRemoved:connect(function(child)
		if child == CachedHumanoid then
			CachedHumanoid = nil
		end
	end)
end

if LocalCharacter then
	characterAdded(LocalCharacter)
end
LocalPlayer.CharacterAdded:connect(characterAdded)


local getHumanoid = MasterControl.GetHumanoid
local moveFunc = LocalPlayer.Move
local updateMovement = function()
	
	if not areControlsEnabled then return end
	
	local humanoid = getHumanoid()
	if not humanoid then return end
	
	if isJumpEnabled and isJumping and not humanoid.PlatformStand then
		local state = humanoid:GetState()
		if state ~= STATE_JUMPING and state ~= STATE_FREEFALL and state ~= STATE_LANDED then
			humanoid.Jump = isJumping
		end
	end

	moveFunc(LocalPlayer, moveValue, true)
end

--[[ Public API ]]--
function MasterControl:Init()
	RunService:BindToRenderStep("MasterControlStep", Enum.RenderPriority.Input.Value, updateMovement)
end

function MasterControl:Enable()
	areControlsEnabled = true
	isJumpEnabled = true
	
	if self.ControlState.Current then
		self.ControlState.Current:Enable()
	end
end

function MasterControl:Disable()
	
	if self.ControlState.Current then
		self.ControlState.Current:Disable()
	end
	
	--After current control state is disabled, moveValue has been set to zero,
	--Call updateMovement one last time to make sure this propagates to the engine -
	--Otherwise if disabled while humanoid is moving, humanoid won't stop moving.
	updateMovement()
	
	isJumping = false
	areControlsEnabled = false
end

function MasterControl:EnableJump()
	isJumpEnabled = true
	if areControlsEnabled and self.ControlState:IsTouchJumpModuleUsed() then
		self.TouchJumpModule:Enable()
	end
end

function MasterControl:DisableJump()
	isJumpEnabled = false
	if self.ControlState:IsTouchJumpModuleUsed() then
		self.TouchJumpModule:Disable()
	end
end

function MasterControl:AddToPlayerMovement(playerMoveVector)
	moveValue = Vector3.new(moveValue.X + playerMoveVector.X, moveValue.Y + playerMoveVector.Y, moveValue.Z + playerMoveVector.Z)
end

function MasterControl:GetMoveVector()
	return moveValue
end

function MasterControl:SetIsJumping(jumping)
	if not isJumpEnabled then return end
	isJumping = jumping
	local humanoid = self:GetHumanoid()
	if humanoid and not humanoid.PlatformStand then
		humanoid.Jump = isJumping
	end
end

function MasterControl:DoJump()
	if not isJumpEnabled then return end
	local humanoid = self:GetHumanoid()
	if humanoid then
		humanoid.Jump = true
	end
end

function MasterControl:GetClickToMoveFailStateChanged()
	return clickToMoveFailStateChanged
end

return MasterControl

