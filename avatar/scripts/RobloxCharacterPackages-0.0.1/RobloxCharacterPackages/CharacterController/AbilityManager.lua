local AbilityManager = {}

local abilities = script.Parent.Abilities

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StylePackModifiers = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.Utils.StylePackModifiers)

-- Verify that the required module script exists and calls the provided function
-- for each ability.
function AbilityManager.forEachAbility(fn)
    for _, m in ipairs(abilities:GetChildren()) do
        -- Look for a special `Module` script for custom module registration, or
        -- fallback to the functions defined in makeModule().
        local module = m:FindFirstChild("Module")

        if module then
            module = require(module)
        else
            module = AbilityManager.makeModule(m)
        end
        
        local moduleEnabled = module.getConfig().Enabled
        if moduleEnabled then
            fn(module)
        end
    end
end

function AbilityManager.makeModule(abilityFolder)
    -- Main interface for ability modules.
    -- This gets customized based on the structural complexity of the modules.
    -- External scripts expects this as a common interface for all ability modules.
    local module = {}

    -- Adds the module's custom compositor structure under the core compositor.
    function module.addToCompositor(selectLayer)
        if abilityFolder:FindFirstChild("Compositor") then
            local compositor = require(abilityFolder.Compositor)
            for k, subtree in compositor do
                selectLayer:addChild({key = k}, StylePackModifiers.wrapCoreSelectLayer(k, subtree))
            end
        end
    end

    -- Returns the states and transitions associated with the module in the following form:
    -- {state = {s1 = ... , s2 = ...}, transition = {t1 = ... , t2 = ...}}
    -- This can return nil if the module is a stateless ability.
    function module.getStateMachine()
        if abilityFolder:FindFirstChild("StateMachine") then
            return require(abilityFolder.StateMachine)
        end
        return nil
    end

    -- Returns the controller which contains logic for the module.
    -- RunService event in Animate will call Controller:Update every frame.
    -- This can return nil if no per-frame logic needs to be executed.
    function module.getController()
        if abilityFolder:FindFirstChild("Controller") then
            return require(abilityFolder.Controller)
        end
        return nil
    end

    function module.getConfig()
        if abilityFolder:FindFirstChild("Config") then
            return require(abilityFolder.Config)
        end
        return nil
    end

    return module
end

return AbilityManager