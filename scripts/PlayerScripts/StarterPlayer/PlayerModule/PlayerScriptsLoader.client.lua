--[[
	PlayerScriptsLoader - This script requires and instantiates the PlayerModule singleton
--]]

local FlagUtil = require(script.Parent:WaitForChild("CommonUtils")).get("FlagUtil")
local FFlagUserControlModuleEnabledAPI = FlagUtil.getUserFlag("UserControlModuleEnabledAPI")

if FFlagUserControlModuleEnabledAPI then
	local PlayerModuleInternal = require(script.Parent:WaitForChild("PlayerModuleInternal"))
	local PlayerModuleInternalInstance = PlayerModuleInternal.new()
	PlayerModuleInternalInstance:start()
else
	-- Legacy path: requiring PlayerModule starts the internal singleton as a side effect.
	require(script.Parent)
end
