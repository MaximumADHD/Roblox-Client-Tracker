--!nolint ImplicitReturn
--^ DEVTOOLS-4493

--[[
	Test language section
	Contains a text label for section title, a dropdown language selector,
	a text entry and a text label for selected language instruction

	Props:
		int LayoutOrder
			layout order of UIListLayout in Mainview
		boolean mainSwitchEnabled
			if emulation is enabled
		table languagesTable
			{
				"localeId": {
					localeId = "localeId code",
					languageCode = "language code",
					displayText = "localized language name"
				}
			}
		table languagesList
			{
				localeId = "localeId code",
				displayText = "localized language name"
			}
		function loadLanguages
			send HTTP request for all languages information
]]
local FFlagPlayerEmulatorSerializeIntoDM2 = game:GetFastFlag("PlayerEmulatorSerializeIntoDM2")
local FFlagPlayerEmulatorWithContext = game:GetFastFlag("PlayerEmulatorWithContext")

local StudioService = game:GetService("StudioService")
local LocalizationService = game:GetService("LocalizationService")
local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local NetworkingContext = require(Plugin.Src.ContextServices.NetworkingContext)
local Constants = require(Plugin.Src.Util.Constants)

local DropdownModule = require(Plugin.Src.Components.DropdownModule)
local GetLanguages = require(Plugin.Src.Networking.Requests.GetLanguages)

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local function GetLocaleId()
	if FFlagPlayerEmulatorSerializeIntoDM2 then
		return PlayerEmulatorService.EmulatedGameLocale
	else
		return LocalizationService.RobloxForcePlayModeRobloxLocaleId
	end
end

local function SetLocaleId(localeId)
	if FFlagPlayerEmulatorSerializeIntoDM2 then
		PlayerEmulatorService.EmulatedGameLocale = localeId
	else
		LocalizationService.RobloxForcePlayModeRobloxLocaleId = localeId
	end
end

local function GetMainSwitchEnabled()
	return PlayerEmulatorService.PlayerEmulationEnabled_deprecated
end

-- set default Play Solo language using studio locale instead of en-us
if FFlagPlayerEmulatorSerializeIntoDM2 then
	LocalizationService.RobloxForcePlayModeRobloxLocaleId = StudioService.StudioLocaleId
else
	SetLocaleId(StudioService.StudioLocaleId)
end

local LanguageSection = Roact.PureComponent:extend("LanguageSection")

function LanguageSection:getCurrentLanguageName()
	local localeId = string.gsub(self.state.localeId, '-', '_')
	local languagesTable = self.props.languagesTable

	if localeId ~= "" and languagesTable[localeId] then
		return languagesTable[localeId].displayText
	end
end

function LanguageSection:getTestLangInstructionText()
	local localization = self.props.Localization
	local localeId = string.gsub(self.state.localeId, '-', '_')
	local languagesTable = self.props.languagesTable
	if localeId ~= "" and languagesTable[localeId] then
		return string.format(
			localization:getText("LanguageSection", "InstructionText"),
			languagesTable[localeId].displayText,
			languagesTable[localeId].languageCode
		)
	else
		return ""
	end
end

function LanguageSection:initLocaleId()
	local plugin = self.props.Plugin:get()
	local cachedLocaleId = plugin:GetSetting(Constants.LOCALEID_SETTING_KEY)

	if cachedLocaleId then
		if FFlagPlayerEmulatorSerializeIntoDM2 then
			SetLocaleId(cachedLocaleId)
		else
			-- set forcePlayModeLocale only if emulation switch enabled; otherwise, only update state
			if GetMainSwitchEnabled() then
				SetLocaleId(cachedLocaleId)
			else
				self:setState({
					localeId = cachedLocaleId,
				})
			end
		end
	end
end

function LanguageSection:onPlayerEmulationEnabledChanged()
	local curLocale = self.state.localeId
	if GetMainSwitchEnabled() then
		SetLocaleId(curLocale)
	else
		SetLocaleId(StudioService.StudioLocaleId)
	end
end

function LanguageSection:onRobloxForcePlayModeRobloxLocaleIdChanged()
	if FFlagPlayerEmulatorSerializeIntoDM2 or GetMainSwitchEnabled() then
		local localeId = GetLocaleId()
		self:setState({
			localeId = localeId,
		})
		local plugin = self.props.Plugin:get()
		plugin:SetSetting(Constants.LOCALEID_SETTING_KEY, localeId)
	end
end

function LanguageSection:init()
	self.state = {
		localeId = GetLocaleId()
	}

	self.textBoxRef = Roact.createRef()
	self.signalTokens = {}

	self.onItemClicked = function(item)
		if not item.localeId then
			SetLocaleId("")
			self.textBoxRef.current:CaptureFocus()
		else
			SetLocaleId(item.localeId)
		end
	end
end

