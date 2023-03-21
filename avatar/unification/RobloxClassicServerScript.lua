-- RobloxClassicServerScript.lua
-- Server script that brings in each portion of avatar unification and runs it serially

local Character = script.Parent
local Scale = require(Character:WaitForChild("RobloxClassic_UnificationScale"))
local SetupPhysicsParts = require(Character:WaitForChild("RobloxClassic_SetupPhysicsParts"))

-- Need to wait here due to avatar loading order. If we don't wait a frame,
-- rig building/scaling will be done after this script runs
task.wait()
Scale.ScaleCharacter(Character, Scale.Target, true)
SetupPhysicsParts.setupCharacter(Character)
