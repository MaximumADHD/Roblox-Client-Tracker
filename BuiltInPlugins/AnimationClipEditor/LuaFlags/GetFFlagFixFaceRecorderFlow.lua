local Plugin = script.Parent.Parent
local GetFFlagFacialAnimationRecordingInStudio = require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)

game:DefineFastFlag("ACEFixFaceRecorderFlow", false)

return function()
	return GetFFlagFacialAnimationRecordingInStudio() and game:GetFastFlag("ACEFixFaceRecorderFlow")
end
