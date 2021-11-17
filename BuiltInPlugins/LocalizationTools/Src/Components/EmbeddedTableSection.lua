--[[
	For managing embedded localization tables
]]

local LocalizationService = game:GetService("LocalizationService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local FitToContent = createFitToContent("Frame", "UIListLayout", {
    SortOrder = Enum.SortOrder.LayoutOrder,
})

local AnalyticsContext = require(Plugin.Src.ContextServices.AnalyticsContext)
local LabeledImageButton = require(Plugin.Src.Components.LabeledImageButton)
local EmbeddedTableUtil = require(Plugin.Src.Util.EmbeddedTableUtil)

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local EmbeddedTableSection = Roact.PureComponent:extend("EmbeddedTableSection")

function EmbeddedTableSection:init()
	self.toggleTextScraperEnabled = function()
		local props = self.props
		local analytics = props.Analytics:get()
		EmbeddedTableUtil.toggleTextScraperEnabled(analytics)
		self:setState({})  -- force re-render
	end
end

function EmbeddedTableSection:render()
	local props = self.props
	local theme
	if THEME_REFACTOR then
		theme = props.Stylizer
	else
		theme = props.Theme:get("EmbeddedTableSection")
	end
	local localization = props.Localization
	local analytics = props.Analytics:get()
	local layoutOrder = props.LayoutOrder
	local active = not props.IsBusy

	local isTextScraperRunning = LocalizationService.IsTextScraperRunning
	local textCaptureButtonImage = isTextScraperRunning
		and theme.TextCaptureButtonImage.On
		or theme.TextCaptureButtonImage.Off
	local textCaptureLabelText = isTextScraperRunning
		and localization:getText("EmbeddedTableSection", "TextCaptureStopText")
		or localization:getText("EmbeddedTableSection", "TextCaptureStartText")

	return Roact.createElement(FitToContent, {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, theme.PaddingTop * 2),
		}),
		SectionLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, theme.SectionLabelSize),
			Text = localization:getText("EmbeddedTableSection", "SectionLabel"),
			TextColor3 = theme.TextColor,
			TextSize = theme.SectionLabelTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Container = Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, theme.PaddingTop),
				PaddingLeft = UDim.new(0, theme.LeftIndent),
			}),
			TextCapture = Roact.createElement(LabeledImageButton, {
				Active = active,
				ButtonText = localization:getText("EmbeddedTableSection", "TextCaptureButton"),
				ButtonImage = textCaptureButtonImage,
				LabelText = textCaptureLabelText,
				LayoutOrder = 1,
				OnButtonClick = self.toggleTextScraperEnabled,
			}),
			Export = Roact.createElement(LabeledImageButton, {
				Active = active,
				ButtonText = localization:getText("EmbeddedTableSection", "ExportButton"),
				ButtonImage = theme.ExportButtonImage,
				LabelText = localization:getText("EmbeddedTableSection", "ExportTextLabel"),
				LayoutOrder = 2,
				OnButtonClick = function()
					EmbeddedTableUtil.promptExportToCSVs(analytics)
				end,
			}),
			Import = Roact.createElement(LabeledImageButton, {
				Active = active,
				ButtonText = localization:getText("EmbeddedTableSection", "ImportButton"),
				ButtonImage = theme.ImportButtonImage,
				LabelText = localization:getText("EmbeddedTableSection", "ImportTextLabel"),
				LayoutOrder = 3,
				OnButtonClick = function()
					EmbeddedTableUtil.promptImportFromCSVs(analytics)
				end,
			}),
		})
	})
end

local function mapStateToProps(state, _)
	return {
		IsBusy = state.CloudTable.IsBusy,
	}
end


EmbeddedTableSection = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Localization = ContextServices.Localization,
	Analytics = AnalyticsContext,
})(EmbeddedTableSection)



return RoactRodux.connect(mapStateToProps)(EmbeddedTableSection)
