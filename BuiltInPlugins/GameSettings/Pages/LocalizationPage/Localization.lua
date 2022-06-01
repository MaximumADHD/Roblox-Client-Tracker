
--[[
	Settings page for Localization settings.
		- Source language
		- Automatic text capture enabled
		- Use translated content enabled
		- Languages enabled for automatic translation

	Settings:
		string SourceLanguage
		bool AutomaticTextCaptureEnabled
		bool UseTranslatedContentEnabled
		list Languages enabled for automatic translation
]]
local FFlagGameSettingsRemoveFitContent = game:GetFastFlag("GameSettingsRemoveFitContent")

local StudioService = game:GetService("StudioService")

local Page = script.Parent
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local FrameworkUtil = Framework.Util
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator

local UILibrary = require(Plugin.Packages.UILibrary)
local TitledFrame = UILibrary.Component.TitledFrame
local ToggleButton = UILibrary.Component.ToggleButton

local FitToContent
if not FFlagGameSettingsRemoveFitContent then
	local createFitToContent = UILibrary.Component.createFitToContent
	FitToContent = createFitToContent("Frame", "UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 10),
	})
end

local Dropdown = require(Plugin.Src.Components.Dropdown)

local UI = Framework.UI
local LinkText = UI.LinkText
local Pane = UI.Pane
local Separator = UI.Separator
local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)
local TextLabel = UI.Decoration.TextLabel

local AddChange = require(Plugin.Src.Actions.AddChange)
local ReloadAutoTranslationTargetLanguages = require(Page.Thunks.ReloadAutoTranslationTargetLanguages)

local calculateTextSize = require(Plugin.Src.Util.GameSettingsUtilities).calculateTextSize
local getAutoTranslationAllowed = require(Plugin.Src.Util.GameSettingsUtilities).getAutoTranslationAllowed
local getAutoTranslatedLanguages = require(Plugin.Src.Util.GameSettingsUtilities).getAutoTranslatedLanguages
local OpenLocalizationSettings = require(Plugin.Src.Util.BrowserUtils).OpenLocalizationSettings


local LocalizationPage = Roact.PureComponent:extend(script.Name)

local CENTER_GUTTER = 200
local LOCALIZATION_ID = script.Name

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

local function loadSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local localizationPageController = contextItems.localizationPageController

	return {
		function(loadedSettings)
			local supportedLanguages = localizationPageController:getSupportedLanguages()
			loadedSettings["SupportedLanguages"] = supportedLanguages
		end,
		function(loadedSettings)
			local languageCodeToNames = localizationPageController:getLanguageCodeToNames(StudioService["StudioLocaleId"])
			loadedSettings["LanguageCodeToNames"] = languageCodeToNames
		end,
		function(loadedSettings)
			local sourceLanguage = localizationPageController:getSourceLanguage(gameId)
			loadedSettings["SourceLanguage"] = sourceLanguage

			local autoTranslationTargetLanguages = getAutoTranslatedLanguages()[sourceLanguage]
			if not autoTranslationTargetLanguages then
				autoTranslationTargetLanguages = localizationPageController:getAutoTranslationTargetLanguages(sourceLanguage)
			end

			loadedSettings["AutoTranslationTargetLanguages"] = autoTranslationTargetLanguages
		end,
		function(loadedSettings)
			local autoTextCaptureEnabled, useTranslatedContentEnabled = localizationPageController:getAutoLocalizationSettings(gameId)
			loadedSettings["AutoTextCaptureEnabled"] = autoTextCaptureEnabled
			loadedSettings["UseTranslatedContentEnabled"] = useTranslatedContentEnabled
		end,
		function(loadedSettings)
			local isAutomaticTranslationAllowed = localizationPageController:getAutoTranslationFeatureStatus(gameId)
			loadedSettings["IsAutomaticTranslationAllowed"] = isAutomaticTranslationAllowed
		end,
		function(loadedSettings)
			local autoTranslationSettings = localizationPageController:getAutoTranslationSetings(gameId)
			loadedSettings["AutoTranslationSettings"] = autoTranslationSettings
		end,
	}
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local localizationPageController = contextItems.localizationPageController

	return {
		function()
			local changed = state.Settings.Changed.SourceLanguage
			if changed ~= nil then
				localizationPageController:setSourceLanguage(gameId, changed)
			end
		end,
		function()
			local autoTextCaptureEnabledChanged = state.Settings.Changed.AutoTextCaptureEnabled
			local useTranslatedContentEnabledChanged = state.Settings.Changed.UseTranslatedContentEnabled

			if autoTextCaptureEnabledChanged ~= nil or useTranslatedContentEnabledChanged ~= nil then
				local autoTextCaptureEnabledValue, useTranslatedContentEnabledValue
				if autoTextCaptureEnabledChanged ~= nil then
					autoTextCaptureEnabledValue = autoTextCaptureEnabledChanged
				else
					autoTextCaptureEnabledValue = state.Settings.Current.AutoTextCaptureEnabled
				end

				if useTranslatedContentEnabledChanged ~= nil then
					useTranslatedContentEnabledValue = useTranslatedContentEnabledChanged
				else
					useTranslatedContentEnabledValue = state.Settings.Current.UseTranslatedContentEnabled
				end

				localizationPageController:setAutoLocalizationSettings(gameId, autoTextCaptureEnabledValue, useTranslatedContentEnabledValue)
			end
		end,
		function()
			local changed = state.Settings.Changed.AutoTranslationSettings
			if changed ~= nil then
				local config = {}
				local current = state.Settings.Current.AutoTranslationSettings
				for languageCode, enabled in pairs(changed) do
					if current[languageCode] ~= enabled then
						config[languageCode] = enabled
					end
				end
				localizationPageController:setAutoTranslationSetings(gameId, config)
			end
		end,
	}
