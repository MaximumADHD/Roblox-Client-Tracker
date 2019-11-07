--[[
	Send all package permission information to endpoint.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local KeyConverter = require(Plugin.Core.Util.Permissions.KeyConverter)
local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

local ClearChange = require(Plugin.Core.Actions.ClearChange)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

local function serializeForRequest(changedPermissions, groupMetadata, assetVersionNumber)
    local changes = {}

	changes[PermissionsConstants.GroupSubjectKey] = {}
	for subjectType,_ in pairs(changedPermissions) do
		changes[subjectType] = {}
	end
    
    if changedPermissions and next(changedPermissions) ~= nil then
        for subjectType,permissions in pairs(changedPermissions) do
            for subjectId,permission in pairs(permissions) do
                changes[subjectType][subjectId] = {Action = permission[PermissionsConstants.ActionKey]}
            end
        end
    end

    if groupMetadata and next(groupMetadata) ~= nil then
        for groupId,metadata in pairs(groupMetadata) do
            changes[PermissionsConstants.GroupSubjectKey][groupId] = changes[PermissionsConstants.GroupSubjectKey][groupId] or {}
            changes[PermissionsConstants.GroupSubjectKey][groupId] = {Action = metadata.Action}
        end
    end

    local permissions = {}
	for subjectType,subjectTypeChanges in pairs(changes) do
        for subjectId,change in pairs(subjectTypeChanges) do
            table.insert(permissions, {
                [webKeys.SubjectType] = KeyConverter.getWebSubjectType(subjectType),
                [webKeys.SubjectId] = subjectId,
                [webKeys.Action] = KeyConverter.getWebAction(change.Action),
                [webKeys.UpToVersion] = assetVersionNumber,
            })
        end
    end

    return permissions
end

return function(networkInterface, assetId, assetVersionNumber)
    return function(store)
        local permissions = serializeForRequest(store:getState().changed.permissions, store:getState().groupMetadata, assetVersionNumber)
        return networkInterface:putPackagePermissions(assetId, permissions):andThen(
            function(result)
                store:dispatch(ClearChange("permissions"))
            end,
            function(error)
                store:dispatch(NetworkError(result))
            end
        )
	end
end