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

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local Packages = Plugin.Packages
local Promise = require(Packages.Framework).Util.Promise

local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")

local RevokeSubjectAction = KeyConverter.getWebAction(PermissionsConstants.NoAccessKey)

local function serializeForRequest(changedPermissions, groupMetadata, assetVersionNumber)
	local changes = {}

	changes[PermissionsConstants.GroupSubjectKey] = {}

	if changedPermissions and next(changedPermissions) ~= nil then
		for subjectType, _ in pairs(changedPermissions) do
			changes[subjectType] = {}
		end

		for subjectType, permissions in pairs(changedPermissions) do
			for subjectId, permission in pairs(permissions) do
				changes[subjectType][subjectId] = { Action = permission[PermissionsConstants.ActionKey] }
			end
		end
	end

	if groupMetadata and next(groupMetadata) ~= nil then
		for groupId, metadata in pairs(groupMetadata) do
			changes[PermissionsConstants.GroupSubjectKey][groupId] = changes[PermissionsConstants.GroupSubjectKey][groupId]
				or {}
			changes[PermissionsConstants.GroupSubjectKey][groupId] = { Action = metadata.Action }
		end
	end

	local permissions = {}
	for subjectType, subjectTypeChanges in pairs(changes) do
		for subjectId, change in pairs(subjectTypeChanges) do
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

local function serializeForGrantAssetPermissionRequest(changedPermissions, groupMetadata)
	local permissions = serializeForRequest(changedPermissions, groupMetadata)
	local filteredPermissions = { [webKeys.Requests] = {} }
	local requests = filteredPermissions[webKeys.Requests]

	for _, permission in pairs(permissions) do
		local subjectAction = permission[webKeys.Action]

		if subjectAction ~= RevokeSubjectAction then
			table.insert(requests, {
				[webKeys.SubjectType] = KeyConverter.getAssetPermissionSubjectType(permission[webKeys.SubjectType]),
				[webKeys.SubjectId] = permission[webKeys.SubjectId],
				[webKeys.Action] = KeyConverter.getAssetPermissionAction(permission[webKeys.Action]),
			})
		end
	end

	return filteredPermissions
end

local function serializeForRevokeAssetPermissionRequest(changedPermissions, groupMetadata, originalCollaborators)
	local permissions = serializeForRequest(changedPermissions, groupMetadata)
	local originalPermissions = serializeForRequest(originalCollaborators, groupMetadata)
	local originalSubjectIdActionMap = {}
	local filteredPermissions = { [webKeys.Requests] = {} }
	local requests = filteredPermissions[webKeys.Requests]

	for _, originalPermission in pairs(originalPermissions) do
		originalSubjectIdActionMap[originalPermission[webKeys.SubjectId]] = KeyConverter.getAssetPermissionAction(
			originalPermission[webKeys.Action]
		)
	end

	for _, permission in pairs(permissions) do
		local subjectAction = permission[webKeys.Action]

		if subjectAction == RevokeSubjectAction then
			local originalAction = originalSubjectIdActionMap[permission[webKeys.SubjectId]]
			table.insert(requests, {
				[webKeys.SubjectType] = KeyConverter.getAssetPermissionSubjectType(permission[webKeys.SubjectType]),
				[webKeys.SubjectId] = permission[webKeys.SubjectId],
				[webKeys.Action] = originalAction,
			})
		end
	end

	return filteredPermissions
end

return function(networkInterface, assetId, assetVersionNumber)
	return function(store)
		local changeTable = store:getState().changed

		-- should be verified already in AssetConfig but just in case
		if changeTable and next(changeTable) ~= nil then
			local originalCollaborators = store:getState().originalCollaborators

			local grantRequest = serializeForGrantAssetPermissionRequest(
				changeTable.permissions,
				changeTable.groupMetadata
			)
			local revokeRequest = serializeForRevokeAssetPermissionRequest(
				changeTable.permissions,
				changeTable.groupMetadata,
				originalCollaborators
			)

			local grantPromise = next(grantRequest[webKeys.Requests]) == nil and Promise.resolve(true)
				or networkInterface:grantAssetPermissions(assetId, grantRequest)
			local revokePromise = next(revokeRequest[webKeys.Requests]) == nil and Promise.resolve(true)
				or networkInterface:revokeAssetPermissions(assetId, revokeRequest)

			return Promise.all({ grantPromise, revokePromise }):andThen(function(results)
				if FFlagNewPackageAnalyticsWithRefactor2 then
					for _, result in pairs(results) do
						-- skip result that does not have "url" key
						if result.url ~= nil then
							Analytics.sendResultToKibana(result)
						end
					end
				end
				store:dispatch(ClearChange("permissions"))
				store:dispatch(ClearChange("groupMetadata"))
			end, function(err)
				if FFlagNewPackageAnalyticsWithRefactor2 then
					Analytics.sendResultToKibana(err)
				end
				store:dispatch(NetworkError(err))
			end)
		end
	end
end
