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

local Packages = Plugin.Packages
local Promise = require(Packages.Framework).Util.Promise

local KeyConverter = require(Plugin.Core.Util.Permissions.KeyConverter)
local WebConstants = require(Plugin.Core.Util.Permissions.Constants)
local webKeys = WebConstants.webKeys
local webValues = WebConstants.webValues

local ProximityPromptService = game:GetService("ProximityPromptService")
local PlayersService = game:GetService("Players")

local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local FFlagLimitGroupRoleSetPermissionsInGui = game:GetFastFlag("LimitGroupRoleSetPermissionsInGui")

local function DEPRECATED_deserializeResult(collaboratorsGETResults)
	local collaborators = {
		[PermissionsConstants.UserSubjectKey] = {},
		[PermissionsConstants.RoleSubjectKey] = {},
	}

	for _, webItem in pairs(collaboratorsGETResults) do
		if webItem[webKeys.SubjectType] == webKeys.UserSubject then
			collaborators[PermissionsConstants.UserSubjectKey][webItem[webKeys.SubjectId]] = {
				[PermissionsConstants.SubjectNameKey] = PlayersService:GetNameFromUserIdAsync(
					webItem[webKeys.SubjectId]
				),
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
		[PermissionsConstants.RoleSubjectKey] = {},
	}

	for _, webItem in pairs(responseBody.results) do
		if webItem[webKeys.SubjectType] == webKeys.UserSubject then
			collaborators[PermissionsConstants.UserSubjectKey][webItem[webKeys.SubjectId]] = {
				[PermissionsConstants.SubjectNameKey] = PlayersService:GetNameFromUserIdAsync(
					webItem[webKeys.SubjectId]
				),
				[PermissionsConstants.SubjectIdKey] = webItem[webKeys.SubjectId],
				[PermissionsConstants.ActionKey] = KeyConverter.getInternalAction(webItem[webKeys.Action]),
			}
		else
			local subjectId = webItem[webKeys.SubjectId]
			if subjectId and subjectId ~= "" then
				collaborators[PermissionsConstants.RoleSubjectKey][tonumber(subjectId)] = {
					[PermissionsConstants.ActionKey] = KeyConverter.getInternalAction(webItem[webKeys.Action]),
				}
			end
			if FFlagLimitGroupRoleSetPermissionsInGui then
				-- Based on FFlagToolboxAssetConfigFixAudioCollaboratorsWarning, there might not be a
				-- collaborator for the webKeys.SubjectId. We should only take that step is if there is
				-- such a collaborator.
				-- If that flag goes away, this test can be removed. Alternatively, if the else block to that
				-- flag goes away, this code can be rolled into the if statement body in which the collaborator
				-- is actually set.
				local subjectId = webItem[webKeys.SubjectId]
				if subjectId and subjectId ~= "" then
					local collaborator = collaborators[PermissionsConstants.RoleSubjectKey][tonumber(subjectId)]
					collaborator[PermissionsConstants.PermissionLevelKey] = webItem[webKeys.PermissionLevel]
							and KeyConverter.getPermissionLevel(webItem[webKeys.PermissionLevel])
						or nil
					collaborator[PermissionsConstants.PermissionSourceKey] = webItem[webKeys.PermissionSource]
							and KeyConverter.getPermissionSource(webItem[webKeys.PermissionSource])
						or nil
				end
			end
		end
	end

	return collaborators
end

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:getAssetPermissions(assetId):andThen(function(result)
			if FFlagNewPackageAnalyticsWithRefactor2 then
				Analytics.sendResultToKibana(result)
			end
			local deserializeResultData = deserializeResponse(result.responseBody)

			store:dispatch(SetCollaborators(deserializeResultData))
		end, function(err)
			if FFlagNewPackageAnalyticsWithRefactor2 then
				Analytics.sendResultToKibana(err)
			end
			store:dispatch(NetworkError(err))
		end)
	end
end
