local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local LocaleSelector = require(script.Parent.LocaleSelector)
local RobloxLocaleSelector = Roact.PureComponent:extend("RobloxLocaleSelector")

local LocalizationService = game:GetService("LocalizationService")

local robloxLocaleLabelText = "Locale"

local function SetLocaleId(localeId)
	LocalizationService.RobloxForcePlayModeRobloxLocaleId = localeId
end

local function GetLocaleId()
	return LocalizationService.RobloxForcePlayModeRobloxLocaleId
end

LocalizationService.RobloxForcePlayModeRobloxLocaleId = LocalizationService.RobloxLocaleId

function RobloxLocaleSelector:init()
	self.state = {
		LocaleId = GetLocaleId()
	}
end

function RobloxLocaleSelector:didMount()
	self._localIdChangedConnection = LocalizationService:GetPropertyChangedSignal(
		"RobloxForcePlayModeRobloxLocaleId"):Connect(
		function()
			self:setState({
				LocaleId = GetLocaleId()
			})
		end
	)
end

function RobloxLocaleSelector:render()
	return Theming.withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 300, 0, 25),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = self.props.LayoutOrder
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 5),
			}),

			Label = Roact.createElement("TextLabel", {
				Text = robloxLocaleLabelText,
				TextXAlignment = "Right",
				TextYAlignment = "Center",
				TextColor3 = theme.BrightText,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, 50, 0, 25),
				LayoutOrder = 1,
			}),

			Selector = Roact.createElement(LocaleSelector, {
				Window = self.props.Window,
				Size = UDim2.new(0, 200, 0, 25),
				TextColor3 = theme.BrightText,
				SetLocaleId = SetLocaleId,
				LocaleId = self.state.LocaleId,
				LayoutOrder = 2,
			}),
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
