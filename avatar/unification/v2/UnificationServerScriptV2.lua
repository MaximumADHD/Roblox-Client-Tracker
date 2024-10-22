-- UnificationServerScript.lua
-- Server script that brings in each portion of avatar unification. Due to some issues we ran into with modulescripts,
-- we have to instead include them here. Think of this as manual inlining of the code.

local Character = script.Parent

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AvatarUnificationFolder = ReplicatedStorage:WaitForChild("AvatarUnification")
local UnificationScale = require(AvatarUnificationFolder:WaitForChild("UnificationScale"))
local MoveAdapterPartHitboxes = require(AvatarUnificationFolder:WaitForChild("MoveAdapterPartHitboxes"))
local AdaptCharacterPropertiesAndPhysics =
	require(AvatarUnificationFolder:WaitForChild("AdaptCharacterPropertiesAndPhysics"))
local R6CollisionEmulation = require(AvatarUnificationFolder:WaitForChild("R6CollisionEmulation"))
local SetupAdapterParts = require(AvatarUnificationFolder:WaitForChild("SetupAdapterParts"))

-- AdapterReference.rbxm is set up as { AdapterReference {Left Arm {...}, Right Arm {...},...}, CollisionHead {...} }
-- i.e. CollisionHead and AdapterReference are at then same level
local AdapterReference = script:WaitForChild("AdapterReference")
local CollisionHead = script:WaitForChild("CollisionHead")
AdapterReference.Parent = nil
CollisionHead.Parent = nil

-- Need to wait here due to avatar loading order. If we don't wait a frame,
-- rig building/scaling will be done after this script runs
task.wait()
UnificationScale.ScaleCharacter(Character, UnificationScale.UnificationModes.CLAMP_WIDTH)

local adapterParts = SetupAdapterParts.setupCharacter(Character, AdapterReference, CollisionHead)
local adaptCharacter =
	AdaptCharacterPropertiesAndPhysics.adapt(Character, AdaptCharacterPropertiesAndPhysics.ADAPTER_MODES.ALL)
local collisionEmulator = R6CollisionEmulation.emulate(Character, adapterParts.AdapterNameToAdapterPart)
MoveAdapterPartHitboxes.moveHitboxes(Character)

Character:SetAttribute("AVATAR_UNIFICATION_FINISHED", true)

Character.AncestryChanged:Connect(function(_, parent)
	if parent == nil then
		adapterParts:Destroy()
		adaptCharacter:Destroy()
		collisionEmulator:Destroy()
	end
end)
