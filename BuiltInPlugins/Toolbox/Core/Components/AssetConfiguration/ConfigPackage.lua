--[[
	This component is responsible for configuring asset's make Package field

	Props:
	ToggleCallback, function, will return current selected statue if toggled.
	TotalHeight, integer, gives height of package toggle.
	PackageEnabled, boolean, specifies whether toggle is enabled.
	PackageOn, boolean, specifies whether toggle is shown on.
	PackageWarningText, string, warning to show if Package publish contains any issues.
	LayoutOrder, integer, specifies order in container.
	Title, string
]]
-- added with FFlagUnifyModelPackagePublish3
local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local ToggleButton = Framework.UI.ToggleButton
local TextLabel = Framework.UI.Decoration.TextLabel
local StyleModifier = Framework.Util.StyleModifier
local Pane = Framework.UI.Pane

local ConfigPackage = Roact.PureComponent:extend("ConfigPackage")

local ERROR_TEXT_SPACING = 10
local TIPS_SPACING = 10

local TOGGLE_BUTTON_WIDTH = 40
local TOGGLE_BUTTON_HEIGHT = 24

local FFlagToolboxFixPublishPackageColor = game:GetFastFlag("ToolboxFixPublishPackageColor")
local FFlagToolboxUpdatePackageString = game:GetFastFlag("ToolboxUpdatePackageString")

function ConfigPackage:init(props)
	self.toggleCallback = function()
		local props = self.props
		props.ToggleCallback(not props.PackageOn)
	end
end

function ConfigPackage:render()
	return self:renderContent()
end

function ConfigPackage:renderContent()
	local props = self.props

	local Title = props.Title
	local LayoutOrder = props.LayoutOrder
	local TotalHeight = props.TotalHeight
	local PackageOn = props.PackageOn
	local PackageEnabled = props.PackageEnabled
	local PackageWarningText = props.PackageWarningText

	local ToggleCallback = props.ToggleCallback

	local theme = self.props.Stylizer
	local publishAssetTheme = theme.publishAsset

	local localization = props.Localization
	local informationText = localization:getText("AssetConfigPackage", if FFlagToolboxUpdatePackageString then "HelpTextV2" else "HelpText")
	local ThreeDWarning = localization:getText("AssetConfigPackage", "Non3DRoot3DDescendentsWarning")

	local showWarningText = props.PackageWarningText ~= nil

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, TotalHeight),

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = LayoutOrder
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),

		Title = Roact.createElement(TextLabel, {
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextColor3 = if FFlagToolboxFixPublishPackageColor then nil else publishAssetTheme.titleTextColor,
			TextColor = if FFlagToolboxFixPublishPackageColor then publishAssetTheme.titleTextColor else nil,
			Font = Constants.FONT,

			LayoutOrder = 1,
		}),

		RightFrame = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, -AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, 0),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 2,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, 5),
			}),

			ToggleButtonContainer = Roact.createElement(Pane, {
				BackgroundTransparency = 1,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, TOGGLE_BUTTON_HEIGHT + TIPS_SPACING),
				Padding = {
					Bottom = TIPS_SPACING,
				},
				Spacing = ERROR_TEXT_SPACING,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				ToggleButton = Roact.createElement(ToggleButton, {
					Disabled = not PackageEnabled,
					LayoutOrder = 1,
					OnClick = self.toggleCallback,
					Selected = PackageOn,
					Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
				}),

				ErrorText = if showWarningText
					then Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = 2,
						BackgroundTransparency = 1,
						Font = Constants.FONT,
						Size = UDim2.new(1,  -(TOGGLE_BUTTON_WIDTH+ERROR_TEXT_SPACING), 0, 0),
						Text = PackageWarningText,
						TextWrapped = true,
						TextColor = if PackageWarningText == ThreeDWarning then theme.assetConfig.warningColor else theme.assetConfig.errorColor,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
						TextSize = Constants.FONT_SIZE_LARGE,
					})
					else nil,
			}),

			TipsLabel = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BorderSizePixel = 0,
				LayoutOrder = 3,

				Text = informationText,
				StyleModifier = StyleModifier.Disabled,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = Constants.FONT_SIZE_LARGE,

			}),
		}),
	})
end


ConfigPackage = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(ConfigPackage)


return ConfigPackage