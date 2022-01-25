--!nolint ImportUnused
--^ DEVTOOLS-4491
return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local Plugin = script.Parent.Parent
	local Util = Plugin.Core.Util
	local FFlagDebugToolboxEnableRoactChecks = game:GetFastFlag("DebugToolboxEnableRoactChecks")
	local FFlagUseNewAnimationClipProvider = game:GetFastFlag("UseNewAnimationClipProvider_3")
	local FFlagImprovePluginSpeed_Toolbox = game:GetFastFlag("ImprovePluginSpeed_Toolbox")
	local FFlagDebugToolboxGetRolesRequest = game:GetFastFlag("DebugToolboxGetRolesRequest")

	if not FFlagImprovePluginSpeed_Toolbox then
		-- Move this to loader.server.lua
		require(script.Parent.defineLuaFlags)
	end

	local isCli = require(Util.isCli)
	if isCli() then
		return
	end

	local StudioService = game:GetService("StudioService")
	local hasInternalPermission = StudioService:HasInternalPermission()

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	--[[
		RefactorFlags needs to be required and updated directly; before Framework's init
		is required (so that any files that Framework's init requires get the correct values).
	]]
	local RefactorFlags
	if FFlagToolboxDeduplicatePackages then
		RefactorFlags = require(Libs._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
	else
		RefactorFlags = require(Libs.Framework.Util.RefactorFlags)
	end
	RefactorFlags.THEME_REFACTOR = true

	local Framework = require(Libs.Framework)

	if FFlagDebugToolboxEnableRoactChecks then
		Roact.setGlobalConfig({
			elementTracing = true,
			propValidation = true,
			typeChecks = true
		})
	end

	local Rodux = require(Libs.Rodux)

	local InsertAsset = require(Util.InsertAsset)
	local Analytics = require(Util.Analytics.Analytics)
	local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)
	local DebugFlags = require(Util.DebugFlags)
	local Settings = require(Util.Settings)
	local ToolboxTheme = require(Util.ToolboxTheme)
	local Localization = require(Util.Localization)
	local AssetConfigTheme = require(Util.AssetConfigTheme)
	local AssetConfigConstants = require(Util.AssetConfigConstants)
	local AssetConfigUtil = require(Util.AssetConfigUtil)
	local makeToolboxAnalyticsContext = require(Util.Analytics.makeToolboxAnalyticsContext)

	if DebugFlags.shouldDebugWarnings() then
		local Promise = require(Libs.Framework).Util.Promise
		Promise.onUnhandledRejection = warn
	end

	local Background = require(Plugin.Core.Types.Background)
	local Suggestion = require(Plugin.Core.Types.Suggestion)
	local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

	local ToolboxPlugin = require(Plugin.Core.Components.ToolboxPlugin)

	local getToolboxEnabled = require(Plugin.Core.Util.ToolboxUtilities).getToolboxEnabled

	local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)
	local AssetConfigReducer = require(Plugin.Core.Reducers.AssetConfigReducer)

	local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)

	local AssetConfigWrapper = require(Plugin.Core.Components.AssetConfiguration.AssetConfigWrapper)
	local ToolboxServiceWrapper =  require(Plugin.Core.Components.ToolboxServiceWrapper)

	local GetRolesRequest = require(Plugin.Core.Networking.Requests.GetRolesRequest)
	local GetRolesDebugRequest = require(Plugin.Core.Networking.Requests.GetRolesDebugRequest)
	local SettingsContext = require(Plugin.Core.ContextServices.Settings)

	local ContextServices = Framework.ContextServices
	local ThunkWithArgsMiddleware = Framework.Util.ThunkWithArgsMiddleware

	local TranslationDevelopmentTable = Plugin.LocalizationSource.TranslationDevelopmentTable
	local TranslationReferenceTable = Plugin.LocalizationSource.TranslationReferenceTable

	local HttpService = game:GetService("HttpService")
	local MemStorageService = game:GetService("MemStorageService")
	local RobloxPluginGuiService = game:GetService("RobloxPluginGuiService")
	local StudioAssetService = game:GetService("StudioAssetService")

	local FFlagStudioSerializeInstancesOffUIThread = game:GetFastFlag("StudioSerializeInstancesOffUIThread")

	if not getToolboxEnabled() then
		return
	end

	local devFrameworkLocalization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "Toolbox",
		libraries = {
			[Framework.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Framework.Resources.TranslationDevelopmentTable,
				translationResourceTable = Framework.Resources.TranslationReferenceTable,
			},
		},
	})

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
			themeChanged = settings().Studio.ThemeChanged,
		})
	end

	local function createLocalization()
		local translationDevelopmentTable = Plugin.LocalizationSource.TranslationDevelopmentTable
		local translationReferenceTable = Plugin.LocalizationSource.TranslationReferenceTable

		-- Check if we should use a fake locale
		if DebugFlags.shouldUseTestCustomLocale() then
			print("Toolbox using test custom locale")
			return Localization.createTestCustomLocaleLocalization(DebugFlags.getOrCreateTestCustomLocale())
		end

		if DebugFlags.shouldUseTestRealLocale() then
			print("Toolbox using test real locale")
			return Localization.createTestRealLocaleLocalization(translationReferenceTable, DebugFlags.getOrCreateTestRealLocale())
		end

		return Localization.new({
			getLocaleId = function()
				return StudioService["StudioLocaleId"]
			end,
			getTranslator = function(localeId)
				return translationReferenceTable:GetTranslator(localeId)
			end,
			getFallbackTranslator = function(localeId)
				return translationDevelopmentTable:GetTranslator(localeId)
			end,
			localeIdChanged = StudioService:GetPropertyChangedSignal("StudioLocaleId")
		})
	end

	local toolboxStore = nil

	local assetConfigHandle = nil


	-- assetId number, will be used by Marketplace to request detail assetData.
	--				default to nil, then will not request anything.
	-- flowType AssetConfigConstants.FLOW_TYPE, will be used to determine what screens are
	--				going to be shown on AssetConfig start up and what's next screen.
	-- instances instances, Will be used in publishing new assets. Instances are userdata,
	--				we can't check the assetType using that, using AssetType instead.
	-- assetTypeEnum Enum.AssetType, some asset like places, need to use the parameter to
	--				set the assetType of the Asset, and skip the assetTypeSelection.
	--				default to nil
	local function createAssetConfig(assetId, flowType, instances, assetTypeEnum)
		if assetConfigHandle then
			return
		end

		local assetTypesForRelease = {}
		local assetTypesForUpload = {}
		local packagePermissions = {}

		local isItemTagsFeatureEnabled = false
		local enabledAssetTypesForItemTags = {}
		local maximumItemTagsPerItem = 0

		if toolboxStore then
			assetTypesForRelease = toolboxStore:getState().roles.allowedAssetTypesForRelease
			assetTypesForUpload = toolboxStore:getState().roles.allowedAssetTypesForUpload
			packagePermissions = toolboxStore:getState().packages.permissionsTable
			isItemTagsFeatureEnabled = toolboxStore:getState().itemTags.isItemTagsFeatureEnabled
			enabledAssetTypesForItemTags = toolboxStore:getState().itemTags.enabledAssetTypesForItemTags
			maximumItemTagsPerItem = toolboxStore:getState().itemTags.maximumItemTagsPerItem
		end

		local startScreen = AssetConfigUtil.getFlowStartScreen(flowType)

		local defaultTab = ConfigTypes:getDefualtTab()
		if flowType == AssetConfigConstants.FLOW_TYPE.DOWNLOAD_FLOW then
			defaultTab = ConfigTypes:getOverrideTab()
		end

		local middleware
		if FFlagStudioSerializeInstancesOffUIThread then
			middleware = {
				ThunkWithArgsMiddleware({
					StudioAssetService = StudioAssetService,
				}),
			}
		else
			middleware = {
				Rodux.thunkMiddleware
			}
		end

		-- If we don't have asset id, we will be publish an new asset.
		-- Otherwise, we will be editing an asset.
		local assetConfigStore = Rodux.Store.new(AssetConfigReducer, {
				assetId = assetId,
				screenFlowType = flowType,
				currentScreen = startScreen,
				instances = instances,
				allowedAssetTypesForRelease = assetTypesForRelease,
				allowedAssetTypesForUpload = assetTypesForUpload,
				isItemTagsFeatureEnabled = isItemTagsFeatureEnabled,
				enabledAssetTypesForItemTags = enabledAssetTypesForItemTags,
				maximumItemTagsPerItem = maximumItemTagsPerItem,
				assetTypeEnum = assetTypeEnum,
				currentTab = defaultTab,
				packagePermissions = packagePermissions,
				overrideCursor = {},
			}, middleware)

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
				-- this should no-opt if user already selected an animation id in download flow
				StudioService:AnimationIdSelected(0)
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
			localization = devFrameworkLocalization,
			plugin = plugin,
			theme = theme,
			store = assetConfigStore,
			settings = settings,
		}, {
			assetConfigComponent
		})
		assetConfigHandle = Roact.mount(assetConfigWithServices)
	end

	local function main()
		toolboxStore = Rodux.Store.new(ToolboxReducer, nil, {
			Rodux.thunkMiddleware
		})

		local assetAnalyticsContextItem = AssetAnalyticsContextItem.new()

		local analyticsContextItem = makeToolboxAnalyticsContext()

		local settings = Settings.new(plugin)
		local theme = createTheme()
		local networkInterface = NetworkInterface.new()
		local localization = createLocalization()

		local backgrounds = Background.BACKGROUNDS
		local suggestions = Suggestion.SUGGESTIONS

		local toolboxHandle
		local inspector
		if hasInternalPermission then
			inspector = Framework.DeveloperTools.forPlugin("Toolbox", plugin)
		end

		local function onPluginWillDestroy()
			if toolboxHandle then
				Roact.unmount(toolboxHandle)
			end
			if inspector then
				inspector:destroy()
			end
		end

		local toolboxComponent = Roact.createElement(ToolboxPlugin, {
			plugin = plugin,
			store = toolboxStore,
			settings = settings,
			theme = theme,
			networkInterface = networkInterface,
			localization = localization,
			pluginLoaderContext = FFlagImprovePluginSpeed_Toolbox and pluginLoaderContext or nil,

			backgrounds = backgrounds,
			suggestions = suggestions,

			onPluginWillDestroy = onPluginWillDestroy,
			tryOpenAssetConfig = function(assetId, flowType, instances, assetTypeEnum)
				local function proceedToEdit()
					createAssetConfig(assetId, flowType, instances, assetTypeEnum)
				end
				if FFlagDebugToolboxGetRolesRequest then
					toolboxStore:dispatch(GetRolesDebugRequest(networkInterface)):andThen(proceedToEdit, proceedToEdit)
				else
					toolboxStore:dispatch(GetRolesRequest(networkInterface)):andThen(proceedToEdit, proceedToEdit)
				end
			end,
		})
		local toolboxWithServices
		toolboxWithServices = Roact.createElement(ToolboxServiceWrapper, {
			localization = devFrameworkLocalization,
			plugin = plugin,
			theme = theme,
			store = toolboxStore,
			settings = settings,
			assetAnalytics = assetAnalyticsContextItem,
			analytics = analyticsContextItem,
		}, {
			toolboxComponent
		})
		toolboxHandle = Roact.mount(toolboxWithServices)
		if inspector then
			inspector:addRoactTree("Roact tree", toolboxHandle, Roact)
		end

		if FFlagImprovePluginSpeed_Toolbox then
			-- Create publish new asset page.
			pluginLoaderContext.signals["StudioService.OnSaveToRoblox"]:Connect(function(instances)
				local function proceedToUpload()
					local clonedInstances = AssetConfigUtil.getClonedInstances(instances)
					if FFlagUseNewAnimationClipProvider then
						if #clonedInstances == 1 and clonedInstances[1]:IsA("AnimationClip") then
							createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, clonedInstances, Enum.AssetType.Animation)
						else
							createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, clonedInstances)
						end
					else
						if #clonedInstances == 1 and clonedInstances[1]:IsA("KeyframeSequence") then
							createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, clonedInstances, Enum.AssetType.Animation)
						else
							createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, clonedInstances)
						end
					end
				end
				if FFlagDebugToolboxGetRolesRequest then
					toolboxStore:dispatch(GetRolesDebugRequest(networkInterface)):andThen(proceedToUpload, proceedToUpload)
				else
					toolboxStore:dispatch(GetRolesRequest(networkInterface)):andThen(proceedToUpload, proceedToUpload)
				end
			end)

			pluginLoaderContext.signals["StudioService.OnImportFromRoblox"]:Connect(function(callback)
				createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.DOWNLOAD_FLOW, nil, Enum.AssetType.Animation)
			end)

			pluginLoaderContext.signals["StudioService.OnOpenManagePackagePlugin"]:Connect(function(userId, assetId)
				createAssetConfig(assetId, AssetConfigConstants.FLOW_TYPE.EDIT_FLOW, nil, Enum.AssetType.Model)
			end)

			-- Create publish new plugin page.
			pluginLoaderContext.signals["StudioService.OnPublishAsPlugin"]:Connect(function(instances)
				createAssetConfig(
					nil,
					AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW,
					AssetConfigUtil.getClonedInstances(instances),
					Enum.AssetType.Plugin
				)
			end)

			-- Listen to MemStorageService
			pluginLoaderContext.signals["MemStorageService.OpenAssetConfiguration"]:Connect(
				function(params)
					local asset = HttpService:JSONDecode(params)
					if asset.assetType == Enum.AssetType.Image then
						createAssetConfig(
							asset.id,
							AssetConfigConstants.FLOW_TYPE.EDIT_FLOW,
							nil,
							Enum.AssetType.Image)
					else
						createAssetConfig(
							asset.id,
							AssetConfigConstants.FLOW_TYPE.EDIT_FLOW,
							nil,
							Enum.AssetType.MeshPart)
					end
				end)
		else
			-- Create publish new asset page.
			StudioService.OnSaveToRoblox:connect(function(instances)
				local function proceedToUpload()
					local clonedInstances = AssetConfigUtil.getClonedInstances(instances)
					if FFlagUseNewAnimationClipProvider then
						if #clonedInstances == 1 and clonedInstances[1]:IsA("AnimationClip") then
							createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, clonedInstances, Enum.AssetType.Animation)
						else
							createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, clonedInstances)
						end
					else
						if #clonedInstances == 1 and clonedInstances[1]:IsA("KeyframeSequence") then
							createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, clonedInstances, Enum.AssetType.Animation)
						else
							createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW, clonedInstances)
						end
					end
				end
				if FFlagDebugToolboxGetRolesRequest then
					toolboxStore:dispatch(GetRolesDebugRequest(networkInterface)):andThen(proceedToUpload, proceedToUpload)
				else
					toolboxStore:dispatch(GetRolesRequest(networkInterface)):andThen(proceedToUpload, proceedToUpload)
				end
			end)

			StudioService.OnImportFromRoblox:connect(function(callback)
				createAssetConfig(nil, AssetConfigConstants.FLOW_TYPE.DOWNLOAD_FLOW, nil, Enum.AssetType.Animation)
			end)

			StudioService.OnOpenManagePackagePlugin:connect(function(userId, assetId)
				createAssetConfig(assetId, AssetConfigConstants.FLOW_TYPE.EDIT_FLOW, nil, Enum.AssetType.Model)
			end)

			-- Create publish new plugin page.
			StudioService.OnPublishAsPlugin:connect(function(instances)
				createAssetConfig(
					nil,
					AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW,
					AssetConfigUtil.getClonedInstances(instances),
					Enum.AssetType.Plugin
				)
			end)

			-- Listen to MemStorageService
			local EVENT_ID_OPENASSETCONFIG = "OpenAssetConfiguration"
			MemStorageService:Bind(EVENT_ID_OPENASSETCONFIG,
				function(params)
					local asset = HttpService:JSONDecode(params)
					if asset.assetType == Enum.AssetType.Image then
						createAssetConfig(
							asset.id,
							AssetConfigConstants.FLOW_TYPE.EDIT_FLOW,
							nil,
							Enum.AssetType.Image)
					else
						createAssetConfig(
							asset.id,
							AssetConfigConstants.FLOW_TYPE.EDIT_FLOW,
							nil,
							Enum.AssetType.MeshPart)
					end
				end)
		end

		InsertAsset.registerLocalization(devFrameworkLocalization)
		InsertAsset.registerProcessDragHandler(plugin)
	end

	main()
end
