local LocalizationService = game:GetService("LocalizationService")

local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)
local createFitToContent = require(script.Parent.createFitToContent)
local FitToContent = createFitToContent("Frame", "UIListLayout", {
    SortOrder = Enum.SortOrder.LayoutOrder,
    FillDirection = Enum.FillDirection.Vertical,
	Padding = UDim.new(0, 3),
})
local LabeledImageButton = require(script.Parent.LabeledImageButton)
local EmbeddedTableInterface = require(script.Parent.Parent.GameTable.EmbeddedTableInterface)

local EmbeddedTableSection = Roact.Component:extend("EmbeddedTableSection")

local TextCaptureStartText = "Start untranslated text capture"
local TextCaptureStopText = "Stop untranslated text capture"

function EmbeddedTableSection:init()
	self.toggleTextScraperEnabled = function()
		EmbeddedTableInterface.ToggleTextScraperEnabled()
		self:setState({}) -- force re-render
	end
end

function EmbeddedTableSection:render()
	return Theming.withTheme(function(theme)
		local isTextScraperRunning = LocalizationService.IsTextScraperRunning
		local textCaptureButtonImage = isTextScraperRunning and theme.TextCaptureButtonImage.On
			or theme.TextCaptureButtonImage.Off

		return Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = self.props.LayoutOrder,
		}, {
			SectionLabel = Roact.createElement("TextLabel", {
				Text = "Embedded Localization Table",
				Size = UDim2.new(1, 0, 0, 20),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 1,
				TextColor3 = theme.BrightText,
				TextSize = theme.SectionLabelTextSize,
			}),

			Container = Roact.createElement(FitToContent, {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 15),
					PaddingTop = UDim.new(0, 15),
				}),

				TextCapture = Roact.createElement(LabeledImageButton, {
					LabelText = isTextScraperRunning and TextCaptureStopText or TextCaptureStartText,
					ButtonText = "Text Capture",
					ButtonImage = textCaptureButtonImage,
					OnActivated = self.toggleTextScraperEnabled,
					Activated = isTextScraperRunning,
				}),

				Export = Roact.createElement(LabeledImageButton, {
					LabelText = "Export LocalizationTables under LocalizationService to CSV files",
					ButtonText = "Export",
					ButtonImage = theme.ExportButtonImage,
					OnActivated = EmbeddedTableInterface.PromptExportToCSVs,
					LayoutOrder = 2,
				}),

				Import = Roact.createElement(LabeledImageButton, {
					LabelText = "Import CSV files to LocalizationTables under LocalizationService",
					ButtonText = "Import",
					ButtonImage = theme.ImportButtonImage,
					OnActivated = EmbeddedTableInterface.PromptImportFromCSVs,
					LayoutOrder = 3,
				})
			})
		})
	end)
end

return EmbeddedTableSection