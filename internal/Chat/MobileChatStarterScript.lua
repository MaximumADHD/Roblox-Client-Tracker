-- This is the entry point for the Roblox Chat Program

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local ChatMaster = require(Modules.ChatMaster)
local LuaErrorReporter = require(Modules.Common.LuaErrorReporter)

-- start the error observer
-- NOTE - Remove this once we have a shared store across all of the different apps
local ler = LuaErrorReporter.new()
ler:setCurrentApp("Chat")

-- Start the Lua Chat
local chatMaster = ChatMaster.new()
chatMaster:Start()

