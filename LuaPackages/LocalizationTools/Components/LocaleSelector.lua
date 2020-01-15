local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local Dropdown = require(script.Parent.Dropdown)

local customMenuItemText = "(Custom)"

local localeInfos = {
	{ localeId = "en-us", name = "English" },
	{ localeId = "fr-fr", name = "French" },
	{ localeId = "de-de", name = "German" },
	{ localeId = "pt-br", name = "Portuguese (Brazil)" },
	{ localeId = "es-es", name = "Spanish" },
	{ localeId = "ko-kr", name = "Korean" },
	{ localeId = "zh-cn", name = "Chinese (Simplified)" },
	{ localeId = "zh-tw", name = "Chinese (Traditional)" },
}

local localeNameMap = {}

for _, info in ipairs(localeInfos) do
	localeNameMap[info.localeId] = info.name
end

local LocaleSelector = Roact.Component:extend("LocaleSelector")

function LocaleSelector:init()
	self.textBoxRef = Roact.createRef()
end

function LocaleSelector.getMenuTextForLocale(allLanguageInfo, localeId)
	localeId = string.gsub(localeId, '-', '_')

	if localeId == "" or not allLanguageInfo.localeInfoTable[localeId] then
		return customMenuItemText
	end
	-- need this because client uses hyphen, platform uses underscore...
	return allLanguageInfo.localeInfoTable[localeId].languageName or customMenuItemText
end

function LocaleSelector:render()
	return Theming.withTheme(function(theme)
		local ListItems = {}
		for _, info in ipairs(self.props.AllLanguagesInfo.languageInfoTable) do
			table.insert(ListItems, {
				Text = info.languageName,
				OnActivated = function()
					self.props.SetLocaleId(info.localeCode)
				end
			})
		end

		table.insert(ListItems, {
			Text = customMenuItemText,
			OnActivated = function()
				self.props.SetLocaleId("")
				self.textBoxRef.current:CaptureFocus()
			end
		})

		return Roact.createElement("Frame", {
			Size = self.props.Size,
			BackgroundTransparency = 1,
			LayoutOrder = self.props.LayoutOrder,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 5),
			}),

			LocaleNameDropdown = Roact.createElement("Frame", {
				Size = UDim2.new(0, 170, 0, 25),
				LayoutOrder = 1,
			}, {
				Dropdown = Roact.createElement(Dropdown, {
					Window = self.props.Window,
					CurrentText = self.getMenuTextForLocale(self.props.AllLanguagesInfo ,self.props.LocaleId),
					ListItemHeight = 25,
					ListItems = ListItems,
				}),
			}),

			LocaleIdTextBox = Roact.createElement("Frame", {
				Size = UDim2.new(0, 50, 0, 25),
				BorderSizePixel = 1,
				BorderColor3 = theme.Border,
				BackgroundColor3 = theme.MainBackground,
				LayoutOrder = 2,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 4),
				}),

				TextboxInternal = Roact.createElement("TextBox", {
					Size = UDim2.new(1, 0, 1, 0),
					TextColor3 = theme.BrightText,
					BorderColor3 = theme.Border,
					Text = self.props.LocaleId,
					TextXAlignment = "Left",
					ClearTextOnFocus = false,
					BackgroundTransparency = 1,

					[Roact.Ref] = self.textBoxRef,

					[Roact.Event.FocusLost] = function()
						self.props.SetLocaleId(self.textBoxRef.current.Text)
					end,
				})
			}),
		})
	end)
end

return LocaleSelector
