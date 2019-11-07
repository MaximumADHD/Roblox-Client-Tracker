local FFlagLuaPackagePermissions =  settings():GetFFlag("LuaPackagePermissions")

if not plugin then
	return
end

-- TODO: DEVTOOLS-3023
-- We should move those into their own file.
game:DefineFastFlag("RemoveNilInstances", false)
game:DefineFastFlag("UseRBXThumbInToolbox", false)
game:DefineFastFlag("UseCreationToFetchMyOverrideData2", false)
game:DefineFastFlag("EnableAssetConfigVersionCheckForModels", false)
game:DefineFastFlag("CMSAdditionalAccessoryTypesV2", false)
game:DefineFastFlag("FixAssetConfigManageableGroups", false)

-- when removing this flag, remove all references to isCatalogItemCreator
game:DefineFastFlag("CMSRemoveUGCContentEnabledBoolean", false)

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")

local Plugin = script.Parent.Parent
local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)

local Util = Plugin.Core.Util
local Analytics = require(Util.Analytics.Analytics)
local DebugFlags = require(Util.DebugFlags)
local Settings = require(Util.Settings)
local ToolboxTheme = require(Util.ToolboxTheme)
local Localization = require(Util.Localization)
local AssetConfigTheme = require(Util.AssetConfigTheme)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local Background = require(Plugin.Core.Types.Background)
local Suggestion = require(Plugin.Core.Types.Suggestion)
local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local ToolboxPlugin = require(Plugin.Core.Components.ToolboxPlugin)

local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)
local AssetConfigReducer = require(Plugin.Core.Reducers.AssetConfigReducer)

local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)

local AssetConfigWrapper = require(Plugin.Core.Components.AssetConfiguration.AssetConfigWrapper)

local GetRolesRequest = require(Plugin.Core.Networking.Requests.GetRolesRequest)

local StudioService = game:GetService("StudioService")
local RobloxPluginGuiService = game:GetService("RobloxPluginGuiService")

if DebugFlags.shouldRunTests() then
	local Tests = Plugin.Core
	local RunToolboxTests = require(Plugin.Core.RunToolboxTests)
	RunToolboxTests(Tests)
end

local function createTheme()
	return ToolboxTheme.new({
		getTheme = function()
			return settings().Studio.Theme
		end,
		isDarkerTheme = function(theme)
			-- Assume "darker" theme if the average main background colour is darker
			local mainColour = theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
			return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
		end,
		themeChanged = settings().Studio.ThemeChanged,
	})
end

local function createAssetConfigTheme()
	return AssetConfigTheme.new({
		-- Get the theme object, used to calculate color.
		getTheme = function()
			return settings().Studio.Theme
		end,
		-- Get the theme value
		getUITheme = function()
			return settings().Studio["UI Theme"]
		end,
		themeChanged = settings().Studio.ThemeChanged,
	})
end

local function createLocalization()
	local localizationTable = Plugin.LocalizationSource.ToolboxTranslationReferenceTable

	-- Check if we should use a fake locale
	if DebugFlags.shouldUseTestCustomLocale() then
		print("Toolbox using test custom locale")
		return Localization.createTestCustomLocaleLocalization(DebugFlags.getOrCreateTestCustomLocale())
	end

	if DebugFlags.shouldUseTestRealLocale() then
		print("Toolbox using test real locale")
		return Localization.createTestRealLocaleLocalization(localizationTable, DebugFlags.getOrCreateTestRealLocale())
	end

    return Localization.new({
        getLocaleId = function()
            return StudioService["StudioLocaleId"]
        end,
        getTranslator = function(localeId)
            return localizationTable:GetTranslator(localeId)
        end,
        localeIdChanged = StudioService:GetPropertyChangedSignal("StudioLocaleId")
    })
end

local toolboxStore = nil

