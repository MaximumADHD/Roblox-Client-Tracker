
-- TODO mlangen: Remove these lines with FFlagFlippedScopeSelect
local DraggerSchemaCore = script.Parent
local Packages = DraggerSchemaCore.Parent
local DraggerFramework = Packages.DraggerFramework

local getFFlagFlippedScopeSelect = require(DraggerFramework.Flags.getFFlagFlippedScopeSelect)

return function(draggerContext)
    -- Geometric mode: hover -> select model, alt-hover -> select sub part
    -- Physical mode: hover -> select sub part, alt-hover -> select model
    --                Physical mode has a user setting that will invert this if desired
    local altBehavior
    if getFFlagFlippedScopeSelect() then
        altBehavior = draggerContext:areConstraintsEnabled() and draggerContext:shouldSelectScopeByDefault()
    else
        altBehavior = draggerContext:areConstraintsEnabled() and not draggerContext:shouldSelectScopeByDefault()
    end

    return altBehavior ~= draggerContext:isAltKeyDown()
end