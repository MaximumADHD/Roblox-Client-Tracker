local AssetImportService = game:GetService("AssetImportService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AssetRenderModel = require(Plugin.Packages.Framework).StudioUI.AssetRenderModel

local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local AssetImportTree = require(Plugin.Src.Components.AssetImportTree)
local ImportConfiguration = require(Plugin.Src.Components.ImportConfiguration)
local TopBar = require(Plugin.Src.Components.TopBar)

local SetAssetSettings = require(Plugin.Src.Actions.SetAssetSettings)
local SetFilename = require(Plugin.Src.Actions.SetFilename)
local SetInstanceMap = require(Plugin.Src.Actions.SetInstanceMap)
local SetSelectedSettingsItem = require(Plugin.Src.Actions.SetSelectedSettingsItem)

local MeshImporterUI = Roact.PureComponent:extend("MeshImporterUI")

local emptyModel = Instance.new("Model")

local function getRenderModel(instanceMap, selectedInstance)
	local object = nil
	if instanceMap and selectedInstance then
		object = instanceMap[selectedInstance.Id]
	end
	if object == nil then
		return emptyModel
	end
	return object
end

function MeshImporterUI:render()
	local props = self.props

	local style = props.Stylizer
	local sizes = style.Sizes

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
	}, {
		TopBar = Roact.createElement(TopBar, {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, sizes.TopBarHeight),
			FileName = props.Filename or "",
			OnBrowse = props.PromptAndSetAssetSettings,
		}),
	 	BottomPanel = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 2,
			Position = UDim2.new(1, 0, 0, sizes.TopBarHeight),
			Size = UDim2.new(1, 0, 1, -sizes.TopBarHeight),
			Spacing = sizes.GutterSize,
		}, {
			LeftPanel = Roact.createElement(Pane, {
				LayoutOrder = 1,
				Layout = Enum.FillDirection.Vertical,
				Size = UDim2.new(0.5, 0, 1, 0),
				Spacing = sizes.GutterSize,
			}, {
				PreviewContainer = Roact.createElement(Pane, {
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 1, -sizes.PreviewHeight),
					Style = "BorderBox",
				}, {
					PreviewRender = Roact.createElement(AssetRenderModel, {
						Model = getRenderModel(props.InstanceMap, props.SelectedSettingsItem),
					})
				}),
				TreeContainer = Roact.createElement(Pane, {
					LayoutOrder = 2,
					Size = UDim2.new(1, 0, 0, sizes.PreviewHeight - sizes.GutterSize),
				}, {
					TreeView = Roact.createElement(AssetImportTree, {
						Instances = { props.AssetSettings },
					})
				})
			}),
			RightPanel =  Roact.createElement(Pane, {
				LayoutOrder = 2,
				Size = UDim2.new(0.5, -sizes.GutterSize, 1, 0),
				Style = "BorderBox",
			}, {
				ImportConfiguration = Roact.createElement(ImportConfiguration, {
					SettingsItem = props.SelectedSettingsItem,
				}),
			}),
		})
	})
end

MeshImporterUI = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(MeshImporterUI)

local function mapDispatchToProps(dispatch)
	return {
		PromptAndSetAssetSettings = function()
			dispatch(function()
				local settings, filename = AssetImportService:ImportMeshWithPrompt()
				local instanceMap = AssetImportService:GetCurrentImportMap()
				
				dispatch(SetInstanceMap(instanceMap))
				dispatch(SetAssetSettings(settings))
				dispatch(SetFilename(filename))
				dispatch(SetSelectedSettingsItem(settings))
			end)
		end,
	}
end

local function mapStateToProps(state)
	return {
		AssetSettings = state.assetSettings,
		Filename = state.filename,
		InstanceMap = state.instanceMap,
		SelectedSettingsItem = state.selectedSettingsItem,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MeshImporterUI)
