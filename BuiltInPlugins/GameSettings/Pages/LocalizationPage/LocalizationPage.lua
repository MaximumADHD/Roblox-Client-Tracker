local StudioService = game:GetService("StudioService")

--[[
	Settings page for Localization settings.
		- Source language
		- Automatic text capture enabled
		- Use translated content enabled
		- Languags enabled for automatic trnaslation

	Settings:
		string SourceLanguage
		bool AutomaticTextCaptureEnabled
		bool UseTranslatedContentEnabled
		list Languags enabled for automatic trnaslation
]]

local PageName = "Localization"

local Page = script.Parent
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local UILibrary = require(Plugin.UILibrary)
local TitledFrame = UILibrary.Component.TitledFrame
local ToggleButton = UILibrary.Component.ToggleButton
local StudioWidgetPartialHyperlink = UILibrary.Studio.PartialHyperlink
local createFitToContent = UILibrary.Component.createFitToContent
local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 10),
})

local Header = require(Plugin.Src.Components.Header)
local Dropdown = require(Plugin.Src.Components.Dropdown)
local Separator = require(Plugin.Src.Components.Separator)
local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)
local AddChange = require(Plugin.Src.Actions.AddChange)
local LoadAutoTranslationMetaData = require(Page.Thunks.LoadAutoTranslationMetaData)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local isCJV = require(Plugin.Src.Util.isCJV)
local OpenLocalizationSettings = require(Plugin.Src.Util.BrowserUtils).OpenLocalizationSettings

local CENTER_GUTTER = 200

local function isPublished()
	return game.GameId ~= 0
end

local function formatDropdownTable(input, translatedLanguageNames)
	local output = {}
	for langCode, _ in pairs(input) do
		table.insert(output, {
			Id = langCode,
			Title = translatedLanguageNames[langCode],
		})
	end
	return output
end

local function getAutomaticTranslationEntries(props, theme)
	local targetLanguages = props.AutoTranslationTargetLanguages[props.SourceLanguage]
	if targetLanguages == nil then
		return
	end
	if props.IsAutomaticTranslationAllowed or isCJV() then
		local children = {}
		local layoutOrder = 0
		for languageCode, autoTranslationEnabled in pairs(targetLanguages) do
			if autoTranslationEnabled then
				children[languageCode] = Roact.createElement(TitledFrame, {
					LayoutOrder = layoutOrder + 1,
					Title = props.LanguageCodeToNames[languageCode],
					MaxHeight = 36,
					CenterGutter = CENTER_GUTTER,
					TextSize = theme.fontStyle.Smaller.TextSize,
				}, {
					ToggleButton = Roact.createElement(ToggleButton, {
						Enabled = true,
						IsOn = props.AutoTranslationSettings[languageCode] or false,
						onToggle = props.AutoTranslationSettingChanged(props.AutoTranslationSettings, languageCode),
					}),
				})
			end
		end
		if not isEmpty(children) then
			return children
		end
	end
	return
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local loadedProps = {
		SupportedLanguages = getValue("SupportedLanguages") or {},
		LanguageCodeToNames = getValue("LanguageCodeToNames") or {},
		IsAutomaticTranslationAllowed = getValue("IsAutomaticTranslationAllowed"),
		SourceLanguage = getValue("SourceLanguage"),
		AutoTextCaptureEnabled = getValue("AutoTextCaptureEnabled"),
		UseTranslatedContentEnabled = getValue("UseTranslatedContentEnabled"),
		AutoTranslationSettings = getValue("AutoTranslationSettings"),
		AutoTranslationTargetLanguages = state.AutoTranslationMetaData,
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		SourceLanguageChanged = setValue("SourceLanguage"),
		AutoTextCaptureEnabledChanged = setValue("AutoTextCaptureEnabled"),
		UseTranslatedContentEnabledChanged = setValue("UseTranslatedContentEnabled"),
		LoadAutoTranslationMetaData = function(sourceLanguage)
			if sourceLanguage then
				dispatch(LoadAutoTranslationMetaData(sourceLanguage))
			end
		end,
		AutoTranslationSettingChanged = function(oldValue, targetLanguage)
			return function(enabled)
				local newVaue = Cryo.Dictionary.join(oldValue, {
					[targetLanguage] = enabled,
				})
				dispatch(AddChange("AutoTranslationSettings", newVaue))
			end
		end,
	}
	return dispatchFuncs
end

local function disPlayPublishPlaceMessage(page, localized, theme)
	return {
		Header = Roact.createElement(Header, {
			LayoutOrder = 100,
			Title = localized:getText("General", "CategoryLocalization"),
		}),
		Message = Roact.createElement("Frame", {
			LayoutOrder = 200,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
		}, {
			LinkText = Roact.createElement(StudioWidgetPartialHyperlink, {
				HyperLinkText = localized:getText("General", "LocalizationSettingsPublishMessageLinkText"),
				NonHyperLinkText = localized:getText("General", "LocalizationSettingsPublishMessageNonLinkText"),
				Theme = theme,
				Mouse = page.props.Mouse:get(),
				OnClick = function()
					StudioService:ShowPublishToRoblox()
				end,
			})
		})
	}
end