function LanguageSection:didMount()
	local networkingImpl = self.props.Networking:get()
	self.props.loadLanguages(networkingImpl)

	if not FFlagPlayerEmulatorSerializeIntoDM2 then
		self:initLocaleId()
	end

	local localeIdChangedSignal
	if FFlagPlayerEmulatorSerializeIntoDM2 then
		localeIdChangedSignal = PlayerEmulatorService:GetPropertyChangedSignal(
			"EmulatedGameLocale"):Connect(function()
				self:onRobloxForcePlayModeRobloxLocaleIdChanged()
			end)
	else
		local mainSwitchEnabledSignal = PlayerEmulatorService:GetPropertyChangedSignal(
			"PlayerEmulationEnabled_deprecated"):Connect(function()
				self:onPlayerEmulationEnabledChanged()
			end)
		table.insert(self.signalTokens, mainSwitchEnabledSignal)
		localeIdChangedSignal = LocalizationService:GetPropertyChangedSignal(
			"RobloxForcePlayModeRobloxLocaleId"):Connect(function()
				self:onRobloxForcePlayModeRobloxLocaleIdChanged()
			end)

	end
	table.insert(self.signalTokens, localeIdChangedSignal)

	if FFlagPlayerEmulatorSerializeIntoDM2 then
		self:initLocaleId()
	end
end

function LanguageSection:willUnmount()
	for _, signal in pairs(self.signalTokens) do
		signal:Disconnect()
	end
	self.signalTokens = nil
end

function LanguageSection:render()
	local state = self.state
	local props = self.props
	local mainSwitchEnabled = props.mainSwitchEnabled
	local localeId = state.localeId
	local languagesList = props.languagesList

	local theme
	if THEME_REFACTOR then
	    theme = props.Stylizer
	else
	    theme = props.Theme:get("Plugin")
	end
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder

	local selectorModule = Roact.createElement("Frame", {
		Size = theme.SELECTOR_SIZE,
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	},{
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = theme.HORIZONTAL_LISTLAYOUT_PADDING,
		}),

		Label = Roact.createElement("TextLabel", {
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = mainSwitchEnabled and theme.TextColor or theme.DisabledColor,
			Size = theme.SECTION_LABEL_SIZE,
			Text = localization:getText("LanguageSection", "LabelText"),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),

		Dropdown = Roact.createElement(DropdownModule, {
			LayoutOrder = 2,
			Enabled = mainSwitchEnabled,
			CurrentSelected = self:getCurrentLanguageName(),
			Items = languagesList,
			OnItemClicked = self.onItemClicked,
		}),

		LocaleIdTextBox = Roact.createElement("Frame", {
			Size = theme.LOCALEID_TEXTBOX_SIZE,
			BorderColor3 = theme.BorderColor,
			BackgroundColor3 = theme.BackgroundColor,
			LayoutOrder = 3,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = theme.TEXT_INDENT_PADDING,
			}),

			TextBox = mainSwitchEnabled and Roact.createElement("TextBox", {
				Size = UDim2.new(1, 0, 1, 0),
				Text = localeId,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.TextColor,
				BackgroundTransparency = 1,
				ClearTextOnFocus = false,

				[Roact.Ref] = self.textBoxRef,

				[Roact.Event.FocusLost] = function()
					SetLocaleId(self.textBoxRef.current.Text)
				end
			}),

			-- 'Active' doesn't work for TextBox. Replace it with a TextLabel if enabled
			TextLabel = not mainSwitchEnabled and Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Text = localeId,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.DisabledColor,
				BackgroundTransparency = 1,
			})
		})
	})

	local textModule = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = 2,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = theme.TEXT_INDENT_PADDING,
		}),
		TextLabel = Roact.createElement("TextLabel", {
			Text = self:getTestLangInstructionText(),
			Size = theme.LANGUAGE_INSTRUCTION_SIZE,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = mainSwitchEnabled and theme.TextColor or theme.DisabledColor,
		}),
	})

	return Roact.createElement("Frame", {
		Size = theme.LANGUAGE_SECTION_SIZE,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		SelectorModule = selectorModule,
		TextModule = textModule,
	})
end

if FFlagPlayerEmulatorWithContext then
	LanguageSection = withContext({
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
		Localization = ContextServices.Localization,
		Networking = NetworkingContext,
		Plugin = ContextServices.Plugin,
	})(LanguageSection)
else
	ContextServices.mapToProps(LanguageSection, {
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
		Localization = ContextServices.Localization,
		Networking = NetworkingContext,
		Plugin = ContextServices.Plugin,
	})
end


local function mapStateToProps(state, _)
	return {
		mainSwitchEnabled = state.MainSwitch.mainSwitchEnabled,
		languagesTable = state.Languages.languagesTable,
		languagesList = state.Languages.languagesList,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		loadLanguages = function(networkingImpl)
			dispatch(GetLanguages(networkingImpl))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(LanguageSection)
