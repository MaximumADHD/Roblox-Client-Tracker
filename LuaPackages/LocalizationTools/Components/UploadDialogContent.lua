local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)
local NumTranslationsLine = require(script.Parent.NumTranslationsLine)
local SourceStrings = require(script.Parent.Parent.SourceStrings)

local UploadDialogContent = Roact.PureComponent:extend("UploadDialogContent")

local function Line(props)
	return Roact.createElement("TextLabel", {
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Text = props.Text,
		Size = props.Size or UDim2.new(1, 0, 0, 20),
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
	if props.Content ~= nil and props.Content ~= "" then
		return Roact.createElement(Line, {
			Text = props.PreText .. props.Content,
			Color = props.Color,
			LayoutOrder = props.LayoutOrder})
	end
end

function UploadDialogContent:init()
	self.state = {
		AddLineEnabled = true,
		ChangeLineEnabled = true,
		RemoveLineEnabled = true,
		AddEntriesLineEnabled = true,
		RemoveEntriesLineEnabled = true,
	}
end

function UploadDialogContent:render()
	return Theming.withTheme(function(theme)
		local PromptText

		if self.props.PatchInfo.numAddedTranslations +
			self.props.PatchInfo.numChangedTranslations +
			self.props.PatchInfo.numRemovedTranslations +
			self.props.PatchInfo.numAddedEntries +
			self.props.PatchInfo.numRemovedEntries == 0
		then
			PromptText = SourceStrings.UploadDialogContent.PatchEmptyMessage
		else
			PromptText = SourceStrings.UploadDialogContent.UploadPatchMessage
		end

		local AddEntriesLine = Roact.createElement(NumTranslationsLine, {
			PreText = SourceStrings.UploadDialogContent.AddEntriesPretext,
			NumTranslations = self.props.PatchInfo.numAddedEntries,
			EnabledColor = theme.BrightText,
			DisabledColor = theme.DimmedText,
			LayoutOrder = 1,
			Checked = self.state.AddEntriesLineEnabled,
			OnClicked = function()
				self:setState({
					AddLineEnabled = not self.state.AddEntriesLineEnabled,
				})
			end
		})

		local AddLine = Roact.createElement(NumTranslationsLine, {
			PreText = SourceStrings.UploadDialogContent.AddTranslationsPretext,
			NumTranslations = self.props.PatchInfo.numAddedTranslations,
			EnabledColor = theme.BrightText,
			DisabledColor = theme.DimmedText,
			LayoutOrder = 2,
			Checked = self.state.AddLineEnabled,
			OnClicked = function()
				self:setState({
					AddLineEnabled = not self.state.AddLineEnabled,
				})
			end
		})

		local ChangeLine = Roact.createElement(NumTranslationsLine, {
			PreText = SourceStrings.UploadDialogContent.ChangeTranslationsPretext,
			NumTranslations = self.props.PatchInfo.numChangedTranslations,
			EnabledColor = theme.WarningText,
			DisabledColor = theme.DimmedText,
			LayoutOrder = 3,
			Checked = self.state.ChangeLineEnabled,
			OnClicked = function()
				self:setState({
					ChangeLineEnabled = not self.state.ChangeLineEnabled,
				})
			end
		})

		local DeleteEntriesLine
		if self.props.PatchInfo.includeDeletes then
			DeleteEntriesLine = Roact.createElement(NumTranslationsLine, {
				PreText = SourceStrings.UploadDialogContent.DeleteEntriesPretext,
				NumTranslations = self.props.PatchInfo.numRemovedEntries,
				EnabledColor = theme.ErrorText,
				DisabledColor = theme.DimmedText,
				LayoutOrder = 4,
				Checked = self.state.RemoveEntriesLineEnabled,
				OnClicked = function()
					self:setState({
						RemoveEntriesLineEnabled = not self.state.RemoveEntriesLineEnabled,
					})
				end
			})
		end

		local DeleteLine
		if self.props.PatchInfo.includeDeletes then
			DeleteLine = Roact.createElement(NumTranslationsLine, {
				PreText = SourceStrings.UploadDialogContent.DeleteTranslationsPretext,
				NumTranslations = self.props.PatchInfo.numRemovedTranslations,
				EnabledColor = theme.ErrorText,
				DisabledColor = theme.DimmedText,
				LayoutOrder = 5,
				Checked = self.state.RemoveLineEnabled,
				OnClicked = function()
					self:setState({
						RemoveLineEnabled = not self.state.RemoveLineEnabled,
					})
				end
			})
		end

		local AddLanguagesLine
		if self.props.PatchInfo.newLanguages ~= nil and 
			self.props.PatchInfo.newLanguages ~= "" then
			AddLanguagesLine = Roact.createElement(Line, {
				Text = SourceStrings.UploadDialogContent.AddLanguagesPretext .. self.props.PatchInfo.newLanguages,
				Color = theme.BrightText,
				LayoutOrder = 6
			})
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
				Size = UDim2.new(1, 0, 0, 290),
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
					Text = SourceStrings.UploadDialogContent.PatchContainsLabelText,
					Color = theme.BrightText,
					LayoutOrder = 1}),

				TableContentsFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 90),
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
						PreText = SourceStrings.UploadDialogContent.PatchTotalRowsLabelText,
						Content = self.props.PatchInfo.totalRows,
						ColorA = theme.BrightText,
						ColorB = theme.ErrorText,
						LayoutOrder = 1}),

					TranslationsLine = Roact.createElement(StringContentLine, {
						PreText = SourceStrings.UploadDialogContent.PatchTotalTranslationsLabelText,
						Content = self.props.PatchInfo.totalTranslations,
						ColorA = theme.BrightText,
						ColorB = theme.ErrorText,
						LayoutOrder = 2}),

					SupportedLocales = Roact.createElement(StringContentLine, {
						PreText = SourceStrings.UploadDialogContent.PatchLanguagesLabelText,
						Content = self.props.PatchInfo.supportedLocales,
						ColorA = theme.BrightText,
						ColorB = theme.DimmedText,
						LayoutOrder = 3}),

					UnsupportedLocales = Roact.createElement(UnsupportedLocalesLine, {
						PreText = SourceStrings.UploadDialogContent.PatchInvalidLanguagesLabelText,
						Content = self.props.PatchInfo.unsupportedLocales,
						Color = theme.WarningText,
						LayoutOrder = 4}),
				}),

				ThisPatchWill = Roact.createElement(Line, {
					Text = SourceStrings.UploadDialogContent.PatchWillLabelText,
					Color = theme.BrightText,
					LayoutOrder = 3}),

				LineFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 130),
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

					AddEntriesLine = AddEntriesLine,
					AddLine = AddLine,
					ChangeLine = ChangeLine,
					DeleteEntriesLine = DeleteEntriesLine,
					DeleteLine = DeleteLine,
					AddLanguagesLine = AddLanguagesLine,
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
					Text = SourceStrings.UploadDialogContent.CancelButtonText,
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

				Confirm = Roact.createElement("TextButton", {
					Text = SourceStrings.UploadDialogContent.ConfirmButtonText,
					Size = UDim2.new(0, 100, 0, 35),
					BorderSizePixel = 1,
					BorderColor3 = theme.Border,
					TextColor3 = theme.BrightText,
					BackgroundColor3 = theme.MainButton,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					LayoutOrder = 2,

					[Roact.Event.MouseButton1Click] = function()
						self.props.OkayCallback()
					end,
				}),
			}),
		})
	end)
end

return UploadDialogContent