end

local function getAutomaticTranslationEntries(props, theme)
	local targetLanguages = props.AutoTranslationTargetLanguages
	if targetLanguages == nil then
		return
	end

	if props.IsAutomaticTranslationAllowed or getAutoTranslationAllowed() then
		local children = {}
		local layoutIndex = LayoutOrderIterator.new()
		for languageCode, autoTranslationEnabled in pairs(targetLanguages) do
			if autoTranslationEnabled then
				children[languageCode] = Roact.createElement(TitledFrame, {
					LayoutOrder = layoutIndex:getNextOrder(),
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
		if next(children) ~= nil then
			return children
		end
	end
	return
end

local function displayLocalizationSettingsPage(props, localization, theme)
	local layoutIndex = LayoutOrderIterator.new()
	local dropdownLanguages = formatDropdownTable(props.SupportedLanguages, props.LanguageCodeToNames)
	local showAutoTranslationTitle = props.IsAutomaticTranslationAllowed or getAutoTranslationAllowed()
	local autoTranslationChildren = getAutomaticTranslationEntries(props, theme)
	local showAutoTranslationOptions = autoTranslationChildren ~= nil
	local showAutoTranlsationUnavailable = showAutoTranslationTitle and not showAutoTranslationOptions
	local showHyperLink = not getAutoTranslationAllowed()
	local gameId = props.GameId

	-- Question: Is there a way for me to get the size and font type automagically from the LinkText Style "Body"?
	local hyperLinkTextSize = calculateTextSize(localization:getText("General", "LocalizationSettingsLinkText"), 14, "SourceSans")

	return {
		SourceLanguage = Roact.createElement(TitledFrame, {
			LayoutOrder = layoutIndex:getNextOrder(),
			Title = localization:getText("General", "SourceLanguageTitle"),
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
				Enabled = next(dropdownLanguages) ~= nil,
				Current = props.SourceLanguage,
				CurrentChanged = props.SourceLanguageChanged,
			}),
			Description = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, theme.fontStyle.Subtitle.TextSize),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = localization:getText("General", "SourceLanguageDesc"),
			})),
		}),
		Separator1 = Roact.createElement(Separator, {
			LayoutOrder = layoutIndex:getNextOrder(),
		}),
		AutoTextCapture = Roact.createElement(TitledFrame, {
			LayoutOrder = layoutIndex:getNextOrder(),
			Title = localization:getText("General", "AutoTextCaptureTitle"),
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
				Text = localization:getText("General", "AutoTextCaptureDesc"),
			})),
		}),
		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = layoutIndex:getNextOrder(),
		}),
		UseTranslatedContent = Roact.createElement(TitledFrame, {
			LayoutOrder = layoutIndex:getNextOrder(),
			Title = localization:getText("General", "UseTranslatedContentTitle"),
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
				Text = localization:getText("General", "UseTranslatedContentDesc"),
			})),
		}),
		Separator3 = Roact.createElement(Separator, {
			LayoutOrder = layoutIndex:getNextOrder(),
		}),
		AutoTranslationTitle = showAutoTranslationTitle and Roact.createElement(TitledFrame, {
			LayoutOrder = layoutIndex:getNextOrder(),
			Title = localization:getText("General", "AutoTranslationTitle"),
			MaxHeight = 22,
			CenterGutter = CENTER_GUTTER,
			TextSize = theme.fontStyle.Subtitle.TextSize,
		}),
		AutoTranslationOptions = showAutoTranslationOptions and (
			if FFlagGameSettingsRemoveFitContent then
				Roact.createElement(Pane, {
					Layout = Enum.FillDirection.Vertical,
					LayoutOrder = layoutIndex:getNextOrder(),
					AutomaticSize = Enum.AutomaticSize.Y,
					Spacing = UDim.new(0, 10),
				}, autoTranslationChildren)
			else
				Roact.createElement(FitToContent, {
					LayoutOrder = layoutIndex:getNextOrder(),
					BackgroundTransparency = 1,
				}, autoTranslationChildren)
		),
		AutoTranlsationUnavailable = showAutoTranlsationUnavailable and
			Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				LayoutOrder = layoutIndex:getNextOrder(),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, theme.fontStyle.Subtitle.TextSize),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = localization:getText("General", "AutoTranslationOnlyAvailableForEnMessage"),
			})),
		Separator4 = showAutoTranslationTitle and Roact.createElement(Separator, {
			LayoutOrder = layoutIndex:getNextOrder(),
		}),
		HyperLink = showHyperLink and Roact.createElement("Frame", {
			LayoutOrder = layoutIndex:getNextOrder(),
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
		}, {
			LinkTextLabel = Roact.createElement(TextLabel, {
				Position = UDim2.new(0, hyperLinkTextSize.X, 0, 0),
				Size = UDim2.new(1, -hyperLinkTextSize.X, 1, 0),
				Style = "Body",
				Text = localization:getText("General", "LocalizationSettingsNonLinkText"),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			}),

			LinkText = Roact.createElement(LinkText, {
				OnClick = OpenLocalizationSettings(gameId),
				Size = UDim2.new(0, hyperLinkTextSize.X, 0, hyperLinkTextSize.Y),
				Style = "Body",
				Text = localization:getText("General", "LocalizationSettingsLinkText"),
			}),
		})
	}
