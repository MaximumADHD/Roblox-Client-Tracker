local ConfigManager = {}

function formatAttributeNameFromPath(path)
    local res = string.gsub(path, "[.]", "_")
    return res
end

-- Helper function to query into nested table with a sequence of keys
function iterateThroughTableKeys(table, keyString, keys)
    local nextValue = table

    for _, v in keys do
        if not nextValue[v] then
            return nil
        end

        nextValue = nextValue[v]
    end

    return nextValue
end

function ConfigManager.getConfig(character, key)
    if character.ConfigData then
        local attributeKey = formatAttributeNameFromPath(key)

        local attribute = character.ConfigData:GetAttribute(attributeKey)
        if attribute ~= nil then
            return attribute
        end
    end

    return nil
end

function ConfigManager.setConfig(character, key, value)
    if not character then
        warn("ConfigManager.setParam: Character is nil")
        return
    end

    local attributeKey = formatAttributeNameFromPath(key)

    if character:FindFirstChild("ConfigData") then
        character.ConfigData:SetAttribute(attributeKey, value)
    else
        local ConfigData = Instance.new("Script")
        ConfigData.Name = "ConfigData"
        ConfigData:SetAttribute(attributeKey, value)
        ConfigData.Parent = character
    end
end

function ConfigManager.getConfigChangedSignal(character, key)
    if character.ConfigData then
        return character.ConfigData:GetAttributeChangedSignal(formatAttributeNameFromPath(key))
    end

    return nil
end

function ConfigManager.ConfigChanged(character)
    if character.ConfigData then
        return character.ConfigData.AttributeChanged
    end

    return nil
end

return ConfigManager