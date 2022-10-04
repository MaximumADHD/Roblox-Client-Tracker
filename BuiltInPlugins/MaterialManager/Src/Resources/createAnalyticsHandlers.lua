local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local HttpService = game:GetService("HttpService")

local getFFlagMaterialManagerTextureMapOverhaul = require(
	Plugin.Src.Flags.getFFlagMaterialManagerTextureMapOverhaul
)

-- New Plugin Setup: Change this to the analytics context name for your plugin
local pluginAnalyticsContext = "MaterialManager"

return function(analyticsService)
	local function _sendEvent(eventName, additionalArgs)
		additionalArgs = additionalArgs or {}

		local args = Cryo.Dictionary.join({
			studioSid = analyticsService:GetSessionId(),
			clientId = analyticsService:GetClientId(),
			placeId = game.PlaceId,
		}, additionalArgs)

		if DebugFlags.LogAnalytics() then
			print(("%s SendEvent eventName=%s args=%s"):format(
				pluginAnalyticsContext, tostring(eventName), HttpService:JSONEncode(args)))
		end

		analyticsService:SendEventDeferred("studio", pluginAnalyticsContext, eventName, args)
	end

	local function _reportCounter(counterName, count)
		count = count or 1
		if DebugFlags.LogAnalytics() then
			print(("%s ReportCounter counterName=%s count=%s"):format(
				pluginAnalyticsContext, tostring(counterName), tostring(count)))
		end
		analyticsService:ReportCounter(counterName, count)
	end

	local function _reportInfluxSeries(eventName, additionalArgs, throttlingPercent)
		additionalArgs = additionalArgs or {}

		if DebugFlags.LogAnalytics() then
			print(("%s SendEvent eventName=%s args=%s throttlingPercent=%s"):format(
				pluginAnalyticsContext, tostring(eventName), HttpService:JSONEncode(additionalArgs), tostring(throttlingPercent)))
		end

		analyticsService:ReportInfluxSeries(eventName, additionalArgs, throttlingPercent)
	end

	return {
		newMaterialVariant = function(_, additionalArgs, throttlingPercent)
			_reportInfluxSeries("BaseMaterialForVariant", additionalArgs, throttlingPercent)
		end,

		showInExplorer = function()
			_reportCounter("ShowInExplorer")
		end,

		importTextureMap = function()
			_reportCounter("ImportTextureMap")
		end,

		uploadAssetIdTextureMap = function()
			_reportCounter("UploadAssetIdTextureMap")
		end,

		-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
		uploadTextureMap = function()
			_reportCounter("UploadTextureMap")
		end,

		uploadTextureMapSuccess = if getFFlagMaterialManagerTextureMapOverhaul() then 
			function()
				_reportCounter("UploadTextureMapSuccess")
			end
		else nil,

		-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
		editMaterialVariantAndSave = function()
			_reportCounter("EditMaterialVariantAndSave")
		end,

		deleteMaterialVariant = function()
			_reportCounter("DeleteMaterialVariant")
		end,

		applyToSelectionButton = function()
			_reportCounter("ApplyToSelectionButton")
		end,

		applyToSelectionAction = function()
			_reportCounter("ApplyToSelectionAction")
		end,

		materialAsTool = function()
			_reportCounter("MaterialAsTool")
		end,

		setOverrideToggled = function()
			_reportCounter("SetOverrideToggled")
		end,

		searchBar = function()
			_reportCounter("SearchBar")
		end,

		importTextureMapError = function()
			_reportCounter("ImportTextureMapError")
		end,

		-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
		selectFileTextureMapError = function()
			_reportCounter("SelectFileTextureMapError")
		end,

		-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
		uploadTextureMapError = function()
			_reportCounter("UploadTextureMapError")
		end,

		uploadFromURLTextureMapError = if getFFlagMaterialManagerTextureMapOverhaul() then
			function()
				_reportCounter("UploadFromURLTextureMapError")
			end
		else nil,

		uploadTextureMapFromFileError = function()
			_reportCounter("UploadTextureMapFromFileError")
		end,

		uploadTextureMapGeneralError = function()
			_reportCounter("UploadTextureMapGeneralError")
		end
	}
end
