--[[
	Get all the collaborators that a give package asset has been shared with.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local SetCollaborators = require(Actions.SetCollaborators)
local NetworkError = require(Actions.NetworkError)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Packages = Plugin.Packages
local Promise
if FFlagToolboxDeduplicatePackages then
	Promise = require(Packages.Framework).Util.Promise
else
	Promise = require(Plugin.Libs.Framework).Util.Promise
end


local KeyConverter = require(Plugin.Core.Util.Permissions.KeyConverter)
local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

local ProximityPromptService = game:GetService("ProximityPromptService")
local PlayersService = game:GetService("Players")

local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local FFlagUseNewAssetPermissionEndpoint2 = game:GetFastFlag("UseNewAssetPermissionEndpoint2")

local function DEPRECATED_deserializeResult(collaboratorsGETResults)
	local collaborators = {
        [PermissionsConstants.UserSubjectKey] = {},
        [PermissionsConstants.RoleSubjectKey] = {},
    }

    for _,webItem in pairs(collaboratorsGETResults) do      
        if webItem[webKeys.SubjectType] == webKeys.UserSubject then
            collaborators[PermissionsConstants.UserSubjectKey][webItem[webKeys.SubjectId]] = {
                [PermissionsConstants.SubjectNameKey] = PlayersService:GetNameFromUserIdAsync(webItem[webKeys.SubjectId]),
                [PermissionsConstants.SubjectIdKey] = webItem[webKeys.SubjectId],
                [PermissionsConstants.ActionKey] = KeyConverter.getInternalAction(webItem[webKeys.Action]),
            }
        else
            collaborators[PermissionsConstants.RoleSubjectKey][webItem[webKeys.SubjectId]] = {
                [PermissionsConstants.ActionKey] = KeyConverter.getInternalAction(webItem[webKeys.Action]),
            }
        end
	end

	return collaborators
end

local function deserializeResponse(responseBody)
	local collaborators = {
        [PermissionsConstants.UserSubjectKey] = {},
        [PermissionsConstants.RoleSubjectKey] = {}
    }

    for _, webItem in pairs(responseBody.results) do
        if webItem[webKeys.SubjectType] == webKeys.UserSubject then
            collaborators[PermissionsConstants.UserSubjectKey][webItem[webKeys.SubjectId]] = {
                [PermissionsConstants.SubjectNameKey] = PlayersService:GetNameFromUserIdAsync(webItem[webKeys.SubjectId]),
                [PermissionsConstants.SubjectIdKey] = webItem[webKeys.SubjectId],
                [PermissionsConstants.ActionKey] = KeyConverter.getInternalAction(webItem[webKeys.Action]),
            }
        else
            collaborators[PermissionsConstants.RoleSubjectKey][tonumber(webItem[webKeys.SubjectId])] = {
                [PermissionsConstants.ActionKey] = KeyConverter.getInternalAction(webItem[webKeys.Action]),
            }
        end
    end

	return collaborators
end


return function(networkInterface, assetId)
	return function(store)
        if FFlagUseNewAssetPermissionEndpoint2 then
            return networkInterface:getAssetPermissions(assetId):andThen(
                function(result) 
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        Analytics.sendResultToKibana(result)
                    end
                    local deserializeResultData = deserializeResponse(result.responseBody)

                    store:dispatch(SetCollaborators(deserializeResultData))
                end,
                function(err)
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        Analytics.sendResultToKibana(err)
                    end
                    store:dispatch(NetworkError(err))
                end
            )
        else
            return networkInterface:getPackageCollaborators(assetId):andThen(
                function(result)
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        Analytics.sendResultToKibana(result)
                    end
                    local resultData = HttpService:JSONDecode(result.responseBody).data
                    local deserializeResultData = DEPRECATED_deserializeResult(resultData)

                    store:dispatch(SetCollaborators(deserializeResultData))
                end,
                function(err)
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        Analytics.sendResultToKibana(err)
                    end
                    store:dispatch(NetworkError(err))
                end
            )
        end
	end
end