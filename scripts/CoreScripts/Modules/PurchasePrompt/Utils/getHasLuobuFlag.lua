local Root = script.Parent.Parent

local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)

return function()
    return GetFFlagEnableLuobuInGameUpsell()
end
