-- singleton
local fastFlags = require(script.Parent.Parent.FastFlags)

local Fonts = {}

Fonts.BodyText = {Type = Enum.Font.SourceSans, Size = 16}
Fonts.TitleText = {Type = Enum.Font.SourceSansBold, Size = fastFlags.isMorphingPanelWidgetsStandardizationOn() and 22 or 18}

return Fonts