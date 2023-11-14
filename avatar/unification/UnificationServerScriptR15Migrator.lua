-- UnificationServerScript.lua
-- Server script that brings in each portion of avatar unification. Due to some issues we ran into with modulescripts,
-- we have to instead include them here. Think of this as manual inlining of the code.

local Character = script.Parent

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AvatarUnificationFolder = ReplicatedStorage:WaitForChild("AvatarUnification")
local SetupAdapterParts = require(AvatarUnificationFolder:WaitForChild("SetupAdapterParts"))

-- AdapterReference.rbxm is set up as { AdapterReference {Left Arm {...}, Right Arm {...},...}, CollisionHead {...} }
-- i.e. CollisionHead and AdapterReference are at then same level
local AdapterReference = script:WaitForChild("AdapterReference")
AdapterReference.Parent = nil

-- Need to wait here due to avatar loading order. If we don't wait a frame,
-- rig building/scaling will be done after this script runs
task.wait()
local tables = SetupAdapterParts.setupCharacter(Character, AdapterReference)
