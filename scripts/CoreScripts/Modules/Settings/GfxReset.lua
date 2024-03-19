--!nonstrict
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local FFlagIGMResetGfxQuality = game:DefineFastFlag("IGMResetGfxQuality", false)
local FFlagIGMRevertGfxQuality = game:DefineFastFlag("IGMRevertGfxQuality", false)
local FFlagIGMRevertGfxLv5Only = game:DefineFastFlag("IGMRevertGfxLv5Only", false)

local FFlagIGMResetGfxLv5Only = game:DefineFastFlag("IGMResetGfxLv5Only", false)
local FFlagIGMAlwaysResetGfxLv5 = game:DefineFastFlag("IGMAlwaysResetGfxLv5", false)
local FIntIGMTempOverrideGfxLv5 = game:DefineFastInt("IGMTempOverrideGfxLv5", 0)

local MAX_SAMPLE_RATE = 1000
local SAMPLE_ID_BIAS = 329

local function SavedQualitySettingEnumFromValue(x)
	local enumItem = Enum.SavedQualitySetting:GetEnumItems()
	for _, item in enumItem do
		if item.Value == x then
			return item
		end
	end
	return Enum.SavedQualitySetting.Automatic
end

local function RunGfxReset()
	local alwaysResetOnLevel5 = FFlagIGMAlwaysResetGfxLv5
	local level5Detected = GameSettings.SavedQualityLevel == Enum.SavedQualitySetting.QualityLevel5

	-- Lua only.  Reset all lv5 users to Auto. Save to SavedQualityLevel
	if alwaysResetOnLevel5 and level5Detected then
		GameSettings.SavedQualityLevel = Enum.SavedQualitySetting.Automatic
	end

	-- Lua+Engine fix. Only reset once. Reset and persist reset state.
	-- - Check if GameSettings.ResetGfxQualityFlag is available
	if game:GetEngineFeature("QualityLevelReset") then
		-- revert pathway
		if FFlagIGMRevertGfxQuality then
			if GameSettings.QualityResetLevel >= 0 then
				local revertVal = SavedQualitySettingEnumFromValue(GameSettings.QualityResetLevel)
				if
					(FFlagIGMRevertGfxLv5Only and revertVal == Enum.SavedQualitySetting.QualityLevel5)
					or (FFlagIGMRevertGfxLv5Only == false)
				then
					GameSettings.SavedQualityLevel = revertVal
					GameSettings.QualityResetLevel = -1
				end
			end
		elseif FFlagIGMResetGfxQuality then
			local onlyResetOnLevel5 = FFlagIGMResetGfxLv5Only
			local resetLevel = GameSettings.QualityResetLevel

			-- Compare target fix version to local fix version.  If not in sync, run the reset
			if resetLevel < 0 or resetLevel == nil then
				-- Check if we only want to reset lv5
				local priorValue = GameSettings.SavedQualityLevel.Value
				if (level5Detected and onlyResetOnLevel5) or (onlyResetOnLevel5 == false) then
					GameSettings.SavedQualityLevel = Enum.SavedQualitySetting.Automatic
				end
				GameSettings.QualityResetLevel = priorValue
			end
		end
	end
end

function applicationId(): number?
	local AppStorageService = game:GetService("AppStorageService")
	if not AppStorageService then
		return nil
	end

	local installationId: string = AppStorageService:GetItem("AppInstallationId")
	local installationIdType = typeof(installationId)

	if installationIdType == "number" then
		return tonumber(installationId) or nil
	end

	if installationIdType == "string" then
		if string.len(installationId) <= 0 then
			return nil
		end

		local numDigits = string.len(tostring(MAX_SAMPLE_RATE))
		-- tonumber returns nil if conversion fails
		return tonumber(string.sub(installationId, -numDigits))
	end
	return nil
end

-- Lua only.  Reset all lv5 users to Auto. Don't save.
local function TemporaryOverride(value)
	local appId = applicationId() or 0
	local sample = (appId + SAMPLE_ID_BIAS) % MAX_SAMPLE_RATE -- 0 to (MAX_SAMPLE_RATE-1)
	local enable = sample < FIntIGMTempOverrideGfxLv5

	if enable then
		if value == Enum.SavedQualitySetting.QualityLevel5 or value == Enum.SavedQualitySetting.QualityLevel5.Value then
			return true, Enum.SavedQualitySetting.Automatic.Value
		end
	end
	return false, Enum.SavedQualitySetting.Automatic.Value
end

return {
	RunGfxReset = RunGfxReset,
	TemporaryOverride = TemporaryOverride,
}
