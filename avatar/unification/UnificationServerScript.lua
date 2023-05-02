-- UnificationServerScript.lua
-- Server script that brings in each portion of avatar unification and runs it serially

local Character = script.Parent
local MoveHitboxes = require(Character:WaitForChild("MoveAdapterPartHitboxes"))
local Scale = require(Character:WaitForChild("UnificationScale"))
local SetupAdapterParts = require(Character:WaitForChild("SetupAdapterParts"))

-- Need to wait here due to avatar loading order. If we don't wait a frame,
-- rig building/scaling will be done after this script runs
task.wait()
SetupAdapterParts.setupCharacter()
Scale.ScaleCharacter(Character, Scale.Target)

MoveHitboxes.moveHitboxes(Character)
