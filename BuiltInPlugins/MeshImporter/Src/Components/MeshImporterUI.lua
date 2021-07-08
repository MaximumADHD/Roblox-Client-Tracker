local AssetImportService = game:GetService("AssetImportService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local AssetRenderModel = require(Plugin.Packages.Framework.StudioUI.AssetRenderModel)

local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local AssetImportTree = require(Plugin.Src.Components.AssetImportTree)
local ImportConfiguration = require(Plugin.Src.Components.ImportConfiguration)
local TopBar = require(Plugin.Src.Components.TopBar)

local SetAssetSettings = require(Plugin.Src.Actions.SetAssetSettings)

local MeshImporterUI = Roact.PureComponent:extend("MeshImporterUI")

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
			FileName = props.assetSettings and props.assetSettings.Name or "",
			OnBrowse = props.promptAndSetAssetSettings,
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
						Model = props.Model,
					})
				}),
				TreeContainer = Roact.createElement(Pane, {
					LayoutOrder = 2,
					Size = UDim2.new(1, 0, 0, sizes.PreviewHeight - sizes.GutterSize),
				}, {
					TreeView = Roact.createElement(AssetImportTree, {
						Instances = { props.assetSettings },
					})
				})
			}),
			RightPanel =  Roact.createElement(Pane, {
				LayoutOrder = 2,
				Size = UDim2.new(0.5, -sizes.GutterSize, 1, 0),
				Style = "BorderBox",
			}, {
				ImportConfiguration = Roact.createElement(ImportConfiguration, {}),
			}),
		})
	})
end

ContextServices.mapToProps(MeshImporterUI, {
	Localization = Localization,
	Stylizer = Stylizer,
})

local function mapDispatchToProps(dispatch)
	return {
		promptAndSetAssetSettings = function()
			dispatch(function()
				local settings = AssetImportService:ImportMeshWithPrompt()
				dispatch(SetAssetSettings(settings))
			end)
		end,
	}
end

local function mapStateToProps(state)
	return {
		assetSettings = state.assetSettings,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MeshImporterUI)
