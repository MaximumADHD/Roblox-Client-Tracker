return function(draggerContext)
    -- Geometric mode: hover -> select model, alt-hover -> select sub part
    -- Physical mode: hover -> select sub part, alt-hover -> select model
    --                Physical mode has a user setting that will invert this if desired
    local altBehavior = draggerContext:areConstraintsEnabled() and draggerContext:shouldSelectScopeByDefault()
    return altBehavior ~= draggerContext:isAltKeyDown()
end