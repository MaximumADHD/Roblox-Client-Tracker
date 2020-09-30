--!nolint ImplicitReturn
--^ DEVTOOLS-4493

-- TODO: RIDE: listing all current keys
-- sworzala 5/29/2020

local MemStorageService = game:GetService("MemStorageService")

local noKey = "Operation Invalid: Must provide key"

local MemStorageEventRequest = {}

local function validate(key)
    if key then
        return true
    end
    warn(noKey)
    return false
end

MemStorageEventRequest.GetValue = function (key)
    if validate(key) then
        return MemStorageService:GetItem(key)
    end
end

MemStorageEventRequest.SetValue = function (key, value)
    if validate(key) then
        MemStorageService:SetItem(key, value)
        return true
    end
    return false
end

return MemStorageEventRequest
