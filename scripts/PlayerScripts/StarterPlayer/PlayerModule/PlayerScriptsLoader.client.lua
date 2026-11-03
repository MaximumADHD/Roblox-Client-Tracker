--[[
	PlayerScriptsLoader - This script requires and instantiates the PlayerModule singleton
--]]

local PlayerModuleInternal = require(script.Parent:WaitForChild("PlayerModuleInternal"))
local PlayerModuleInternalInstance = PlayerModuleInternal.new()
PlayerModuleInternalInstance:start()
