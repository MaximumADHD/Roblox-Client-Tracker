-- An interface for Player objects or tables pretending to be Players. 

local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)

return t.union(
    t.instanceIsA("Player"),
    t.interface({
        UserId = t.integer,
        Name = t.string,
        DisplayName = t.string,

        -- While we could use a strict interface and define all of the Player
        -- properties here, there's something like 40 of them and they're
        -- likely to change. Instead, we use a non-strict interface and define
        -- enough that it's unlikely for someone to pass the wrong thing
        -- through by accident.
    })
)
