local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)

local AbilityManager = require(script.Parent.AbilityManager)

local coreSelectLayer = Compositor.newDef("Select")
    :name("Core Select Layer")
    :selection(function(params) return params.state end)
    :transitionDurationSeconds(0.3)

AbilityManager.forEachAbility(function (ability)
    ability.addToCompositor(coreSelectLayer)
end)

-- TODO: Temp solution to support tool blending, refactor along with anchor support
toolAbility = require(script.Parent.Abilities.Tool.Module)
coreSelectLayer = toolAbility.addToCompositor(coreSelectLayer)

return coreSelectLayer