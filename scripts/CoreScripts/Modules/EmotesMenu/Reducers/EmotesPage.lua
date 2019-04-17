local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

-- TODO CLIAVATAR-2382: Add paging and get emotes from the HumanoidDescription API
local default = {
    -- TODO: Remove default emotes here for testing
    emotesList = {
        {
            name = "dance",
            image = "rbxassetid://2932499139",
        },
        {
            name = "dance2",
            image = "rbxassetid://2932494520",
        },
        {
            name = "dance3",
            image = "rbxassetid://2932481863",
        },
        {
            name = "wave",
            image = "rbxassetid://2932467072",
        },
        {
            name = "cheer",
            image = "rbxassetid://2932503205",
        },
        {
            name = "laugh",
            image = "rbxassetid://2932472095",
        },
        {
            name = "point",
            image = "rbxassetid://2932434746",
        },
    }
}

return Rodux.createReducer(default, {})