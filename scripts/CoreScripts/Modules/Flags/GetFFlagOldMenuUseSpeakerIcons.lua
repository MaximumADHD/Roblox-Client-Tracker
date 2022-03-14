local GetFFlagOldMenuNewIcons = require(script.Parent.GetFFlagOldMenuNewIcons)

game:DefineFastFlag("OldMenuUseSpeakerIcons", false)

return function()
    return GetFFlagOldMenuNewIcons() and game:GetFastFlag("OldMenuUseSpeakerIcons")
end
