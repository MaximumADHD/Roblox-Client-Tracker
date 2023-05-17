local FTUX = script.Parent.Parent
local FTUXFeatures = FTUX.Features
local PlatformEnum = require(FTUX.Enums.PlatformEnum)

--Features
local EnableSafetyBubbleDummy = require(FTUXFeatures.EnableSafetyBubbleDummy)
type Platform = PlatformEnum.Platform
function GetFeatures(platform: Platform)
	if platform == PlatformEnum.QuestVR then
		EnableSafetyBubbleDummy()
	end
end

return GetFeatures
