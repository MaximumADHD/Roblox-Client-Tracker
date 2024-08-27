local TABLE_TYPE = "table"
local NUMBER_TYPE = "number"
local STRING_TYPE = "string"
local BOOLEAN_TYPE = "boolean"
local BUFFER_TYPE = "buffer"
local INVALID_ARGUMENT = "INVALID_ARGUMENT"
local URL = "Url"
local BODY = "Body"
local REQUEST_TYPE = "Request_Type"
local NIL_REQUEST_ERROR_MESSAGE = "Request provided was nil."

local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local OpenCloudService = game:GetService("OpenCloudService")
local RunService = game:GetService("RunService")

function InvalidArgumentError(message: string) : any 
    return {
        ["StatusCode"] = 400,
        ["Body"] = HttpService:JSONEncode({
            ["code"] = INVALID_ARGUMENT,
            ["message"] = message
        })
    }
end

--[[
    All of the verify functions (verifyString, verifyGetUserRequest, etc.) either return:
    
        1. nil if the argument follows the correct types
        
        2. an InvalidArgumentError if there is any part that is an incorrect type
           (still a valid response but indicates that an invalid argument was provided)
]]
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

function verifyEnum(enumArgument, argumentName) : any
    if enumArgument == nil then
        return nil
    end
    
    if typeof(enumArgument) ~= NUMBER_TYPE and typeof(enumArgument) ~= STRING_TYPE then
        return InvalidArgumentError(`Argument not an enum: {argumentName}.`)
    end
    
    return nil
end

function getApisUrl()
    local baseUrl = ContentProvider.BaseUrl:lower()
    baseUrl = string.gsub(baseUrl, "http:", "https:")
    return string.gsub(baseUrl, "www", "apis")
end

function getUrlPrefix()
    if RunService:IsStudio() then
        return "user"
    end
    return "rcc"
end

function verifyGetUniverseRequest(getUniverseRequest, argumentName) : any
    if getUniverseRequest == nil then
        return nil
    end
    
    local res = verifyTable(getUniverseRequest, argumentName)
    if res ~= nil then
        return res
    end
    
    if getUniverseRequest.path == nil then
        return InvalidArgumentError(`Required argument was not provided: {argumentName}.path.`)
    end
    res = verifyString(getUniverseRequest.path, `{argumentName}.path`)
    if res ~= nil then
        return res
    end
    
    return nil
end

function getUniverseUrl(getUniverseRequest : any) : string
    if getUniverseRequest.path == nil then
        return InvalidArgumentError(`URL parameter provided was nil: getUniverseRequest.path.`)
    end
    if string.match(getUniverseRequest.path, "^universes/([^/]+)$") == nil then
        return InvalidArgumentError(`URL parameter was not formatted correctly: getUniverseRequest.path.`)
    end
    
    local url = string.format("%s%s/cloud/v2/%s", getApisUrl(), getUrlPrefix(), tostring(getUniverseRequest.path))
    
    return url
end

function getUniverse(getUniverseRequest : any)
    if getUniverseRequest == nil then
        return InvalidArgumentError(NIL_REQUEST_ERROR_MESSAGE)
    end
    
    local res = verifyGetUniverseRequest(getUniverseRequest, `getUniverseRequest`)
    if res ~= nil then
        return res
    end

    local url = getUniverseUrl(getUniverseRequest)
    if typeof(url) ~= STRING_TYPE then
        return url
    end

    return OpenCloudService:HttpRequestAsync({[URL] = url, [REQUEST_TYPE] = "GET"})
end

OpenCloudService:RegisterOpenCloud("v2", "GetUniverse", getUniverse)

function verifyGetPlaceRequest(getPlaceRequest, argumentName) : any
    if getPlaceRequest == nil then
        return nil
    end
    
    local res = verifyTable(getPlaceRequest, argumentName)
    if res ~= nil then
        return res
    end
    
    if getPlaceRequest.path == nil then
        return InvalidArgumentError(`Required argument was not provided: {argumentName}.path.`)
    end
    res = verifyString(getPlaceRequest.path, `{argumentName}.path`)
    if res ~= nil then
        return res
    end
    
    return nil
end

