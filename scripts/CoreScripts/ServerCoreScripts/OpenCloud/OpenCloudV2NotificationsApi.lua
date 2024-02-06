local INSTANCE_NAME = "Instance"
local PLAYER_CLASSNAME = "Player"
local NUMBER_TYPE = "number"
local STRING_TYPE = "string"
local USER = "user"
local USER_NOTIFICATION = "userNotification"
local URL = "Url"
local BODY = "Body"
local REQUEST_TYPE = "Request_Type"
local INVALID_ARGUMENT = "INVALID_ARGUMENT"

local OPEN_CLOUD_V2 = "v2"
local CURRENT_REQUEST_TYPE = "POST"

local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local OpenCloudService = game:GetService("OpenCloudService")
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

function verifyUserNotification(userNotificationObject) : any
    if userNotificationObject.path ~= nil then
        local res = verifyString(userNotificationObject.path)
        if res ~= nil then
            return res
        end
    end

    if userNotificationObject.id ~= nil then
        local res = verifyString(userNotificationObject.id)
        if res ~= nil then
            return res
        end
    end

    if userNotificationObject.source ~= nil then
        local res = verifySource(userNotificationObject.source)
        if res ~= nil then
            return res
        end
    end

    if userNotificationObject.payload ~= nil then
        local res = verifyPayload(userNotificationObject.payload)
        if res ~= nil then
            return res
        end
    end

    return nil
end

function verifySource(source) : any
    if source.universe ~= nil then
        local res = verifyString(source.universe)
        if res ~= nil then
            return res
        end
    end

    return nil
end

function verifyPayload(payload) : any
    if payload.type ~= nil then
        local res = verifyString(payload.type)
        if res ~= nil then
            return res
        end
    end

    if payload.messageId ~= nil then
        local res = verifyString(payload.messageId)
        if res ~= nil then
            return res
        end
    end

    if payload.joinExperience ~= nil then
        local res = verifyJoinExperience(payload.joinExperience)
        if res ~= nil then
            return res
        end
    end

    if payload.analyticsData ~= nil then
        local res = verifyAnalyticsData(payload.analyticsData)
        if res ~= nil then
            return res
        end
    end

    if payload.parameters ~= nil then
        local res = verifyParameters(payload.parameters)
        if res ~= nil then
            return res
        end
    end

    return nil
end

function verifyJoinExperience(joinExperience) : any
    if joinExperience.launchData ~= nil then
        local res = verifyString(joinExperience.launchData)
        if res ~= nil then
            return res
        end
    end

    return nil
end

function verifyAnalyticsData(analyticsData) : any
    if analyticsData.category ~= nil then
        local res = verifyString(analyticsData.category)
        if res ~= nil then
            return res
        end
    end

    return nil
end

function verifyParameters(parameters) : any
    for string, parameter in pairs(parameters) do
        local parameterCount = 0
        if parameter.stringValue ~= nil then
            parameterCount = parameterCount + 1
            local res = verifyString(parameter.stringValue)
            if res ~= nil then
                return res
            end
        end
        if parameter.int64Value ~= nil then
            parameterCount = parameterCount + 1
            local res = verifyNumber(parameter.int64Value)
            if res ~= nil then
                return res
            end
        end
        if parameterCount > 1 then
            return returnInvalidArgumentError("Too many parameters provided for oneOf object!")
        end
    end

    return nil
end

function verifyNumber(numberArgument) : any
    if typeof(numberArgument) ~= NUMBER_TYPE then
        return returnInvalidArgumentError("Argument not a number.")
    end
    return nil
end

function verifyString(stringArgument) : any
    if typeof(stringArgument) ~= STRING_TYPE then
        return returnInvalidArgumentError("Argument not a string.")
    end
    return nil
end

function getUrlPrefix()
    if RunService:IsStudio() then
        return "user"
    end
    return "rcc"
end

function createUserNotificationUrl(user : number, userNotification) : string
    local baseUrl = ContentProvider.BaseUrl:lower()
    baseUrl= string.gsub(baseUrl, "http:", "https:")
    local apisUrl = string.gsub(baseUrl, "www", "apis")
    local url = string.format("%s%s/cloud/v2/users/%d/notifications", apisUrl, getUrlPrefix(), user)
    
    return url
end

function userNotification(args : any)
    -- verify user argument.
    if args[USER] ~= nil then
        local check = verifyNumber(args[USER])
        if check ~= nil then
            return check
        end
    end

    -- verify userNotification argument.
    if args[USER_NOTIFICATION] ~= nil then
        local check = verifyUserNotification(args[USER_NOTIFICATION])
        if check ~= nil then
            return check
        end
    end

    local bodyString = HttpService:JSONEncode(args[USER_NOTIFICATION])

    return OpenCloudService:HttpRequestAsync({[URL] = createUserNotificationUrl(args[USER], args[USER_NOTIFICATION]), [REQUEST_TYPE]=CURRENT_REQUEST_TYPE, [BODY] = bodyString})
end

OpenCloudService:RegisterOpenCloud(OPEN_CLOUD_V2, USER_NOTIFICATION, userNotification)
OpenCloudService:RegistrationComplete()
