local Roact = require(game:GetService("CorePackages").Roact)
local Cryo = require(game:GetService("CorePackages").Cryo)
local Theming = require(script.Parent.Parent.Theming)

local LocaleSelector = require(script.Parent.LocaleSelector)
local RobloxLocaleSelector = Roact.PureComponent:extend("RobloxLocaleSelector")

local LocalizationService = game:GetService("LocalizationService")

local UseAllSupportedLanguageList = settings():GetFFlag("UseAllSupportedLanguageList")

local robloxLocaleLabelText = "Locale"

local function SetLocaleId(localeId)
	LocalizationService.RobloxForcePlayModeRobloxLocaleId = localeId
end

local function GetLocaleId()
	return LocalizationService.RobloxForcePlayModeRobloxLocaleId
end

LocalizationService.RobloxForcePlayModeRobloxLocaleId = LocalizationService.RobloxLocaleId

function RobloxLocaleSelector:getTestLangInstructionText()
	local localeId = string.gsub(GetLocaleId(), '-', '_')

	if Cryo.isEmpty(self.props.AllLanguagesInfo)
		and Cryo.isEmpty(self.props.AllLanguagesInfo.localeInfoTable)
		and self.props.AllLanguagesInfo.localeInfoTable[localeId] ~= nil then

		return string.format(
			"Cloud table will fetch translations for %s (%s)",
			self.props.AllLanguagesInfo.localeInfoTable[localeId].languageName,
			self.props.AllLanguagesInfo.localeInfoTable[localeId].languageCode
		)
	else
		return ""
	end
end

function RobloxLocaleSelector:init()
	self.state = {
		LocaleId = GetLocaleId()
	}
end

function RobloxLocaleSelector:didMount()
	self._localIdChangedConnection = LocalizationService:GetPropertyChangedSignal(
		"RobloxForcePlayModeRobloxLocaleId"):Connect(function()
			self:setState({
				LocaleId = GetLocaleId()
			})
		end)
end

function RobloxLocaleSelector:render()
	return Theming.withTheme(function(theme)
		local selectorModule = Roact.createElement("Frame", {
			Size = UDim2.new(0, 300, 0, 40),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 1
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 5),
			}),

			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 15),
				PaddingTop = UDim.new(0, 15),
			}),

			Label = Roact.createElement("TextLabel", {
				Text = robloxLocaleLabelText,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextColor3 = theme.BrightText,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, 50, 0, 25),
				LayoutOrder = 1,
			}),

			Selector = Roact.createElement(LocaleSelector, {
				AllLanguagesInfo = self.props.AllLanguagesInfo,
				Window = self.props.Window,
				Size = UDim2.new(0, 50, 0, 25),
				TextColor3 = theme.BrightText,
				SetLocaleId = SetLocaleId,
				LocaleId = self.state.LocaleId,
				LayoutOrder = 2,
			}),
		})

		local textModule
		if UseAllSupportedLanguageList then
			textModule = Roact.createElement("Frame", {
				Size = UDim2.new(0, 300, 0, 25),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 15),
				}),
				TextLabel = Roact.createElement("TextLabel", {
					Text = self:getTestLangInstructionText(),
					Size = UDim2.new(0, 300, 0, 25),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextColor3 = theme.BrightText,
				}),
			})
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 300, 0, 65),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = self.props.LayoutOrder
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 5),
			}),
			SelectorModule = selectorModule,
			TextModule = textModule,
		})
	end)
end

function RobloxLocaleSelector:willUnmount()
	if self._localIdChangedConnection then
		self._localIdChangedConnection:Disconnect()
		self._localIdChangedConnection = nil
	end
end

return RobloxLocaleSelector
