local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(equippedEmotes)
    return {
        equippedEmotes = equippedEmotes,
    }
end)
