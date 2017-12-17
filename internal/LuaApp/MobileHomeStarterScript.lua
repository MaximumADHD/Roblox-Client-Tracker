-- This is the entry point for the Roblox Home Page

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local HomeMaster = require(Modules.HomeMaster)

-- Start the Lua Home Page
local homeMaster = HomeMaster.new()
homeMaster:Start()