local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Dropdown = require(script.Parent.Dropdown)

local customMenuItemText = "(Custom)"

local localeInfos = {
	{ localeId = "en-us", name = "English" },
	{ localeId = "fr-fr", name = "French" },
	{ localeId = "de-de", name = "German" },
	{ localeId = "pt-br", name = "Portuguese (Brazil)" },
	{ localeId = "es-es", name = "Spanish" },
}

local localeNameMap = {}

for _, info in ipairs(localeInfos) do
	localeNameMap[info.localeId] = info.name
end

local LocaleSelector = Roact.Component:extend("LocaleSelector")

function LocaleSelector:init()
	self.state = {
		LocaleId = self.props.InitialLocaleId
	}

	self.textBoxRef = Roact.createRef()
end

local function getMenuTextForLocale(localeId)
	if localeId == "" then
		return customMenuItemText
	end
	return localeNameMap[localeId] or customMenuItemText
end

function LocaleSelector:render()
	local ListItems = {}

	for index, item in ipairs(localeInfos) do
		ListItems[index] = {
			Text = item.name,
			OnActivated = function()
				self:setState({
					LocaleId = item.localeId,
				})
			end
		}
	end

	ListItems[#localeInfos + 1] = {
		Text = customMenuItemText,
		OnActivated = function()
			self:setState({
				LocaleId = "",
			})

			self.textBoxRef.current:CaptureFocus()
		end
	}

	return Roact.createElement("Frame", {
		Size = self.props.Size,
		BackgroundTransparency = 1.0,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 5),
		}),

		LocaleNameDropdown = Roact.createElement("Frame", {
			Size = UDim2.new(0, 160, 0, 25),
			LayoutOrder = 1,
		}, {
			Dropdown = Roact.createElement(Dropdown, {
				Window = self.props.Window,
				BackgroundColor3 = self.props.BackgroundColor3,
				TextColor3 = self.props.TextColor3,
				BorderColor3 = self.props.BorderColor3,
				ButtonHoverColor3 = self.props.ButtonHoverColor3,
				ButtonDownColor3 = self.props.ButtonDownColor3,
				CurrentText = getMenuTextForLocale(self.state.LocaleId),
				ListItemHeight = 25,
				ListItems = ListItems,
			}),
		}),

		LocaleIdTextBox = Roact.createElement("Frame", {
			Size = UDim2.new(0, 50, 0, 25),
			BorderSizePixel = 1,
			BorderColor3 = self.props.BorderColor3,
			BackgroundColor3 = self.props.BackgroundColor3,
			LayoutOrder = 2,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 4),
			}),

			TextboxInternal = Roact.createElement("TextBox", {
				Size = UDim2.new(1, 0, 1, 0),
				TextColor3 = self.props.TextColor3,
				BorderColor3 = self.props.BorderColor3,
				Text = self.state.LocaleId,
				TextXAlignment = "Left",
				ClearTextOnFocus = false,
				BackgroundTransparency = 1,

				[Roact.Ref] = self.textBoxRef,

				[Roact.Event.FocusLost] = function()
					self:setState({
						LocaleId = self.textBoxRef.current.Text,
					})
				end,
			})
		}),
	})
end

function LocaleSelector:didUpdate()
	self.props.SetLocaleId(self.state.LocaleId)
end

return LocaleSelector
