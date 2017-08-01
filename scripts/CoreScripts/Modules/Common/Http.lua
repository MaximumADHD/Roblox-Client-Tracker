--[[
                // Http.lua

                // API for making http calls into roblox endpoints
]]
local HttpService = game:GetService('HttpService')
local HttpRbxApiService = game:GetService('HttpRbxApiService')

local Http = {} -- module return table

local BaseUrl = game:GetService('ContentProvider').BaseUrl:lower()
BaseUrl = string.gsub(BaseUrl, "/m.", "/www.")
BaseUrl = string.gsub(BaseUrl, "http://", "https://")

local AssetGameBaseUrl = string.gsub(BaseUrl, "https://www.", "https://assetgame.")


function Http.GetBaseUrl()
    return BaseUrl
end
function Http.GetAssetGameBaseUrl()
    return AssetGameBaseUrl
end

function Http.DecodeJSON(json)
    local success, result = pcall(function()
        return HttpService:JSONDecode(json)
    end)
    if not success then
        print("Http.DecodeJSON() failed because", result, "for input:", json)
        return
    end

    return result
end

function Http.EncodeJSON(jsonTable)
    local success, result = pcall(function()
        return HttpService:JSONEncode(jsonTable)
    end)
    if not success then
        print("Http.EncodeJSON() failed because", result)
        return
    end

    return result
end

function Http.RbxGetAsync(path, returnRaw)
    local success, result = pcall(function()
        return game:HttpGetAsync(path)
    end)
    if not success then
        print("Http.RbxGetAsync() failed because", result, "for path:", path)
        return
    end

    if returnRaw then
        return result
    end
    
    return Http.DecodeJSON(result)
end

function Http.RbxPostAsync(path, returnRaw)
    local success, result = pcall(function()
        return game:HttpPostAsync(path, '')
    end)
    if not success then
        print("Http.RbxPostAsync() failed because", result, "for path:", path)
        return
    end

    if returnRaw then
        return result
    end

    return Http.DecodeJSON(result)
end

function Http.RbxApiGetAsync(path, throttlePriority, returnRaw)
    -- throttlePriority: defaults to Enum.ThrottlingPriority.Default through reflection
    local success, result = pcall(function()
        return HttpRbxApiService:GetAsync(path, throttlePriority)
    end)
    if not success then
        print("Http.RbxApiGetAsync() failed because", result, "for path:", path)
        return
    end

    if returnRaw then
        return result
    end

    return Http.DecodeJSON(result)
end

function Http.RbxApiPostAsync(path, params, throttlePriority, contentType, returnRaw)
    -- throttlePriority: defaults to Enum.ThrottlingPriority.Default through reflection
    -- contentType: defaults to Enum.HttpContentType.ApplicationJson through reflection
    local success, result = pcall(function()
        return HttpRbxApiService:PostAsync(path, params, throttlePriority, contentType)
    end)

    if not success then
        print("Http.RbxApiPostAsync() failed because", result, "for path:", path)
        return
    end

    if returnRaw then
        return result
    end

    return Http.DecodeJSON(result)
end

return Http
