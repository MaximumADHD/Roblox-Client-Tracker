if not plugin then
	return
end

local PluginRoot = script.Parent.Parent

-- Fast flags
require(PluginRoot.ToolboxFFlags)
local FFlagEnableOverrideAssetCursorFix = game:GetFastFlag("EnableOverrideAssetCursorFix")
local FFlagStudioUseNewAnimationImportExportFlow = settings():GetFFlag("StudioUseNewAnimationImportExportFlow")
local FFlagStudioAssetConfigurationPlugin = game:GetFastFlag("StudioAssetConfigurationPlugin")
local FFlagDebugAssetConfigurationEnableRoactChecks = game:DefineFastFlag("DebugAssetConfigurationEnableRoactChecks", false)

if not FFlagStudioAssetConfigurationPlugin then
	return
end

local Libs = PluginRoot.Libs
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)
local Cryo = require(Libs.Cryo)

if FFlagDebugAssetConfigurationEnableRoactChecks then
	Roact.setGlobalConfig({
		elementTracing = true,
		propValidation = true,
		typeChecks = true
	})
end

local Util = PluginRoot.Core.Util
local DebugFlags = require(Util.DebugFlags)
local Localization = require(Util.Localization)
local AssetConfigTheme = require(Util.AssetConfigTheme)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local ConfigTypes = require(PluginRoot.Core.Types.ConfigTypes)

local AssetConfigReducer = require(PluginRoot.Core.Reducers.AssetConfigReducer)

local NetworkInterface = require(PluginRoot.Core.Networking.NetworkInterface)

local AssetConfigWrapper = require(PluginRoot.Core.Components.AssetConfiguration.AssetConfigWrapper)
local ToolboxServiceWrapper =  require(PluginRoot.Core.Components.ToolboxServiceWrapper)

local ContextServices = require(Libs.Framework.ContextServices)
local CrossPluginCommunication = require(Libs.Framework.Util.CrossPluginCommunication)

local TranslationStringsTable = PluginRoot.LocalizationSource.ToolboxTranslationReferenceTable

local RobloxPluginGuiService = game:GetService("RobloxPluginGuiService")
local StudioService = game:GetService("StudioService")

local localization2
localization2 = ContextServices.Localization.new({
	stringResourceTable = TranslationStringsTable,
	translationResourceTable = TranslationStringsTable,
	pluginName = "Toolbox",
})

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
	local localizationTable = PluginRoot.LocalizationSource.ToolboxTranslationReferenceTable

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

-- flowType AssetConfigConstants.FLOW_TYPE, will be used to determine what screens are
--				going to be shown on AssetConfig start up and what's next screen.
-- assetId number, will be used by Marketplace to request detail assetData.
--				default to nil, then will not request anything.
-- assetTypeEnum Enum.AssetType, some asset like places, need to use the parameter to
--				set the assetType of the Asset, and skip the assetTypeSelection.
--				default to nil
-- instances instances, Will be used in publishing new assets. Instances are userdata,
--				we can't check the assetType using that, using AssetType instead.
local assetConfigHandle = nil
local function createAssetConfig(assetId, flowType, instances, assetTypeEnum, toolboxStoreData)
	if assetConfigHandle then
		return
	end

	local startScreen = AssetConfigUtil.getFlowStartScreen(flowType)

	local defaultTab = ConfigTypes:getDefualtTab()
	if FFlagStudioUseNewAnimationImportExportFlow then
		if flowType == AssetConfigConstants.FLOW_TYPE.DOWNLOAD_FLOW then
			defaultTab = ConfigTypes:getOverrideTab()
		end
	end


	local storeState = Cryo.Dictionary.join({
		assetId = assetId,
		screenFlowType = flowType,
		currentScreen = startScreen,
		instances = instances,
		assetTypeEnum = assetTypeEnum,
		currentTab = defaultTab,
		overrideCursor = FFlagEnableOverrideAssetCursorFix and {} or nil,
	}, toolboxStoreData)

	-- If we don't have asset id, we will be publish an new asset.
	-- Otherwise, we will be editing an asset.
	local assetConfigStore = Rodux.Store.new(AssetConfigReducer, storeState, {
			Rodux.thunkMiddleware
		}
	)

	local theme = createAssetConfigTheme()
	local networkInterface = NetworkInterface.new()
	-- TODO DEVTOOLS-4290: We are using the same localization table for Toolbox and AssetConfig, this should be split.
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
			if FFlagStudioUseNewAnimationImportExportFlow then
				-- this should no-opt if user already selected an animation id in download flow
				StudioService:AnimationIdSelected(0)
			end
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
	local assetConfigWithServices = Roact.createElement(ToolboxServiceWrapper, {
		localization = localization2,
		plugin = plugin,
		theme = theme,
		store = assetConfigStore,
		settings = settings,
	}, {
		assetConfigComponent
	})
	assetConfigHandle = Roact.mount(assetConfigWithServices)


	return assetConfigHandle
end

local function main()

	local crossPlugin = CrossPluginCommunication.new('AssetConfiguration')

	crossPlugin:OnInvoke('Open', function(payload)
		createAssetConfig(payload.assetId, payload.flowType, payload.instances, payload.assetTypeEnum, payload.toolboxStoreData)
	end)

	plugin.Unloading:Connect(function()
		if crossPlugin then
			crossPlugin:cleanup()
			crossPlugin = nil
		end
	end)
end

main()
