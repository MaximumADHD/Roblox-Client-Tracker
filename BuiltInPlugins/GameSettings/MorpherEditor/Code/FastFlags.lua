-- singleton

local FastFlags = {}

FastFlags.FlagExists = {}
FastFlags.FlagValue = {}

local function isFlagOn(theFlag)
	if nil == FastFlags.FlagExists[theFlag] then
		local status, result = pcall(function () return settings():GetFFlag(theFlag) end)
		FastFlags.FlagExists[theFlag] = status
		if status then
			FastFlags.FlagValue[theFlag] = result
		end
	end
	return FastFlags.FlagExists[theFlag] and FastFlags.FlagValue[theFlag]
end

function FastFlags.isCheckboxDisabledStateFixFlagOn()
	return isFlagOn("SharedWidgetCheckboxDisabledStateFix")
end

function FastFlags.isSliderLayoutFixFlagOn()
	return isFlagOn("MorphingAvatarPanelSliderLayoutFix")
end

function FastFlags.isAvatarPreviewOn()
	return isFlagOn("MorphingHumanoidDescriptionSystemInstanceAndLuaAPIFlagV4")
end

function FastFlags.isMorphingPanelWidgetsStandardizationOn()
	return isFlagOn("MorphingPanelWidgetsStandardization")
end

function FastFlags.isPlaceFilesGameSettingsSerializationOn()
	return isFlagOn("PlaceFilesGameSettingsSerialization4")
end

return FastFlags