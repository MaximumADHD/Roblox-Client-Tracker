local FastFlags = {}

FastFlags.FlagExists = {}
FastFlags.FlagValue = {}

local function isFlagOn(theFlag)
	if FastFlags.FlagExists[theFlag] == nil then
		local status, result = pcall(function()
			return settings():GetFFlag(theFlag)
		end)
		FastFlags.FlagExists[theFlag] = status
		if status then
			FastFlags.FlagValue[theFlag] = result
		end
	end
	return FastFlags.FlagExists[theFlag] and FastFlags.FlagValue[theFlag]
end

function FastFlags:isEnableAvatarImporterOn()
	return isFlagOn("StudioEnableAvatarImporter")
end

function FastFlags:isBundleConfigurationEnabled()
	return isFlagOn("DebugAvatarImporterBundleConfiguration")
end

function FastFlags:isRoactEnabled()
	return isFlagOn("AvatarImporterRoact")
end

return FastFlags