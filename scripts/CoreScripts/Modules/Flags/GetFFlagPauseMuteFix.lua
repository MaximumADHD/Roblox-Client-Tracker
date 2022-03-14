local GetFFlagOldMenuNewIcons = require(script.Parent.GetFFlagOldMenuNewIcons)

game:DefineFastFlag("PauseMuteFixV2", false)

return function()
    return GetFFlagOldMenuNewIcons() and game:GetFastFlag("PauseMuteFixV2")
end
