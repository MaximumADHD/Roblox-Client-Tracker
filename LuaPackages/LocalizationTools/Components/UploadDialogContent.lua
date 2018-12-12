local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)
local SupportedLocales = require(script.Parent.Parent.SupportedLocales)
local NumRowsLine = require(script.Parent.NumRowsLine)

local UploadDialogContent = Roact.PureComponent:extend("UploadDialogContent")

local function Line(props)
	return Roact.createElement("TextLabel", {
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Text = props.Text,
		Size = UDim2.new(1, 0, 0, 20),
		TextColor3 = props.Color,
		LayoutOrder = props.LayoutOrder,
	})
end

local function StringContentLine(props)
	local contentTrivial = (props.Content == "" or props.Content == nil or props.Content == 0)
	local color = contentTrivial and props.ColorB or props.ColorA
	return Roact.createElement(Line, {
		Text = props.PreText..(contentTrivial and "none" or tostring(props.Content)),
		Color = color,
		LayoutOrder = props.LayoutOrder})
end

local function UnsupportedLocalesLine(props)
	local unsupportedLocalesStr = tostring(props.UnsupportedLocales)
	if unsupportedLocalesStr == "" then
		return Roact.createElement(Line, {
			Text = "Unsupported locales: none",
			Color = props.ColorA,
			LayoutOrder = props.LayoutOrder})
	else
		return Roact.createElement(Line, {
			Text = "WARNING: unsupported locales detected.\nCurrent supported locales: "
				.. table.concat(SupportedLocales.GetSupportedLocalesList(), ", "),
			Color = props.ColorB,
			LayoutOrder = props.LayoutOrder})
	end
end

function UploadDialogContent:init()
	self.state = {
		AddLineEnabled = true,
		ChangeLineEnabled = true,
		RemoveLineEnabled = true,
	}
end

function UploadDialogContent:render()
	return Theming.withTheme(function(theme)
		local PromptText

		if self.props.PatchInfo.add + self.props.PatchInfo.change + self.props.PatchInfo.remove == 0 then
			PromptText = "Patch empty. Upload anyway?"
		else
			PromptText = "Upload patch?"
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 0,
			BackgroundColor3 = theme.MainBackground,
			BorderSizePixel = 0,
			LayoutOrder = 2,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 15),
				PaddingTop = UDim.new(0, 15),
			}),

			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 5),
			}),

			StatsFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 240),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				LayoutOrder = 1
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, 0),
				}),

				TableContentsTitle = Roact.createElement(Line, {
					Text = "Table contents:",
					Color = theme.BrightText,
					LayoutOrder = 1}),

				TableContentsFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 100),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, 0),
					}),

					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 30),
						PaddingTop = UDim.new(0, 5),
					}),

					TotalRowsLine = Roact.createElement(StringContentLine, {
						PreText = "Total rows: ",
						Content = self.props.PatchInfo.totalRows,
						ColorA = theme.BrightText,
						ColorB = theme.ErrorText,
						LayoutOrder = 1}),

					TranslationsLine = Roact.createElement(StringContentLine, {
						PreText = "Total translations: ",
						Content = self.props.PatchInfo.totalTranslations,
						ColorA = theme.BrightText,
						ColorB = theme.ErrorText,
						LayoutOrder = 2}),

					SupportedLocales = Roact.createElement(StringContentLine, {
						PreText = "Locales: ",
						Content = self.props.PatchInfo.supportedLocales,
						ColorA = theme.BrightText,
						ColorB = theme.DimmedText,
						LayoutOrder = 3}),

					UnsupportedLocales = Roact.createElement(UnsupportedLocalesLine, {
						UnsupportedLocales = self.props.PatchInfo.unsupportedLocales,
						ColorA = theme.DimmedText,
						ColorB = theme.WarningText,
						LayoutOrder = 4}),
				}),

				ThisPatchWill = Roact.createElement(Line, {
					Text = "This patch will:",
					Color = theme.BrightText,
					LayoutOrder = 3}),

				LineFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 80),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					LayoutOrder = 4,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, 0),
					}),

					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 30),
						PaddingTop = UDim.new(0, 5),
					}),

					AddLine = Roact.createElement(NumRowsLine, {
						PreText = "Add: ",
						NumRows = self.props.PatchInfo.add,
						EnabledColor = theme.BrightText,
						DisabledColor = theme.DimmedText,
						LayoutOrder = 1,
						Checked = self.state.AddLineEnabled,
						OnClicked = function()
							self:setState({
								AddLineEnabled = not self.state.AddLineEnabled,
							})
						end
					}),

					ChangeLine = Roact.createElement(NumRowsLine, {
						PreText = "Change: ",
						NumRows = self.props.PatchInfo.change,
						EnabledColor = theme.WarningText,
						DisabledColor = theme.DimmedText,
						LayoutOrder = 2,
						Checked = self.state.ChangeLineEnabled,
						OnClicked = function()
							self:setState({
								ChangeLineEnabled = not self.state.ChangeLineEnabled,
							})
						end
					}),

					DeleteLine = Roact.createElement(NumRowsLine, {
						PreText = "Delete: ",
						NumRows = self.props.PatchInfo.remove,
						EnabledColor = theme.ErrorText,
						DisabledColor = theme.DimmedText,
						LayoutOrder = 3,
						Checked = self.state.RemoveLineEnabled,
						OnClicked = function()
							self:setState({
								RemoveLineEnabled = not self.state.RemoveLineEnabled,
							})
						end
					}),
				}),

				Prompt = Roact.createElement(Line, {
					Text = PromptText,
					Color = theme.BrightText,
					LayoutOrder = 5}),
			}),

			ButtonFrame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 205, 0, 40),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 5),
				}),

				Cancel = Roact.createElement("TextButton", {
					Text = "Cancel",
					Size = UDim2.new(0, 100, 0, 35),
					BorderSizePixel = 1,
					BorderColor3 = theme.Border,
					TextColor3 = theme.BrightText,
					BackgroundColor3 = theme.MainBackground,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					LayoutOrder = 1,

					[Roact.Event.MouseButton1Click] = function()
						self.props.CancelCallback()
					end,
				}),

				Okay = Roact.createElement("TextButton", {
					Text = "Okay",
					Size = UDim2.new(0, 100, 0, 35),
					BorderSizePixel = 1,
					BorderColor3 = theme.Border,
					TextColor3 = theme.BrightText,
					BackgroundColor3 = theme.MainButton,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					LayoutOrder = 2,

					[Roact.Event.MouseButton1Click] = function()
						self.props.OkayCallback({
							addEnabled = self.state.AddLineEnabled,
							changeEnabled = self.state.ChangeLineEnabled,
							removeEnabled = self.state.RemoveLineEnabled,
						})
					end,
				}),
			}),
		})
	end)
end

return UploadDialogContent
