local GetFFlagOldMenuNewIcons = require(script.Parent.GetFFlagOldMenuNewIcons)

game:DefineFastFlag("PlayerListAnimateMic", false)


return function()
    return GetFFlagOldMenuNewIcons() and game:GetFastFlag("PlayerListAnimateMic")
end