local function displayContents(page, localized, theme)
	local props = page.props
	local dropdownLanguages = formatDropdownTable(props.SupportedLanguages, props.LanguageCodeToNames)
	props.LoadAutoTranslationMetaData(props.SourceLanguage)
	local autoTranslationChildren = getAutomaticTranslationEntries(props, theme)
	local showAutoTranslationTitle = isCJV() or props.IsAutomaticTranslationAllowed
	local showAutoTranslationOptions = autoTranslationChildren ~= nil
	local showAutoTranlsationUnavailable = showAutoTranslationTitle and not showAutoTranslationOptions
	local showHyperLink = not isCJV()

	return {
		Header = Roact.createElement(Header, {
			LayoutOrder = 100,
			Title = localized:getText("General", "CategoryLocalization"),
		}),
		SourceLanguage = Roact.createElement(TitledFrame, {
			LayoutOrder = 200,
			Title = localized:getText("General", "SourceLanguageTitle"),
			MaxHeight = 50,
			CenterGutter = CENTER_GUTTER,
			TextSize = theme.fontStyle.Subtitle.TextSize,
			ZIndex = 3,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, theme.uiListLayout.padding),
			}),
			Selector = Roact.createElement(Dropdown, {
				LayoutOrder = 1,
				Entries = dropdownLanguages,
				Enabled = not isEmpty(dropdownLanguages),
				Current = props.SourceLanguage,
				CurrentChanged = props.SourceLanguageChanged,

				OpenChanged = page.setPageScrollingDisabled,
				HoverChanged = page.setPageScrollingDisabled,
			}),
			Description = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, theme.fontStyle.Subtitle.TextSize),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = localized:getText("General", "SourceLanguageDesc"),
			})),
		}),
		Separator1 = Roact.createElement(Separator, {
			LayoutOrder = 300,
		}),
		AutoTextCapture = Roact.createElement(TitledFrame, {
			LayoutOrder = 400,
			Title = localized:getText("General", "AutoTextCaptureTitle"),
			MaxHeight = 36,
			CenterGutter = CENTER_GUTTER,
			TextSize = theme.fontStyle.Subtitle.TextSize,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, theme.uiListLayout.padding),
			}),
			ToggleButton = Roact.createElement(ToggleButton, {
				LayoutOrder = 1,
				Enabled = props.AutoTextCaptureEnabled ~= nil,
				IsOn = props.AutoTextCaptureEnabled,

				onToggle = props.AutoTextCaptureEnabledChanged,
			}),
			Description = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, theme.fontStyle.Subtitle.TextSize),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = localized:getText("General", "AutoTextCaptureDesc"),
			})),
		}),
		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = 500,
		}),
		UseTranslatedContent = Roact.createElement(TitledFrame, {
			LayoutOrder = 600,
			Title = localized:getText("General", "UseTranslatedContentTitle"),
			MaxHeight = 36,
			CenterGutter = CENTER_GUTTER,
			TextSize = theme.fontStyle.Subtitle.TextSize,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, theme.uiListLayout.padding),
			}),
			ToggleButton = Roact.createElement(ToggleButton, {
				LayoutOrder = 1,
				Enabled = props.UseTranslatedContentEnabled ~= nil,
				IsOn = props.UseTranslatedContentEnabled,

				onToggle = props.UseTranslatedContentEnabledChanged,
			}),
			Description = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, theme.fontStyle.Subtitle.TextSize),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = localized:getText("General", "UseTranslatedContentDesc"),
			})),
		}),
		Separator3 = Roact.createElement(Separator, {
			LayoutOrder = 700,
		}),
		AutoTranslationTitle = showAutoTranslationTitle and Roact.createElement(TitledFrame, {
			LayoutOrder = 800,
			Title = localized:getText("General", "AutoTranslationTitle"),
			MaxHeight = 22,
			CenterGutter = CENTER_GUTTER,
			TextSize = theme.fontStyle.Subtitle.TextSize,
		}),
		AutoTranslationOptions = showAutoTranslationOptions and Roact.createElement(FitToContent, {
			LayoutOrder = 900,
			BackgroundTransparency = 1,
		}, autoTranslationChildren),
		AutoTranlsationUnavailable = showAutoTranlsationUnavailable and
			Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				LayoutOrder = 900,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, theme.fontStyle.Subtitle.TextSize),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = localized:getText("General", "AutoTranslationOnlyAvailableForEnMessage"),
			})),
		Separator4 = showAutoTranslationTitle and Roact.createElement(Separator, {
			LayoutOrder = 1000,
		}),
		HyperLink = showHyperLink and
			Roact.createElement("Frame", {
				LayoutOrder = 1100,
				Size = UDim2.new(1, 0, 0, 20),
				BackgroundTransparency = 1,
			}, {
				LinkText = Roact.createElement(StudioWidgetPartialHyperlink, {
					HyperLinkText = localized:getText("General", "LocalizationSettingsLinkText"),
					NonHyperLinkText = localized:getText("General", "LocalizationSettingsNonLinkText"),
					Theme = theme,
					Mouse = props.Mouse:get(),
					OnClick = OpenLocalizationSettings(game.GameId),
				})
			})
	}
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function LocalizationPage(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = isPublished() and displayContents or disPlayPublishPlaceMessage,

		AddLayout = true,
	})
end

return LocalizationPage