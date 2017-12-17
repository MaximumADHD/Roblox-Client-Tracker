-- This is the entry point for the Roblox Games Page

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local GamesMaster = require(Modules.GamesMaster)

-- Start the Lua Games Page
local gamesMaster = GamesMaster.new()
gamesMaster:Start()