--[[
	For managing embedded localization tables
]]
local LocalizationService = game:GetService("LocalizationService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local FFlagRemoveUILibraryFitContent = Framework.SharedFlags.getFFlagRemoveUILibraryFitContent()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane

local FitToContent
if not FFlagRemoveUILibraryFitContent then
	local UILibrary = require(Plugin.Packages.UILibrary)
    local createFitToContent = UILibrary.Component.createFitToContent
    FitToContent = createFitToContent("Frame", "UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
    })
end

local AnalyticsContext = require(Plugin.Src.ContextServices.AnalyticsContext)
local LabeledImageButton = require(Plugin.Src.Components.LabeledImageButton)
local EmbeddedTableUtil = require(Plugin.Src.Util.EmbeddedTableUtil)

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
	local theme = props.Stylizer
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
	
	local containerChildren = {
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
	}

	local children = {
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
		Container = (
			if FFlagRemoveUILibraryFitContent then
				Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.Y,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Layout = Enum.FillDirection.Vertical,
					LayoutOrder = 2,
				}, containerChildren)
			else
				Roact.createElement(FitToContent, {
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, containerChildren)
		)
	}

	if FFlagRemoveUILibraryFitContent then
		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrder,
		}, children)
	else
		return Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, children)
	end
end

local function mapStateToProps(state, _)
	return {
		IsBusy = state.CloudTable.IsBusy,
	}
end

EmbeddedTableSection = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Analytics = AnalyticsContext,
})(EmbeddedTableSection)

return RoactRodux.connect(mapStateToProps)(EmbeddedTableSection)
