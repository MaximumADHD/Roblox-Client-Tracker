--!nolint ImplicitReturn
--^ DEVTOOLS-4493

--[[
	The content to be rendered in confirm dialog
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Button = UI.Button
local HoverArea = UI.HoverArea

local UploadDialogContent = Roact.PureComponent:extend("UploadDialogContent")

local function Line(props)
	return Roact.createElement("TextLabel", {
		TextXAlignment = Enum.TextXAlignment.Left,
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
	local text = string.format("%s %s", props.PreText, contentTrivial and "none" or tostring(props.Content))
	return Roact.createElement(Line, {
		Text = text,
		Color = color,
		LayoutOrder = props.LayoutOrder
	})
end

local function UnsupportedLocalesLine(props)
	if props.Content ~= nil and props.Content ~= "" then
		local text = string.format("%s %s", props.PreText, props.Content)
		return Roact.createElement(Line, {
			Text = text,
			Color = props.Color,
			LayoutOrder = props.LayoutOrder
		})
	end
end

local function NumberLine(props)
	local isEnabled = props.Count > 0
	local color = isEnabled and props.EnabledColor or props.DisabledColor
	local text = string.format("%s %d", props.PreText, props.Count)
	return Roact.createElement(Line, {
		Text = text,
		Color = color,
		LayoutOrder = props.LayoutOrder,
	})
end

function UploadDialogContent:render()
	local props = self.props
	local theme = props.Theme:get("UploadDialogContent")
	local localization = props.Localization

	local cancelCallback = props.CancelCallback
	local okCallback = props.OkCallback

	local totalRows = props.PatchInfo.totalRows
	local totalTranslations = props.PatchInfo.totalTranslations
	local supportedLocales = props.PatchInfo.supportedLocales
	local unsupportedLocales = props.PatchInfo.unsupportedLocales

	local numAddedEntries = props.PatchInfo.numAddedEntries
	local numAddedTranslations = props.PatchInfo.numAddedTranslations
	local numChangedTranslations = props.PatchInfo.numChangedTranslations
	local includeDeletes = props.PatchInfo.includeDeletes
	local numRemovedEntries = props.PatchInfo.numRemovedEntries
	local numRemovedTranslations = props.PatchInfo.numRemovedTranslations
	local newLanguages = props.PatchInfo.newLanguages

	local message
	if numAddedTranslations + numChangedTranslations +
		numRemovedTranslations + numAddedEntries + numRemovedEntries == 0
	then
		message = localization:getText("UploadDialogContent", "PatchEmptyMessage")
	else
		message = localization:getText("UploadDialogContent", "UploadPatchMessage")
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 0,
		BackgroundColor3 = theme.MainBackground,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, theme.Padding),
			PaddingRight = UDim.new(0, theme.Padding),
			PaddingTop = UDim.new(0, theme.Padding),
		}),
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		InfoFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, theme.PatchInfoFrameHeight),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			TableContentTitle = Roact.createElement(Line, {
				Color = theme.BrightText,
				LayoutOrder = 1,
				Text = localization:getText("UploadDialogContent", "PatchContainsLabel"),
			}),
			TableContentFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, theme.TableContentsFrameHeight),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, theme.TableContentPaddingLeft),
					PaddingTop = UDim.new(0, theme.TableContentPaddingTop),
				}),
				TotalRowsLine = Roact.createElement(StringContentLine, {
					PreText = localization:getText("UploadDialogContent", "PatchTotalRowsLabel"),
					Content = totalRows,
					ColorA = theme.BrightText,
					ColorB = theme.ErrorText,
					LayoutOrder = 1
				}),
				TranslationsLine = Roact.createElement(StringContentLine, {
					PreText = localization:getText("UploadDialogContent", "PatchTotalTranslationsLabel"),
					Content = totalTranslations,
					ColorA = theme.BrightText,
					ColorB = theme.ErrorText,
					LayoutOrder = 2
				}),
				SupportedLocales = Roact.createElement(StringContentLine, {
					PreText = localization:getText("UploadDialogContent", "PatchLanguagesLabel"),
					Content = supportedLocales,
					ColorA = theme.BrightText,
					ColorB = theme.DimmedText,
					LayoutOrder = 3
				}),
				UnsupportedLocales = Roact.createElement(UnsupportedLocalesLine, {
					PreText = localization:getText("UploadDialogContent", "PatchInvalidLanguagesLabel"),
					Content = unsupportedLocales,
					Color = theme.WarningText,
					LayoutOrder = 4
				}),
			}),
			ThisPatchWillTitle = Roact.createElement(Line, {
				Text = localization:getText("UploadDialogContent", "PatchWillLabel"),
				Color = theme.BrightText,
				LayoutOrder = 3,
			}),
			ThisPatchWillFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 4,
				Size = UDim2.new(1, 0, 0, theme.ThisPatchWIllFrameHeight),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, theme.TableContentPaddingLeft),
					PaddingTop = UDim.new(0, theme.TableContentPaddingTop),
				}),
				AddEntriesLine = Roact.createElement(NumberLine,
				{
					PreText = localization:getText("UploadDialogContent", "AddEntriesPreText"),
					Count = numAddedEntries,
					EnabledColor = theme.BrightText,
					DisabledColor = theme.DimmedText,
					LayoutOrder = 1,
				}),
				AddTranslationsLine = Roact.createElement(NumberLine,
				{
					PreText = localization:getText("UploadDialogContent", "AddTranslationsPretext"),
					Count = numAddedTranslations,
					EnabledColor = theme.BrightText,
					DisabledColor = theme.DimmedText,
					LayoutOrder = 2,
				}),
				ChangeLine = Roact.createElement(NumberLine,
				{
					PreText = localization:getText("UploadDialogContent", "ChangeTranslationsPretext"),
					Count = numChangedTranslations,
					EnabledColor = theme.BrightText,
					DisabledColor = theme.DimmedText,
					LayoutOrder = 3,
				}),
				DeleteEntriesLine = includeDeletes and Roact.createElement(NumberLine,
				{
					PreText = localization:getText("UploadDialogContent", "DeleteEntriesPretext"),
					Count = numRemovedEntries,
					EnabledColor = theme.BrightText,
					DisabledColor = theme.DimmedText,
					LayoutOrder = 4,
				}),
				DeleteTranslationsLine = includeDeletes and Roact.createElement(NumberLine,
				{
					PreText = localization:getText("UploadDialogContent", "DeleteTranslationsPretext"),
					Count = numRemovedTranslations,
					EnabledColor = theme.BrightText,
					DisabledColor = theme.DimmedText,
					LayoutOrder = 5,
				}),
				AddLanguagesLine = newLanguages ~= nil and newLanguages ~= "" and
					Roact.createElement(Line, {
						Text = string.format("%s %s", 
							localization:getText("UploadDialogContent", "AddLanguagesPretext"),
							newLanguages),
						Color = theme.BrightText,
						LayoutOrder = 6
					}),
			}),
			Message = Roact.createElement(Line, {
				Color = theme.BrightText,
				LayoutOrder = 5,
				Text = message,
			}),
		}),
		ButtonFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 0, theme.ButtonFrameHeight),
		}, {
			Cancel = Roact.createElement(Button, {
				LayoutOrder = 1,
				OnClick = cancelCallback,
				Position = UDim2.new(0.5, -theme.ButtonWidth - theme.Padding, 0, 0),
				Size = UDim2.new(0, theme.ButtonWidth, 0, theme.ButtonHeight),
				Style = "TextButton",
				Text = localization:getText("UploadDialogContent", "CancelButton"),
			}, {
				Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
			}),
			Confirm = Roact.createElement(Button, {
				LayoutOrder = 2,
				OnClick = okCallback,
				Position = UDim2.new(0.5, theme.Padding, 0, 0),
				Size = UDim2.new(0, theme.ButtonWidth, 0, theme.ButtonHeight),
				Style = "PrimeTextButton",
				Text = localization:getText("UploadDialogContent", "ConfirmButton"),
			}, {
				Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
			}),
		})
	})
end

ContextServices.mapToProps(UploadDialogContent, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

return UploadDialogContent
