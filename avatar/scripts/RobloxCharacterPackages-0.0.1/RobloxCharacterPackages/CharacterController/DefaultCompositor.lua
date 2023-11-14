local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Anim = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)

local ModuleManager = require(script.Parent.ModuleManager)

local coreSelectLayer = Anim.newDef("Select")
    :name("Core Select Layer")
    :selection(function(params) return params.state end)
    :transitionDurationSeconds(0.3)

ModuleManager.forEachModule(function (module)
    module.addToCompositor(coreSelectLayer)
end)

-- TODO: Temp solution to support tool blending, refactor along with anchor support
toolModule = require(script.Parent.Modules.Tool.Module)
coreSelectLayer = toolModule.addToCompositor(coreSelectLayer)

return coreSelectLayer