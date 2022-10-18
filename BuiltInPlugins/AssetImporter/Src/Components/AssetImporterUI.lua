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

local getFFlagAssetImportResetMaterialCam = require(Plugin.Src.Flags.getFFlagAssetImportResetMaterialCam)

local SEPARATOR_WEIGHT = 1
local INSERT_CAMERA_DIST_MULT = 0.8
local CAMERA_FOCUS_DIR = Vector3.new(-1, 1, -1)

local AssetImporterUI = Roact.PureComponent:extend("AssetImporterUI")

local emptyModel = Instance.new("Model")

local function getRenderModel(previewInstance)
	if previewInstance == nil then
		return emptyModel
	end
	local wrapper = Instance.new("Model")
	previewInstance.Parent = wrapper
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
		local size = getRenderModel(self.props.PreviewInstance):GetExtentsSize()
		local cameraDistAway = size.Magnitude * INSERT_CAMERA_DIST_MULT
		local dir = CAMERA_FOCUS_DIR.Unit
		self.camera.Focus = CFrame.new()
		self.camera.CFrame = CFrame.new(cameraDistAway * dir, self.camera.Focus.Position)
	end

	self.recenterCamera = false
	self.recenterModel = true
	self.lastCamCFrame = CFrame.new()
end

if getFFlagAssetImportResetMaterialCam() then
	function AssetImporterUI:willUpdate(nextProps)
		local nextSettings = nextProps.SelectedSettingsItem
		local currSettings = self.props.SelectedSettingsItem

		if (currSettings ~= nextSettings) then 
			if (currSettings.ClassName ~= "ImporterMaterialSettings") then
				self.lastCamCFrame = self.camera.CFrame
			end

			if (nextSettings.ClassName == "ImporterMaterialSettings") then
				self.recenterCamera = true
			else
				self.recenterCamera = false
				self.camera.CFrame = self.lastCamCFrame
			end
		end
	end
end

function AssetImporterUI:render()
	local props = self.props

	local style = props.Stylizer
	local localization = props.Localization
	local sizes = style.Sizes

	local recenterCamera = false
	local recenterModel = true

	local model = getRenderModel(props.PreviewInstance)

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
						Model = model,
						Camera = self.camera,
						FocusDirection = CAMERA_FOCUS_DIR,
						RecenterCameraOnUpdate = if getFFlagAssetImportResetMaterialCam() then self.recenterCamera else recenterCamera,
						RecenterModelOnUpdate = if getFFlagAssetImportResetMaterialCam() then self.recenterModel else recenterModel,
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
					CameraResetButtonContainer = Roact.createElement(Pane, {
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
					AssetImportSession = props.AssetImportSession,
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
		AssetImportSession = state.assetImportSession,
		AssetSettings = state.assetSettings,
		Filename = state.filename,
		PreviewInstance = state.previewInstance,
		SelectedSettingsItem = state.selectedSettingsItem,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetImporterUI)
