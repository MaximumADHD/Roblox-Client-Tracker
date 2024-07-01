local TABLE_TYPE = "table"
local NUMBER_TYPE = "number"
local STRING_TYPE = "string"
local BOOLEAN_TYPE = "boolean"
local BUFFER_TYPE = "buffer"
local INVALID_ARGUMENT = "INVALID_ARGUMENT"
local URL = "Url"
local BODY = "Body"
local REQUEST_TYPE = "Request_Type"

local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local OpenCloudService = game:GetService("OpenCloudService")
local RunService = game:GetService("RunService")

function InvalidArgumentError(message: string) : any 
    return {
        ["StatusCode"] = 400,
        ["Body"] = {
            ["code"] = INVALID_ARGUMENT,
            ["message"] = message
        }
    }
end

function verifyTable(tableArgument, argumentName) : any
    if tableArgument == nil then
        return nil
    end
    
    if typeof(tableArgument) ~= TABLE_TYPE then
        return InvalidArgumentError(`Argument not a table: {argumentName}.`)
    end
    
    return nil
end

function verifyNumber(numberArgument, argumentName) : any
    if numberArgument == nil then
        return nil
    end
    
    if typeof(numberArgument) ~= NUMBER_TYPE then
        return InvalidArgumentError(`Argument not a number: {argumentName}.`)
    end
    
    return nil
end

function verifyString(stringArgument, argumentName) : any
    if stringArgument == nil then
        return nil
    end
    
    if typeof(stringArgument) ~= STRING_TYPE then
        return InvalidArgumentError(`Argument not a string: {argumentName}.`)
    end
    
    return nil
end

function getUrlPrefix()
    if RunService:IsStudio() then
        return "user"
    end
    return "rcc"
end

function verifyListInventoryItemsRequest(listInventoryItemsRequest, argumentName) : any
    if listInventoryItemsRequest == nil then
        return nil
    end
    
    local res = verifyTable(listInventoryItemsRequest, argumentName)
    if res ~= nil then
        return res
    end
    
    if listInventoryItemsRequest.parent == nil then
        return InvalidArgumentError(`Required argument was not provided: {argumentName}.parent.`)
    end
    res = verifyString(listInventoryItemsRequest.parent, `{argumentName}.parent`)
    if res ~= nil then
        return res
    end
    
    res = verifyNumber(listInventoryItemsRequest.maxPageSize, `{argumentName}.maxPageSize`)
    if res ~= nil then
        return res
    end
    
    res = verifyString(listInventoryItemsRequest.pageToken, `{argumentName}.pageToken`)
    if res ~= nil then
        return res
    end
    
    res = verifyString(listInventoryItemsRequest.filter, `{argumentName}.filter`)
    if res ~= nil then
        return res
    end
    
    return nil
end

function listInventoryItemsUrl(listInventoryItemsRequest : any) : string
    local baseUrl = ContentProvider.BaseUrl:lower()
    baseUrl = string.gsub(baseUrl, "http:", "https:")
    local apisUrl = string.gsub(baseUrl, "www", "apis")

    if listInventoryItemsRequest.parent == nil then
        return InvalidArgumentError(`URL parameter provided was nil: listInventoryItemsRequest.parent.`)
    end
    if string.match(listInventoryItemsRequest.parent, "^users/([^/]+)$") == nil then
        return InvalidArgumentError(`URL parameter was not formatted correctly: listInventoryItemsRequest.parent.`)
    end
    
    local url = string.format("%s%s/cloud/v2/%s/inventory-items", apisUrl, getUrlPrefix(), tostring(listInventoryItemsRequest.parent))
    
    if listInventoryItemsRequest.maxPageSize == nil and listInventoryItemsRequest.pageToken == nil and listInventoryItemsRequest.filter == nil then
        return url
    end
    
    local queryParams = {}
    if listInventoryItemsRequest.maxPageSize ~= nil then
        table.insert(queryParams, string.format("maxPageSize=%s", tostring(listInventoryItemsRequest.maxPageSize)))
    end
    if listInventoryItemsRequest.pageToken ~= nil then
        table.insert(queryParams, string.format("pageToken=%s", tostring(listInventoryItemsRequest.pageToken)))
    end
    if listInventoryItemsRequest.filter ~= nil then
        table.insert(queryParams, string.format("filter=%s", tostring(listInventoryItemsRequest.filter)))
    end
    
    url = string.format("%s?%s", url, table.concat(queryParams, "&"))

    return url
end

function listInventoryItems(listInventoryItemsRequest : any)
    if listInventoryItemsRequest == nil then
        return InvalidArgumentError("Request provided was nil.")
    end
    
    local res = verifyListInventoryItemsRequest(listInventoryItemsRequest, `listInventoryItemsRequest`)
    if res ~= nil then
        return res
    end
    
    return OpenCloudService:HttpRequestAsync({[URL] = listInventoryItemsUrl(listInventoryItemsRequest), [REQUEST_TYPE] = "GET"})
end

OpenCloudService:RegisterOpenCloud("v2", "ListInventoryItems", listInventoryItems)

OpenCloudService:RegistrationComplete()