function getPlaceUrl(getPlaceRequest : any) : string
    if getPlaceRequest.path == nil then
        return InvalidArgumentError(`URL parameter provided was nil: getPlaceRequest.path.`)
    end
    if string.match(getPlaceRequest.path, "^universes/([^/]+)/places/([^/]+)$") == nil then
        return InvalidArgumentError(`URL parameter was not formatted correctly: getPlaceRequest.path.`)
    end
    
    local url = string.format("%s%s/cloud/v2/%s", getApisUrl(), getUrlPrefix(), tostring(getPlaceRequest.path))
    
    return url
end

function getPlace(getPlaceRequest : any)
    if getPlaceRequest == nil then
        return InvalidArgumentError(NIL_REQUEST_ERROR_MESSAGE)
    end
    
    local res = verifyGetPlaceRequest(getPlaceRequest, `getPlaceRequest`)
    if res ~= nil then
        return res
    end

    local url = getPlaceUrl(getPlaceRequest)
    if typeof(url) ~= STRING_TYPE then
        return url
    end

    return OpenCloudService:HttpRequestAsync({[URL] = url, [REQUEST_TYPE] = "GET"})
end

OpenCloudService:RegisterOpenCloud("v2", "GetPlace", getPlace)

function verifyGetGroupRequest(getGroupRequest, argumentName) : any
    if getGroupRequest == nil then
        return nil
    end
    
    local res = verifyTable(getGroupRequest, argumentName)
    if res ~= nil then
        return res
    end
    
    if getGroupRequest.path == nil then
        return InvalidArgumentError(`Required argument was not provided: {argumentName}.path.`)
    end
    res = verifyString(getGroupRequest.path, `{argumentName}.path`)
    if res ~= nil then
        return res
    end
    
    return nil
end

function getGroupUrl(getGroupRequest : any) : string
    if getGroupRequest.path == nil then
        return InvalidArgumentError(`URL parameter provided was nil: getGroupRequest.path.`)
    end
    if string.match(getGroupRequest.path, "^groups/([^/]+)$") == nil then
        return InvalidArgumentError(`URL parameter was not formatted correctly: getGroupRequest.path.`)
    end
    
    local url = string.format("%s%s/cloud/v2/%s", getApisUrl(), getUrlPrefix(), tostring(getGroupRequest.path))
    
    return url
end

function getGroup(getGroupRequest : any)
    if getGroupRequest == nil then
        return InvalidArgumentError(NIL_REQUEST_ERROR_MESSAGE)
    end
    
    local res = verifyGetGroupRequest(getGroupRequest, `getGroupRequest`)
    if res ~= nil then
        return res
    end

    local url = getGroupUrl(getGroupRequest)
    if typeof(url) ~= STRING_TYPE then
        return url
    end

    return OpenCloudService:HttpRequestAsync({[URL] = url, [REQUEST_TYPE] = "GET"})
end

OpenCloudService:RegisterOpenCloud("v2", "GetGroup", getGroup)

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
    if listInventoryItemsRequest.parent == nil then
        return InvalidArgumentError(`URL parameter provided was nil: listInventoryItemsRequest.parent.`)
    end
    if string.match(listInventoryItemsRequest.parent, "^users/([^/]+)$") == nil then
        return InvalidArgumentError(`URL parameter was not formatted correctly: listInventoryItemsRequest.parent.`)
    end
    
    local url = string.format("%s%s/cloud/v2/%s/inventory-items", getApisUrl(), getUrlPrefix(), tostring(listInventoryItemsRequest.parent))
    
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
        return InvalidArgumentError(NIL_REQUEST_ERROR_MESSAGE)
    end
    
    local res = verifyListInventoryItemsRequest(listInventoryItemsRequest, `listInventoryItemsRequest`)
    if res ~= nil then
        return res
    end

    local url = listInventoryItemsUrl(listInventoryItemsRequest)
    if typeof(url) ~= STRING_TYPE then
        return url
    end

    return OpenCloudService:HttpRequestAsync({[URL] = url, [REQUEST_TYPE] = "GET"})
end

OpenCloudService:RegisterOpenCloud("v2", "ListInventoryItems", listInventoryItems)

