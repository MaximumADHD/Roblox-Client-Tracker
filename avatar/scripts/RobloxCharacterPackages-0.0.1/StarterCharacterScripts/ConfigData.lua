local ReplicatedStorage = game:GetService("ReplicatedStorage")
local abilities = ReplicatedStorage.RobloxCharacterPackages.CharacterController.Abilities
local abilityManager = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.AbilityManager)

local ConfigData = {}

for _, ability in ipairs(abilities:GetChildren()) do
    local module = abilityManager.makeModule(ability)
    if module.getConfig() then
        ConfigData[ability.Name] = module.getConfig().new(script.Parent)
    end
end

return ConfigData