local abilityFolder = script.parent
local module = require(abilityFolder.parent.parent.AbilityManager).makeModule(abilityFolder)

-- Override
function module.addToCompositor(selectLayer)
    -- TODO: Special case for tool blending over the main select (refactor with anchors)
    local tool = require(abilityFolder.Compositor)
    return tool:addChild({ weight = 1 }, selectLayer)
end

return module