function verifyListGroupMembershipsRequest(listGroupMembershipsRequest, argumentName) : any
    if listGroupMembershipsRequest == nil then
        return nil
    end
    
    local res = verifyTable(listGroupMembershipsRequest, argumentName)
    if res ~= nil then
        return res
    end
    
    if listGroupMembershipsRequest.parent == nil then
        return InvalidArgumentError(`Required argument was not provided: {argumentName}.parent.`)
    end
    res = verifyString(listGroupMembershipsRequest.parent, `{argumentName}.parent`)
    if res ~= nil then
        return res
    end
    
    res = verifyNumber(listGroupMembershipsRequest.maxPageSize, `{argumentName}.maxPageSize`)
    if res ~= nil then
        return res
    end
    
    res = verifyString(listGroupMembershipsRequest.pageToken, `{argumentName}.pageToken`)
    if res ~= nil then
        return res
    end
    
    res = verifyString(listGroupMembershipsRequest.filter, `{argumentName}.filter`)
    if res ~= nil then
        return res
    end
    
    return nil
end

function listGroupMembershipsUrl(listGroupMembershipsRequest : any) : string
    if listGroupMembershipsRequest.parent == nil then
        return InvalidArgumentError(`URL parameter provided was nil: listGroupMembershipsRequest.parent.`)
    end
    if string.match(listGroupMembershipsRequest.parent, "^groups/([^/]+)$") == nil then
        return InvalidArgumentError(`URL parameter was not formatted correctly: listGroupMembershipsRequest.parent.`)
    end
    
    local url = string.format("%s%s/cloud/v2/%s/memberships", getApisUrl(), getUrlPrefix(), tostring(listGroupMembershipsRequest.parent))
    
    if listGroupMembershipsRequest.maxPageSize == nil and listGroupMembershipsRequest.pageToken == nil and listGroupMembershipsRequest.filter == nil then
        return url
    end
    
    local queryParams = {}
    if listGroupMembershipsRequest.maxPageSize ~= nil then
        table.insert(queryParams, string.format("maxPageSize=%s", tostring(listGroupMembershipsRequest.maxPageSize)))
    end
    if listGroupMembershipsRequest.pageToken ~= nil then
        table.insert(queryParams, string.format("pageToken=%s", tostring(listGroupMembershipsRequest.pageToken)))
    end
    if listGroupMembershipsRequest.filter ~= nil then
        table.insert(queryParams, string.format("filter=%s", tostring(listGroupMembershipsRequest.filter)))
    end
    
    url = string.format("%s?%s", url, table.concat(queryParams, "&"))

    return url
end

function listGroupMemberships(listGroupMembershipsRequest : any)
    if listGroupMembershipsRequest == nil then
        return InvalidArgumentError(NIL_REQUEST_ERROR_MESSAGE)
    end
    
    local res = verifyListGroupMembershipsRequest(listGroupMembershipsRequest, `listGroupMembershipsRequest`)
    if res ~= nil then
        return res
    end

    local url = listGroupMembershipsUrl(listGroupMembershipsRequest)
    if typeof(url) ~= STRING_TYPE then
        return url
    end

    return OpenCloudService:HttpRequestAsync({[URL] = url, [REQUEST_TYPE] = "GET"})
end

OpenCloudService:RegisterOpenCloud("v2", "ListGroupMemberships", listGroupMemberships)

function verifyGetOperationRequest(getOperationRequest, argumentName) : any
    if getOperationRequest == nil then
        return nil
    end
    
    local res = verifyTable(getOperationRequest, argumentName)
    if res ~= nil then
        return res
    end
    
    if getOperationRequest.path == nil then
        return InvalidArgumentError(`Required argument was not provided: {argumentName}.path.`)
    end
    res = verifyString(getOperationRequest.path, `{argumentName}.path`)
    if res ~= nil then
        return res
    end
    
    return nil
end

function getOperationUrl(getOperationRequest : any) : string
    if getOperationRequest.path == nil then
        return InvalidArgumentError(`URL parameter provided was nil: getOperationRequest.path.`)
    end
    if string.match(getOperationRequest.path, "^users/([^/]+)/operations/([^/]+)$") == nil then
        return InvalidArgumentError(`URL parameter was not formatted correctly: getOperationRequest.path.`)
    end
    
    local url = string.format("%s%s/cloud/v2/%s", getApisUrl(), getUrlPrefix(), tostring(getOperationRequest.path))
    
    return url