-- flowType AssetConfigConstants.FLOW_TYPE, will be used to determine what screens are
--				going to be shown on AssetConfig start up and what's next screen.
-- assetId number, will be used by Marketplace to request detail assetData.
--				default to nil, then will not request anything.
-- assetTypeEnum Enum.AssetType, some asset like places, need to use the parameter to
--				set the assetType of the Asset, and skip the assetTypeSelection.
--				default to nil
-- instances instances, Will be used in publishing new assets. Instances are userdata,
--				we can't check the assetType using that, using AssetType instead.
-- toolboxStore storeObejct, is used to fetch some catalog data from the Toolbox.
local assetConfigHandle = nil
local function createAssetConfig(assetId, flowType, instances, assetTypeEnum)
	if assetConfigHandle then
		return
	end

	local isCatalogItemCreator = false -- remove with FFlagCMSRemoveUGCContentEnabledBoolean
	local assetTypesForRelease = {}
	local assetTypesForUpload = {}
	if toolboxStore then
		if not game:GetFastFlag("CMSRemoveUGCContentEnabledBoolean") then
			isCatalogItemCreator = toolboxStore:getState().roles.isCatalogItemCreator
		end
		assetTypesForRelease = toolboxStore:getState().roles.allowedAssetTypesForRelease
		assetTypesForUpload = toolboxStore:getState().roles.allowedAssetTypesForUpload
	end

	local startScreen = AssetConfigUtil.getFlowStartScreen(flowType)

	-- If we don't have asset id, we will be publish an new asset.
	-- Otherwise, we will be editing an asset.
	local assetConfigStore = Rodux.Store.new(AssetConfigReducer, {
			assetId = assetId,
			screenFlowType = flowType,
			currentScreen = startScreen,
			instances = instances,
			isCatalogItemCreator = isCatalogItemCreator, -- remove with FFlagCMSRemoveUGCContentEnabledBoolean
			allowedAssetTypesForRelease = assetTypesForRelease,
			allowedAssetTypesForUpload = assetTypesForUpload,
			assetTypeEnum = assetTypeEnum,
			currentTab = ConfigTypes:getDefualtTab(),
		}, {
			Rodux.thunkMiddleware
		}
	)

	local theme = createAssetConfigTheme()
	local networkInterface = NetworkInterface.new()
	-- We are using the same localization table for Toolbox and AssetConfig for now.
	local localization = createLocalization()

	local function onAssetConfigDestroy()
		if assetConfigHandle then
			local function fireTabRefreshEvent()
				local EventName = "tabRefresh"
				local toolboxPlugin = RobloxPluginGuiService:FindFirstChild("Toolbox")
				local theEvent = toolboxPlugin and toolboxPlugin:FindFirstChild(EventName)
				if theEvent then
					theEvent:Fire()
				end
			end
			fireTabRefreshEvent()
			Roact.unmount(assetConfigHandle)
			assetConfigHandle = nil
		end
	end

	local assetConfigComponent = Roact.createElement(AssetConfigWrapper, {
		assetId = assetId,
		assetTypeEnum = assetTypeEnum,

		plugin = plugin,
		store = assetConfigStore,
		theme = theme,
		networkInterface = networkInterface,
		localization = localization,

		onAssetConfigDestroy = onAssetConfigDestroy
	})

	assetConfigHandle = Roact.mount(assetConfigComponent)

	return assetConfigHandle
end

local function main()
	toolboxStore = Rodux.Store.new(ToolboxReducer, nil, {
		Rodux.thunkMiddleware
	})

	local settings = Settings.new(plugin)
	local theme = createTheme()
	local networkInterface = NetworkInterface.new()
	local localization = createLocalization()

	local backgrounds = Background.BACKGROUNDS
	local suggestions = Suggestion.SUGGESTIONS

	local toolboxHandle

	local function onPluginWillDestroy()
		if toolboxHandle then
			Analytics.sendReports(plugin)
			Roact.unmount(toolboxHandle)
		end
	end

	local toolboxComponent = Roact.createElement(ToolboxPlugin, {
		plugin = plugin,
		store = toolboxStore,
		settings = settings,
		theme = theme,
		networkInterface = networkInterface,
		localization = localization,

		backgrounds = backgrounds,
		suggestions = suggestions,

		onPluginWillDestroy = onPluginWillDestroy,
		tryOpenAssetConfig = function(assetId, flowType, instances, assetTypeEnum)
			local function proceedToEdit()
				createAssetConfig(assetId, flowType, instances, assetTypeEnum)
			end
			toolboxStore:dispatch(GetRolesRequest(networkInterface)):andThen(proceedToEdit, proceedToEdit)
		end,
	})

	toolboxHandle = Roact.mount(toolboxComponent)

	-- Create publish new asset page.
	StudioService.OnSaveToRoblox:connect(function(instances)
		local function proceedToUpload()
			createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, AssetConfigUtil.getClonedInstances(instances))
		end
		toolboxStore:dispatch(GetRolesRequest(networkInterface)):andThen(proceedToUpload, proceedToUpload)
	end)

	if FFlagLuaPackagePermissions then
		StudioService.OnOpenManagePackagePlugin:connect(function(userId, assetId)
			createAssetConfig(assetId, AssetConfigConstants.FLOW_TYPE.EDIT_FLOW, nil, Enum.AssetType.Model)
		end)
	end

	-- Create publish new plugin page.
	StudioService.OnPublishAsPlugin:connect(function(instances)
		if FFlagEnablePurchasePluginFromLua2 then
			createAssetConfig(
				nil,
				AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW,
				AssetConfigUtil.getClonedInstances(instances),
				Enum.AssetType.Plugin
			)
		end
	end)
end

main()
