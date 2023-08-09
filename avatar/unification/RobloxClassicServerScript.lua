-- RobloxClassicServerScript.lua
-- Server script that brings in each portion of avatar unification and runs it serially

local Character = script.Parent

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RobloxClassicFolder = ReplicatedStorage:WaitForChild("RobloxClassic")

local Scale = require(RobloxClassicFolder:WaitForChild("RobloxClassic_UnificationScale"))
local SetupPhysicsParts = require(RobloxClassicFolder:WaitForChild("RobloxClassic_SetupPhysicsParts"))

-- PhysicsReference.rbxm is set up as { AdapterReference {Left Arm {...}, Right Arm {...},...}, CollisionHead {...} }
-- i.e. CollisionHead and AdapterReference are at then same level
local PhysicsReference = script:WaitForChild("PhysicsReference")
PhysicsReference.Parent = nil

-- Need to wait here due to avatar loading order. If we don't wait a frame,
-- rig building/scaling will be done after this script runs
task.wait()
Scale.ScaleCharacter(Character, Scale.Target)
SetupPhysicsParts.setupCharacter(Character, PhysicsReference)