end

function getOperation(getOperationRequest : any)
    if getOperationRequest == nil then
        return InvalidArgumentError(NIL_REQUEST_ERROR_MESSAGE)
    end
    
    local res = verifyGetOperationRequest(getOperationRequest, `getOperationRequest`)
    if res ~= nil then
        return res
    end

    local url = getOperationUrl(getOperationRequest)
    if typeof(url) ~= STRING_TYPE then
        return url
    end

    return OpenCloudService:HttpRequestAsync({[URL] = url, [REQUEST_TYPE] = "GET"})
end

OpenCloudService:RegisterOpenCloud("v2", "GetOperation", getOperation)

function verifyGenerateUserThumbnailRequest(generateUserThumbnailRequest, argumentName) : any
    if generateUserThumbnailRequest == nil then
        return nil
    end
    
    local res = verifyTable(generateUserThumbnailRequest, argumentName)
    if res ~= nil then
        return res
    end
    
    if generateUserThumbnailRequest.path == nil then
        return InvalidArgumentError(`Required argument was not provided: {argumentName}.path.`)
    end
    res = verifyString(generateUserThumbnailRequest.path, `{argumentName}.path`)
    if res ~= nil then
        return res
    end
    
    res = verifyNumber(generateUserThumbnailRequest.size, `{argumentName}.size`)
    if res ~= nil then
        return res
    end
    
    res = verifyEnum(generateUserThumbnailRequest.format, `{argumentName}.format`)
    if res ~= nil then
        return res
    end
    
    res = verifyEnum(generateUserThumbnailRequest.shape, `{argumentName}.shape`)
    if res ~= nil then
        return res
    end
    
    return nil
end

function generateUserThumbnailUrl(generateUserThumbnailRequest : any) : string
    if generateUserThumbnailRequest.path == nil then
        return InvalidArgumentError(`URL parameter provided was nil: generateUserThumbnailRequest.path.`)
    end
    if string.match(generateUserThumbnailRequest.path, "^users/([^/]+)$") == nil then
        return InvalidArgumentError(`URL parameter was not formatted correctly: generateUserThumbnailRequest.path.`)
    end
    
    local url = string.format("%s%s/cloud/v2/%s:generateThumbnail", getApisUrl(), getUrlPrefix(), tostring(generateUserThumbnailRequest.path))
    
    if generateUserThumbnailRequest.size == nil and generateUserThumbnailRequest.format == nil and generateUserThumbnailRequest.shape == nil then
        return url
    end
    
    local queryParams = {}
    if generateUserThumbnailRequest.size ~= nil then
        table.insert(queryParams, string.format("size=%s", tostring(generateUserThumbnailRequest.size)))
    end
    if generateUserThumbnailRequest.format ~= nil then
        table.insert(queryParams, string.format("format=%s", tostring(generateUserThumbnailRequest.format)))
    end
    if generateUserThumbnailRequest.shape ~= nil then
        table.insert(queryParams, string.format("shape=%s", tostring(generateUserThumbnailRequest.shape)))
    end
    
    url = string.format("%s?%s", url, table.concat(queryParams, "&"))

    return url
end

function generateUserThumbnail(generateUserThumbnailRequest : any)
    if generateUserThumbnailRequest == nil then
        return InvalidArgumentError(NIL_REQUEST_ERROR_MESSAGE)
    end
    
    local res = verifyGenerateUserThumbnailRequest(generateUserThumbnailRequest, `generateUserThumbnailRequest`)
    if res ~= nil then
        return res
    end

    local url = generateUserThumbnailUrl(generateUserThumbnailRequest)
    if typeof(url) ~= STRING_TYPE then
        return url
    end

    return OpenCloudService:HttpRequestAsync({[URL] = url, [REQUEST_TYPE] = "GET"})
end

OpenCloudService:RegisterOpenCloud("v2", "GenerateUserThumbnail", generateUserThumbnail)

OpenCloudService:RegistrationComplete()
