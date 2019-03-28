local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

-- TODO CLIAVATAR-2382: Add paging and get emotes from the HumanoidDescription API
local default = {
    -- TODO: Remove default emotes here for testing
    emotesList = {
        {
            name = "dance",
            image = "rbxassetid://2918826784",
        },
        {
            name = "dance2",
            image = "rbxassetid://2918836324",
        },
        {
            name = "dance3",
            image = "rbxassetid://2918848591",
        },
        {
            name = "wave",
            image = "rbxassetid://2918888315",
        },
        {
            name = "cheer",
            image = "rbxassetid://2910157512",
        },
        {
            name = "laugh",
            image = "rbxassetid://2918865290",
        },
        {
            name = "point",
            image = "rbxassetid://2918874415",
        },
    }
}

return Rodux.createReducer(default, {})