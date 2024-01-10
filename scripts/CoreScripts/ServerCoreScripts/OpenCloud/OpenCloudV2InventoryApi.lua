local INSTANCE_NAME = "Instance"
local PLAYER_CLASSNAME = "Player"
local NUMBER_TYPE = "number"
local STRING_TYPE = "string"
local USER = "user"
local MAX_PAGE_SIZE = "maxPageSize"
local PAGE_TOKEN = "pageToken"
local FILTER = "filter"
local URL = "Url"
local REQUEST_TYPE = "Request_Type"
local INVALID_ARGUMENT = "INVALID_ARGUMENT"

local OPEN_CLOUD_V2 = "v2"
local LIST_INVENTORY_ITEMS = "listInventoryItems"
local CURRENT_REQUEST_TYPE = "GET"

local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local OpenCloudService = game:GetService("OpenCloudService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

function returnInvalidArgumentError(msg : string) : any 
    return {
        ["StatusCode"] = 400,
        ["Body"] = HttpService:JSONEncode({
            ["code"] = INVALID_ARGUMENT,
            ["message"] = msg
        })
    }
end

function verifyPlayerOnServer(playerInstance: Player) : any
    local res = verifyPlayer(playerInstance)
    if res ~= nil then
        return res
    end

    local players = Players:GetPlayers()
    for _, player in ipairs(players) do
        if player.UserId == playerInstance.UserId then
            return nil
        end
    end

    return returnInvalidArgumentError("Player not found on server.")
end

function verifyPlayer(playerInstance : Player) : any
    if typeof(playerInstance) ~= INSTANCE_NAME  or playerInstance.ClassName ~= PLAYER_CLASSNAME then
        return returnInvalidArgumentError("user argument not a Player instance.")
    end
    return nil
end

function verifyString(stringArgument) : any
    if typeof(stringArgument) ~= STRING_TYPE then
        return returnInvalidArgumentError("Argument not a string.")
    end
    return nil
end

function verifyNumber(numberArgument) : any
    if typeof(numberArgument) ~= NUMBER_TYPE then
        return returnInvalidArgumentError("Argument not a number.")
    end
    return nil
end

function getUrlPrefix()
    if RunService:IsStudio() then
        return "user"
    end
    return "rcc"
end

function createListInventoryItemsUrl(user : number, maxPageSize : number?, pageToken : string?, filter : string?) : string
    local baseUrl = ContentProvider.BaseUrl:lower()
    baseUrl= string.gsub(baseUrl, "http:", "https:")
    local apisUrl = string.gsub(baseUrl, "www", "apis")
    local url = string.format("%s%s/cloud/v2/users/%d/inventory-items", apisUrl, getUrlPrefix(), user)
    
    if maxPageSize == nil and pageToken == nil and filter == nil then
        return url
    end
    
    local queryParams = {}

    if maxPageSize ~= nil then
        table.insert(queryParams, string.format("maxPageSize=%d", maxPageSize))
    end
    if pageToken ~= nil then
        table.insert(queryParams, string.format("pageToken=%s", pageToken))
    end
    if filter ~= nil then
        table.insert(queryParams, string.format("filter=%s", filter))
    end
    url = string.format("%s?%s", url, table.concat(queryParams, "&"))
    return url
end

function listInventoryItems(args : any)
    -- verify user argument.
        if args[USER] == nil then
            return returnInvalidArgumentError("user argument was not provided.")
        end

        local check = verifyPlayerOnServer(args[USER])
        if check ~= nil then
            return check
        end

    -- verify maxPageSize argument.
    if args[MAX_PAGE_SIZE] ~= nil then
        check = verifyNumber(args[MAX_PAGE_SIZE])
        if check ~= nil then
            return check
        end
    end

    -- verify pageToken argument.
    if args[PAGE_TOKEN] ~= nil then
        check = verifyString(args[PAGE_TOKEN])
        if check ~= nil then
            return check
        end
    end

    -- verify filter argument.
    if args[FILTER] ~= nil then
        check = verifyString(args[FILTER])
        if check ~= nil then
            return check
        end
    end

    return OpenCloudService:HttpRequestAsync({[URL] = createListInventoryItemsUrl(args[USER].UserId, args[MAX_PAGE_SIZE], args[PAGE_TOKEN], args[FILTER]), [REQUEST_TYPE]=CURRENT_REQUEST_TYPE})
end

OpenCloudService:RegisterOpenCloud(OPEN_CLOUD_V2, LIST_INVENTORY_ITEMS, listInventoryItems)
OpenCloudService:RegistrationComplete()