end

function LocalizationPage:render()
	local props = self.props
	local localization = props.Localization
	local theme = props.Stylizer

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = script.Name,
		CreateChildren = function()
			return displayLocalizationSettingsPage(props, localization, theme)
		end,
	})
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local loadedProps = {
		SupportedLanguages = getValue("SupportedLanguages"),
		LanguageCodeToNames = getValue("LanguageCodeToNames"),
		IsAutomaticTranslationAllowed = getValue("IsAutomaticTranslationAllowed"),
		AutoTranslationTargetLanguages = getValue("AutoTranslationTargetLanguages"),

		SourceLanguage = getValue("SourceLanguage"),
		AutoTextCaptureEnabled = getValue("AutoTextCaptureEnabled"),
		UseTranslatedContentEnabled = getValue("UseTranslatedContentEnabled"),
		AutoTranslationSettings = getValue("AutoTranslationSettings"),
		GameId = state.Metadata.gameId,
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		SourceLanguageChanged = function(sourceLanguage)
			dispatch(AddChange("SourceLanguage", sourceLanguage))
			dispatch(ReloadAutoTranslationTargetLanguages(sourceLanguage))
		end,
		AutoTextCaptureEnabledChanged = setValue("AutoTextCaptureEnabled"),
		UseTranslatedContentEnabledChanged = setValue("UseTranslatedContentEnabled"),
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

LocalizationPage = withContext({
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
	Stylizer = ContextServices.Stylizer,
})(LocalizationPage)

local settingFromState = require(Plugin.Src.Networking.settingFromState)
LocalizationPage = RoactRodux.connect(
	function(state, _)
		if not state then return end

		local getValue = function(propName)
			return settingFromState(state.Settings, propName)
		end

		return loadValuesToProps(getValue, state)
	end,

	function(dispatch)
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end

		return dispatchChanges(setValue, dispatch)
	end
)(LocalizationPage)

LocalizationPage.LocalizationId = LOCALIZATION_ID

return LocalizationPage
