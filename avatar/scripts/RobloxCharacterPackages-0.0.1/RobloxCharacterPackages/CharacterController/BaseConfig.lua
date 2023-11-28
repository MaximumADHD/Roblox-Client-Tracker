local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ConfigManager = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.ConfigManager)
local BaseConfig = {}
local BaseConfigMetatable = { members = {} }

function BaseConfigMetatable:__index(key)
    local privateValue = self.members.privateConfig[key]
    if privateValue ~= nil then
        return privateValue
    end

    -- See if the key has an overridden attribute value on ConfigData
    if self.members.character then
        local config = ConfigManager.getConfig(self.members.character, self.members.path .. "_" .. key)

        if config ~= nil then
            return config
        end
    end

    local publicValue = self.members.publicConfig[key]
    if publicValue ~= nil then
        return publicValue
    end

    return self.members[key]
end

function BaseConfigMetatable:__newindex(key, value)
    local privateValue = self.members.privateConfig[key]
    if privateValue ~= nil then
        return
    end

    -- See if the key has an overridden attribute value on ConfigData
    local publicValue = self.members.publicConfig[key]
    if publicValue ~= nil then
        if self.members.character then
            ConfigManager.setConfig(self.members.character, self.members.path .. "_" .. key, value)
        end
    end

    self.members[key] = value
end

function BaseConfigMetatable.new(character)
    local self = setmetatable({}, BaseConfigMetatable)
    self.character = character
    return self
end

function BaseConfig:extend(path, privateConfig, publicConfig)
    local members = {
        path = path,
        privateConfig = privateConfig,
        publicConfig = publicConfig,
        character = nil
    }

    local ConfigClass = {
        members = members
    }

    setmetatable(ConfigClass, BaseConfigMetatable)

    function ConfigClass.new(character)
        local self = {
            members = table.clone(members)
        }

        setmetatable(self, BaseConfigMetatable)

        self.character = character

        function self:GetConfigChangedSignal(key)
            if self.character then
                return ConfigManager.getConfigChangedSignal(self.character, self.path .. "_" .. key)
            end
        
            return nil
        end
        
        function self:ConfigChanged()
            if self.character then
                return ConfigManager.ConfigChanged(self.character)
            end
        
            return nil
        end

        return self
    end

    return ConfigClass
end

return BaseConfig