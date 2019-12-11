local LocalizationToolsPluginV2Enabled = settings():GetFFlag("LocalizationToolsPluginV2Enabled")

local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)
local StudioThemeProvider = require(script.Parent.StudioThemeProvider)
local GameTableSection = require(script.Parent.GameTableSection)
local EmbeddedTableSection = require(script.Parent.EmbeddedTableSection)
local TestLanguageSection = require(script.Parent.TestLanguageSection)

local LocalizationTools = Roact.Component:extend("LocalizationTools")

function LocalizationTools:init()
	self.state = {
		Message = "", -- (Otherwise a nil propagates and "Label" appears in the initial ui.)
	}

	self.SetMessage = function(message)
		self:setState({
			Message = message,
		})
	end
end

function LocalizationTools:render()
	local ribbonBorder = 1

	return Roact.createElement(StudioThemeProvider, {
		StudioSettings = self.props.StudioSettings,
	}, {
		Content = Theming.withTheme(function(theme)
			local testLanguageSection
			local embeddedTableSection
			local canvasHight = 320

			if LocalizationToolsPluginV2Enabled then
				embeddedTableSection = Roact.createElement(EmbeddedTableSection, {
					LayoutOrder = 3,
				})

				canvasHight = 420
			else
				testLanguageSection = Roact.createElement(TestLanguageSection, {
					AllLanguagesInfo = self.props.AllLanguagesInfo,
					Window = self.props.Window,
					LayoutOrder = 1,
				})
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				MessageFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 20),
					Position = UDim2.new(0, 0, 1, -20),
					BackgroundTransparency = 0,
					BackgroundColor3 = theme.RibbonTab,
					BorderSizePixel = ribbonBorder,
					BorderColor3 = theme.Border,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 5),
					}),

					MessageTextLabel = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, -5, 1, 0),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextColor3 = theme.BrightText,
						Text = self.state.Message,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				ScrollingFrame = Roact.createElement("ScrollingFrame", {
					Size = UDim2.new(1, 0, 1, -20 - ribbonBorder),
					ScrollingDirection = Enum.ScrollingDirection.XY,
					BackgroundTransparency = 0,
					BorderSizePixel = 1,
					ScrollBarImageTransparency = 0,
					ScrollBarImageColor3 = theme.ScrollBar,
					BackgroundColor3 = theme.ScrollBarBackground,
					BorderColor3 = theme.Border,
					ClipsDescendants = true,
					CanvasSize = UDim2.new(0, 320, 0, canvasHight),
				}, {
					Container = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 0,
						BackgroundColor3 = theme.MainBackground,
						BorderSizePixel = 0,
					}, {
						Padding = Roact.createElement("UIPadding", {
							PaddingTop = UDim.new(0, 5),
							PaddingLeft = UDim.new(0, 5),
						}),

						Layout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Vertical,
							Padding = UDim.new(0, 5),
						}),

						TestLanguageSection = testLanguageSection,

						GameTableSection = Roact.createElement(GameTableSection, {
							Window = self.props.Window,
							ShowDialog = self.props.ShowDialog,
							SetMessage = self.SetMessage,
							OpenCSV = self.props.OpenCSV,
							ComputeReplacePatch = self.props.ComputeReplacePatch,
							ComputeUpdatePatch = self.props.ComputeUpdatePatch,
							UploadPatch = self.props.UploadPatch,
							DownloadGameTable = self.props.DownloadGameTable,
							CheckTableAvailability = self.props.CheckTableAvailability,
							GameIdChangedSignal = self.props.GameIdChangedSignal,
							SaveCSV = self.props.SaveCSV,
							HandleUploadAnalytics = self.props.HandleUploadAnalytics,
							HandleDownloadAnalytics = self.props.HandleDownloadAnalytics,
							RequestAssetGeneration = self.props.RequestAssetGeneration,
							LayoutOrder = 2,
						}),

						EmbeddedTableSection = embeddedTableSection,
					})
				})
			})
		end)
	})
end


return LocalizationTools
