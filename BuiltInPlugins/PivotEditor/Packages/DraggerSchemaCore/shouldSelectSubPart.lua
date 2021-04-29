local getFFlagEnablePhysicalFreeFormDragger = require(script.Parent.Parent.DraggerFramework.Flags.getFFlagEnablePhysicalFreeFormDragger)

return function(draggerContext)
    if getFFlagEnablePhysicalFreeFormDragger() then
        -- Geometric mode: hover -> select model, alt-hover -> select sub part
        -- Physical mode: hover -> select sub part, alt-hover -> select model
        --                Physical mode has a user setting that will invert this if desired

        local altBehavior = draggerContext:areConstraintsEnabled() and not draggerContext:shouldSelectScopeByDefault()

        return altBehavior ~= draggerContext:isAltKeyDown()
    else
        return draggerContext:isAltKeyDown()
    end
end