local Modules = game:GetService("CoreGui").RobloxGui.Modules

local GetFFlagLuaAppEnableSessionChangeEvents = require(Modules.LuaApp.Flags.GetFFlagLuaAppEnableSessionChangeEvents)

game:DefineFastFlag("FixProfileJoinGameData", false)

return function()
	return GetFFlagLuaAppEnableSessionChangeEvents() and game:GetFastFlag("FixProfileJoinGameData")
end
