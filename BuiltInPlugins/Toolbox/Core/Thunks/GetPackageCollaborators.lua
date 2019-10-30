--[[
	Get all the collaborators that a give package asset has been shared with.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent

local SetCollaborators = require(Plugin.Core.Actions.SetCollaborators)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local WEB_KEYS = {
    SubjectType = "subjectType",
    SubjectId = "subjectId",
    ResourceType = "resourceType",
    ResourceId = "resourceId",
    Action = "action",
    UpToVersion = "upToVersion",
}

local function deserializeResult(collaboratorsSearchResults)
	local collaborators = {
        [PermissionsConstants.UserSubjectKey] = {},
    }

    for _,webItem in pairs(collaboratorsSearchResults) do
        local action = PermissionsConstants.NoAccessKey
        local webItemAction = webItem[WEB_KEYS.Action]

        if webItemAction == "Edit" then
            action = PermissionsConstants.EditKey
        elseif webItemAction == "UseView" then
            action = PermissionsConstants.UseViewKey
        end

		collaborators[PermissionsConstants.UserSubjectKey][webItem[WEB_KEYS.SubjectId]] = {
			[PermissionsConstants.SubjectNameKey] = game:GetService("Players"):GetNameFromUserIdAsync(webItem[WEB_KEYS.SubjectId]),
            [PermissionsConstants.SubjectIdKey] = webItem[WEB_KEYS.SubjectId],
            [PermissionsConstants.ActionKey] = action,
            [PermissionsConstants.SubjectTypeKey] = webItem[WEB_KEYS.SubjectType],
		}
	end

	return collaborators
end

return function(networkInterface, assetId)
	return function(store)
        return networkInterface:getPackageCollaborators(assetId):andThen(
            function(result)
                local resultData = HttpService:JSONDecode(result.responseBody).data
                local deserializeResultData = deserializeResult(resultData)

                store:dispatch(SetCollaborators(deserializeResultData))
            end,
            function(error)
            end
        )
	end
end