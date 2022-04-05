local Plugin = script.Parent.Parent
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

game:DefineFastFlag("ACEQuaternionsUI", false)

return function()
	return GetFFlagChannelAnimations() and game:GetFastFlag("ACEQuaternionsUI")
end