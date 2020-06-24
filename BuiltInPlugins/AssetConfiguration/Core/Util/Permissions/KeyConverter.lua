local Plugin = script.Parent.Parent.Parent.Parent

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

local KeyConverter = {}

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
    if webKey == webKeys.OwnAction then
        return PermissionsConstants.OwnKey
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

return KeyConverter