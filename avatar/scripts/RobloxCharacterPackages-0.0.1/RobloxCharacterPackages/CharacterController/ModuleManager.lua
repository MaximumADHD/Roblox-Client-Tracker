local ModuleManager = {}

local modules = script.Parent.Modules

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StylePackModifiers = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.Utils.StylePackModifiers)

-- Verify that the required module script exists and calls the provided function
-- for each module.
function ModuleManager.forEachModule(fn)
    for _, m in ipairs(modules:GetChildren()) do
        local module = m:FindFirstChild("Module")

        if module then
            module = require(module)
        else
            module = ModuleManager.makeModule(m)
        end
        
        local moduleEnabled = module.getConfig().Enabled
        if moduleEnabled then
            fn(module)
        end
    end
end

function ModuleManager.makeModule(moduleFolder)
    -- Main interface for verb modules.
    -- This gets customized based on the structural complexity of the modules.
    -- External scripts expects this as a common interface for all verb modules.
    local module = {}

    -- Adds the module's custom compositor structure under the core compositor.
    function module.addToCompositor(selectLayer)
        if moduleFolder:FindFirstChild("Compositor") then
            local compositor = require(moduleFolder.Compositor)
            for k, subtree in compositor do
                selectLayer:addChild({key = k}, StylePackModifiers.wrapCoreSelectLayer(k, subtree))
            end
        end
    end

    -- Returns the states and transitions associated with the module in the following form:
    -- {state = {s1 = ... , s2 = ...}, transition = {t1 = ... , t2 = ...}}
    -- This can return nil if the module is a stateless verb.
    function module.getStateMachine()
        if moduleFolder:FindFirstChild("StateMachine") then
            return require(moduleFolder.StateMachine)
        end
        return nil
    end

    -- Returns the controller which contains logic for the module.
    -- RunService event in Animate will call Controller:Update every frame.
    -- This can return nil if no per-frame logic needs to be executed.
    function module.getController()
        if moduleFolder:FindFirstChild("Controller") then
            return require(moduleFolder.Controller)
        end
        return nil
    end

    function module.getConfig()
        if moduleFolder:FindFirstChild("Config") then
            return require(moduleFolder.Config)
        end
        return nil
    end

    return module
end

return ModuleManager