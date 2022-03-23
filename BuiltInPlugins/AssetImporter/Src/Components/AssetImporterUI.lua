local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AssetRenderModel = require(Plugin.Packages.Framework).StudioUI.AssetRenderModel

local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer
local ThemeSwitcher = Framework.Style.ThemeSwitcher

local FFlagDevFrameworkSeparateCenterCameraCenterModel = game:GetFastFlag("DevFrameworkSeparateCenterCameraCenterModel")

local UI = Framework.UI
local Pane = UI.Pane
local Separator = UI.Separator
local Button = UI.Button
local Decoration = UI.Decoration
local Tooltip = UI.Tooltip

local AssetImportTree = require(Plugin.Src.Components.AssetImportTree)
local ImportConfiguration = require(Plugin.Src.Components.ImportConfiguration)
local TopBar = require(Plugin.Src.Components.TopBar)

local AxisIndicator = require(Plugin.Src.Components.AxisIndicator)

local ShowImportPrompt = require(Plugin.Src.Thunks.ShowImportPrompt)

local Images = require(Plugin.Src.Utility.Images)
local GetLocalizedString = require(Plugin.Src.Utility.GetLocalizedString)

local SEPARATOR_WEIGHT = 1
local INSERT_CAMERA_DIST_MULT = 0.8
local CAMERA_FOCUS_DIR = Vector3.new(-1, 1, -1)

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

local function getResetCamImage()
	local theme = ThemeSwitcher.getThemeName()
	if theme == "Dark" or theme == "Default" then
		return Images.RESET_CAM_DARK
	else
		return Images.RESET_CAM_LIGHT
	end
end

function AssetImporterUI:init()
	self.camera = Instance.new("Camera")
	self.centerCamera = function()
		local size = getRenderModel(self.props.InstanceMap, self.props.SelectedSettingsItem):GetExtentsSize()
		local cameraDistAway = size.Magnitude * INSERT_CAMERA_DIST_MULT
		local dir = CAMERA_FOCUS_DIR.Unit
		self.camera.Focus = CFrame.new()
		self.camera.CFrame = CFrame.new(cameraDistAway * dir, self.camera.Focus.Position)
	end
end

function AssetImporterUI:render()
	local props = self.props

	local style = props.Stylizer
	local localization = props.Localization
	local sizes = style.Sizes

	local recenterCamera
	local recenterModel
	if FFlagDevFrameworkSeparateCenterCameraCenterModel then
		recenterCamera = false
		recenterModel = true
	end

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
						FocusDirection = CAMERA_FOCUS_DIR,
						RecenterCameraOnUpdate = recenterCamera,
						RecenterModelOnUpdate = recenterModel,
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
					CameraResetButtonContainer = FFlagDevFrameworkSeparateCenterCameraCenterModel and Roact.createElement(Pane, {
						Size = UDim2.new(0, 28, 0, 28),
						Position = UDim2.new(1, -10, 0, 10),
						AnchorPoint = Vector2.new(1, 0),
						ZIndex = 2,
					}, {
						CameraResetButton = Roact.createElement(Button, {
							OnClick = self.centerCamera,
							Style = "RoundSubtle",
						}, {
							Icon = Roact.createElement(Decoration.Image, {
								Image = getResetCamImage(),
							}, {
								Tooltip = Roact.createElement(Tooltip, {
									Text = GetLocalizedString(localization, "PreviewTooltip", "ResetCam"),
								}),
							}),
						}),
					}) or nil,
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
