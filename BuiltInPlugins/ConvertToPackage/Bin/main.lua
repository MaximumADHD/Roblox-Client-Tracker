-- Delete entire plugin with FFlagUnifyModelPackagePublish3
return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local FFlagDebugBuiltInPluginModalsNotBlocking = game:GetFastFlag("DebugBuiltInPluginModalsNotBlocking")
	local FFlagUpdateConvertToPackageToDFContextServices = game:GetFastFlag("UpdateConvertToPackageToDFContextServices")

	local Plugin = script.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Rodux = require(Plugin.Packages.Rodux)
	local UILibrary = require(Plugin.Packages.UILibrary)
	local Framework = require(Plugin.Packages.Framework)
	local ContextServices = Framework.ContextServices
	local UILibraryWrapper = ContextServices.UILibraryWrapper

	local Util = Plugin.Src.Util
	local PluginTheme = if FFlagUpdateConvertToPackageToDFContextServices then require(Plugin.Src.Resources.MakeTheme) else require(Plugin.Src.Resources.DEPRECATED_UILibraryTheme)
	local Constants = require(Util.Constants)

	local MainReducer = require(Plugin.Src.Reducers.MainReducer)

	local NetworkInterface = require(Plugin.Src.Networking.NetworkInterface)

	-- localization
	local SourceStrings = Plugin.Src.Resources.SourceStrings
	local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings
	local Localization = if FFlagUpdateConvertToPackageToDFContextServices then ContextServices.Localization else UILibrary.Studio.Localization

	local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)

	local ScreenSelect = require(Plugin.Src.Components.ConvertToPackageWindow.ScreenSelect)

	local localization = Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = Plugin.Name,
	})

	local assetConfigHandle = nil
	local assetConfigGui = nil
	local function makePluginGui()
		local pluginGuiId = Plugin.Name
		assetConfigGui = plugin:CreateQWidgetPluginGui(pluginGuiId, {
			Size = Vector2.new(960, 600),
			MinSize = Vector2.new(960, 600),
			Resizable = true,
			Modal = not FFlagDebugBuiltInPluginModalsNotBlocking,
			InitialEnabled = false,
		})

		assetConfigGui.Name = localization:getText("Meta", "PluginName")
		assetConfigGui.Title = localization:getText("Meta", "PluginName")
		assetConfigGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		assetConfigGui:GetPropertyChangedSignal("Enabled"):connect(function()
			-- Handle if user clicked the X button to close the window
			if not assetConfigGui.Enabled then
				if assetConfigHandle then
					Roact.unmount(assetConfigHandle)
					assetConfigHandle = nil
				end
			end
		end)
	end

	local function onAssetConfigDestroy()
		if assetConfigHandle then
			Roact.unmount(assetConfigHandle)
			assetConfigHandle = nil
		end
		assetConfigGui.Enabled = false
	end

	-- assetTypeEnum Enum.AssetType, some asset like places, need to use the parameter to
	--				set the assetType of the Asset, and skip the assetTypeSelection.
	--				default to nil
	-- instances instances, Will be used in publishing new assets. Instances are userdata,
	--				we can't check the assetType using that, using AssetType instead.
	-- string assetName, the initial name of the asset (used for default config).
	local function openAssetConfigWindow(instances, assetName, clonedInstances)
		if assetConfigHandle then
			return
		end

		local mainStore = Rodux.Store.new(MainReducer, {
			AssetConfigReducer = { instances = instances, clonedInstances = clonedInstances },
		}, {
			Rodux.thunkMiddleware,
		})

		local theme = if FFlagUpdateConvertToPackageToDFContextServices then PluginTheme() else PluginTheme.new()

		local networkInterface = NetworkInterface.new()
		local assetConfigComponent = Roact.createElement(ServiceWrapper, {
			plugin = plugin,
			store = mainStore,
			theme = theme,
			focusGui = assetConfigGui,
			networkInterface = networkInterface,
			localization = localization,
			uiLibWrapper = if FFlagUpdateConvertToPackageToDFContextServices then UILibraryWrapper.new(UILibrary) else nil,
		}, {
			Roact.createElement(ScreenSelect, {
				onClose = onAssetConfigDestroy,
				assetName = assetName,
				pluginGui = assetConfigGui,
				currentScreen = Constants.SCREENS.CONFIGURE_ASSET,
				instances = instances,
			}),
		})

		assetConfigHandle = Roact.mount(assetConfigComponent, assetConfigGui)
		assetConfigGui.Enabled = true
		return assetConfigHandle
	end

	local function main()
		plugin.Name = Plugin.Name
		makePluginGui()
		pluginLoaderContext.signals["PackageUIService.OnOpenConvertToPackagePlugin"]:Connect(
			function(instances, name, clonedInstances)
				openAssetConfigWindow(instances, name, clonedInstances)
			end
		)
	end

	main()
end
