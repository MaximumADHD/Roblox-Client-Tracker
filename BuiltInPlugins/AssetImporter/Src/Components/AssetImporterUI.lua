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
local Separator = UI.Separator

local AssetImportTree = require(Plugin.Src.Components.AssetImportTree)
local ImportConfiguration = require(Plugin.Src.Components.ImportConfiguration)
local TopBar = require(Plugin.Src.Components.TopBar)

local AxisIndicator = require(Plugin.Src.Components.AxisIndicator)

local ShowImportPrompt = require(Plugin.Src.Thunks.ShowImportPrompt)

local SEPARATOR_WEIGHT = 1

local AssetImporterUI = Roact.PureComponent:extend("AssetImporterUI")

local emptyModel = Instance.new("Model")

local function getRenderModel(instanceMap, selectedInstance)
	local object = nil
	if instanceMap and selectedInstance then
		object = instanceMap[selectedInstance.Id]
	end
	if object == nil then
		return emptyModel
	end
	local object = object:Clone()
	local wrapper = Instance.new("Model")
	object.Parent = wrapper
	return wrapper
end

function AssetImporterUI:init()
	self.camera = Instance.new("Camera")
end

function AssetImporterUI:render()
	local props = self.props

	local style = props.Stylizer
	local sizes = style.Sizes

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
	}, {
		TopBar = Roact.createElement(TopBar, {
			LayoutOrder = 1,
			Padding = style.TopBarPadding,
			Size = UDim2.new(1, 0, 0, sizes.TopBarHeight),
			FileName = props.Filename or "",
			OnBrowse = props.showImportPrompt,
		}),

		TopSeparator = Roact.createElement(Separator, {
			DominantAxis = Enum.DominantAxis.Width,
			LayoutOrder = 2,
		}),

	 	BottomPanel = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 3,
			Position = UDim2.new(1, 0, 0, sizes.TopBarHeight),
			Size = UDim2.new(1, 0, 1, -(sizes.TopBarHeight + 2 * SEPARATOR_WEIGHT)),
		}, {
			LeftPanel = Roact.createElement(Pane, {
				LayoutOrder = 1,
				Layout = Enum.FillDirection.Vertical,
				Size = UDim2.new(0.5, 0, 1, 0),
			}, {
				PreviewContainer = Roact.createElement(Pane, {
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, sizes.PreviewRatio, 0),
				}, {
					PreviewRender = Roact.createElement(AssetRenderModel, {
						Model = getRenderModel(props.InstanceMap, props.SelectedSettingsItem),
						Camera = self.camera,
					}),
					AxisIndicatorContainer = Roact.createElement(Pane, {
						Size = UDim2.new(0, sizes.IndicatorSize, 0, sizes.IndicatorSize),
						Position = UDim2.new(1, sizes.IndicatorOffset, 1, sizes.IndicatorOffset),
						AnchorPoint = Vector2.new(1, 1),
						ZIndex = 2,
					}, {
						AxisIndicator = Roact.createElement(AxisIndicator, {
							ReferenceCamera = self.camera,
						}),
					}),
				}),

				Separator = Roact.createElement(Separator, {
					DominantAxis = Enum.DominantAxis.Width,
					LayoutOrder = 2,
				}),

				TreeContainer = Roact.createElement(Pane, {
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, sizes.PreviewRatio, -SEPARATOR_WEIGHT),
				}, {
					TreeView = Roact.createElement(AssetImportTree, {
						Instances = { props.AssetSettings },
						FileName = props.Filename or "",
					})
				})
			}),

			Separator = Roact.createElement(Separator, {
				DominantAxis = Enum.DominantAxis.Height,
				LayoutOrder = 2,
			}),

			RightPanel =  Roact.createElement(Pane, {
				LayoutOrder = 3,
				Size = UDim2.new(0.5, -SEPARATOR_WEIGHT, 1, 0),
			}, {
				ImportConfiguration = Roact.createElement(ImportConfiguration, {
					SettingsItem = props.SelectedSettingsItem,
				}),
			}),
		})
	})
end

AssetImporterUI = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(AssetImporterUI)

local function mapDispatchToProps(dispatch)
	return {
		showImportPrompt = function()
			dispatch(ShowImportPrompt())
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

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetImporterUI)
