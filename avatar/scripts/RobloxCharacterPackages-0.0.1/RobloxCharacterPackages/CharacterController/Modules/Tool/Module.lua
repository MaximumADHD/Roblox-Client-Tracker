local moduleFolder = script.parent
local module = require(moduleFolder.parent.parent.ModuleManager).makeModule(moduleFolder)

-- override
function module.addToCompositor(selectLayer)
    -- TODO: special case for tool blending over the main select (refactor with anchors)
    local tool = require(moduleFolder.Compositor)
    return tool:addChild({ weight = 1 }, selectLayer)
end

return module