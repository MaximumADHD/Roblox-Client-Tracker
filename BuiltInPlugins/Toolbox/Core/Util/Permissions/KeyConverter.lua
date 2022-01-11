local Plugin = script.Parent.Parent.Parent.Parent

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

local FFlagUseNewAssetPermissionEndpoint2 = game:GetFastFlag("UseNewAssetPermissionEndpoint2")

local KeyConverter = {}

local FFlagUseNewAssetPermissionEndpoint3 = game:GetFastFlag("UseNewAssetPermissionEndpoint3")
local FFlagToolboxAssetGridRefactor3 = game:GetFastFlag("ToolboxAssetGridRefactor3")

function KeyConverter.getInternalSubjectType(webKey)
    if webKey == webKeys.UserSubject then
        return PermissionsConstants.UserSubjectKey
    elseif webKey == webKeys.RoleSubject then
        return PermissionsConstants.RoleSubjectKey
    elseif webKey == webKeys.GroupSubject then
        return PermissionsConstants.GroupSubjectKey
    else
        -- not supported
        error("Could not determine subject type")
    end
end

function KeyConverter.getInternalAction(webKey)
    if webKey == webKeys.OwnAction and not FFlagUseNewAssetPermissionEndpoint3 then
        return PermissionsConstants.OwnKey
    elseif webKey == webKeys.GrantAssetPermissionsAction and FFlagUseNewAssetPermissionEndpoint3 then
        return PermissionsConstants.OwnKey
    elseif webKey == webKeys.UseAction and FFlagUseNewAssetPermissionEndpoint2 then
        return PermissionsConstants.UseViewKey
    elseif webKey == webKeys.EditAction then
        return PermissionsConstants.EditKey
    elseif webKey == webKeys.UseViewAction then
        return PermissionsConstants.UseViewKey
    elseif webKey == webKeys.RevokedAction then
        return PermissionsConstants.NoAccessKey
    elseif webKey == nil then
        return PermissionsConstants.NoAccessKey
    else
        -- not supported
        error("Unsupported Action: "..tostring(webKey))
    end
end

function KeyConverter.getWebSubjectType(internalSubjectType)
	if internalSubjectType == PermissionsConstants.UserSubjectKey then
		return webKeys.UserSubject
	elseif internalSubjectType == PermissionsConstants.GroupSubjectKey then
		return webKeys.GroupSubject
	elseif internalSubjectType == PermissionsConstants.RoleSubjectKey then
		return webKeys.RoleSubject
	else
		-- not supported
		error("Invalid SubjectType: "..tostring(internalSubjectType))
	end
end

function KeyConverter.getWebAction(internalAction)
	if internalAction == PermissionsConstants.UseViewKey then
		return webKeys.UseViewAction
	elseif internalAction == PermissionsConstants.EditKey then
		return webKeys.EditAction
	elseif internalAction == PermissionsConstants.NoAccessKey then
        return webKeys.RevokedAction
    elseif internalAction == PermissionsConstants.RevokedKey then
        return webKeys.RevokedAction
	else
		-- not supported
		error("Invalid Action: "..tostring(internalAction))
	end
end

function KeyConverter.getAssetPermissionAction(webAction)
	if webAction == webKeys.UseViewAction then
		return webKeys.UseAction
	elseif webAction == webKeys.OwnAction then
		return webKeys.EditAction
	else
		return webAction
    end
end

function KeyConverter.getAssetPermissionSubjectType(internalSubjectType)
	if internalSubjectType == webKeys.RoleSubject then
		return webKeys.GroupRolesetSubject
    else
        return internalSubjectType
    end
end

--For PostCheckActions reponse parsing,
--status can be 1 of 4 values : "HasPermission","NoPermission","AssetNotFound","UnknownError"
if FFlagUseNewAssetPermissionEndpoint3 then
    function KeyConverter.resolveActionPermission(webKey, status, assetId)
        if status == webKeys.HasPermission then
            return KeyConverter.getInternalAction(webKey)
        elseif status == webKeys.NoPermission then
            return PermissionsConstants.NoAccessKey
        elseif status == webKeys.AssetNotFound then
            error("Permissions Error: " .. tostring(status) .. ", assetId: " .. tostring(assetId))
        else
            -- "status == Unknown Error"
            if FFlagToolboxAssetGridRefactor3 then
                error("Permissions Error: " .. tostring(status) .. ", assetId: " .. tostring(assetId))
            else
                return PermissionsConstants.NoAccessKey
            end
        end
    end
end


return KeyConverter