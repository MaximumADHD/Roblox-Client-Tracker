local Plugin = script.Parent.Parent
local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

game:DefineFastFlag("ACEChannelAnimations", false)

return function()
	return GetFFlagUseTicks() and game:GetFastFlag("ACEChannelAnimations")
end