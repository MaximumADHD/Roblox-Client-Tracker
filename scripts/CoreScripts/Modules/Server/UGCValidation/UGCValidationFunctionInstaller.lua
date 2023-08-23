-- This installer allows us to run UGC validation on assets in game servers.
local AssetService = game:GetService("AssetService")
local CorePackages = game:GetService("CorePackages")
local UGCValidation = require(CorePackages.UGCValidation)

local function UGCValidationFunction(args)
    local objectInstances = args["instances"]
    local assetTypeEnum = args["assetType"]
    local isServer = args["isServer"]
    local allowUnreviewedAssets = args["allowUnreviewedAssets"]
    local restrictedUserIds = args["restrictedUserIds"]
    local token = args["token"]

    local success, reasons
    success, reasons = UGCValidation.validate(objectInstances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds, token)
    if not success then
        local failureReasonStr = ""
        if reasons then
            failureReasonStr = table.concat(reasons, "\n")
        end
        return false, failureReasonStr
    end

    return true, "Success"
end

local function Install()
    -- Exposes the Lua-side UGC validation scripts to the game-engine code
    -- so that we can trigger UGC validation of any asset from RCC game servers.
    AssetService:RegisterUGCValidationFunction(UGCValidationFunction)
end

return Install