local Plugin = script.Parent.Parent
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

game:DefineFastFlag("ACEQuaternionChannels", false)

return function()
	return GetFFlagChannelAnimations() and game:GetFastFlag("ACEQuaternionChannels")
end