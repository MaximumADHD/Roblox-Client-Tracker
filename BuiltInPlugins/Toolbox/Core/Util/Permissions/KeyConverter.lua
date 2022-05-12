local Plugin = script.Parent.Parent.Parent.Parent

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

local KeyConverter = {}

local FFlagToolboxAssetGridRefactor = game:GetFastFlag("ToolboxAssetGridRefactor6")
local FFlagAssetConfigHandlePermissionsAssetTypeNotEnabled = game:GetFastFlag("AssetConfigHandlePermissionsAssetTypeNotEnabled")
local DebugFlags = if FFlagAssetConfigHandlePermissionsAssetTypeNotEnabled then require(Plugin.Core.Util.DebugFlags) else nil

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
	if webKey == webKeys.GrantAssetPermissionsAction then
		return PermissionsConstants.OwnKey
	elseif webKey == webKeys.UseAction then
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
		error("Unsupported Action: " .. tostring(webKey))
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
		error("Invalid SubjectType: " .. tostring(internalSubjectType))
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
		error("Invalid Action: " .. tostring(internalAction))
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
--status can be 1 of these values : "HasPermission","NoPermission","AssetNotFound","UnknownError"
function KeyConverter.resolveActionPermission(webKey, status, assetId)
	if FFlagAssetConfigHandlePermissionsAssetTypeNotEnabled and status == webKeys.UnknownError then
		if DebugFlags.shouldDebugWarnings() then
			warn(string.format("Ignoring %s for assetId: %s, webKey: %s", tostring(status), tostring(assetId), tostring(webKey)))
		end
		return PermissionsConstants.NoneKey
	elseif status == webKeys.HasPermission then
		return KeyConverter.getInternalAction(webKey)
	elseif status == webKeys.NoPermission then
		return PermissionsConstants.NoAccessKey
	elseif status == webKeys.AssetNotFound then
		error("Permissions Error: " .. tostring(status) .. ", assetId: " .. tostring(assetId))
	else
		-- "status == Unknown Error"
		if FFlagToolboxAssetGridRefactor then
			error("Permissions Error: " .. tostring(status) .. ", assetId: " .. tostring(assetId))
		else
			return PermissionsConstants.NoAccessKey
		end
	end
end

return KeyConverter
