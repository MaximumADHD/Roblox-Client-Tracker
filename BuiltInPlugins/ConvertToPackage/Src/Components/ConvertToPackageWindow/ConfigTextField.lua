--[[
	This component is responsible for configuring asset's name and description
	It should let the parent know the content of latest string.

	Necessary Props:
	Position, UDim2.
	Size, UDim2.
	MaxCount, number, how many content is allowed to type inside the textField.
	TextChangeCallBack, function, return current character content.

	Optional Props:
	LayoutOrder = number, will automatic be overrode Position property by UILayouter.
]]
local FFlagUpdateConvertToPackageToDFContextServices = game:GetFastFlag("UpdateConvertToPackageToDFContextServices")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local FFlagRemoveUILibraryRoundTextBox = Framework.SharedFlags.getFFlagRemoveUILibraryRoundTextBox()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local TextInput2 = UI.TextInput2

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)

local RoundTextBox
if not FFlagRemoveUILibraryRoundTextBox then
	local UILibrary = require(Packages.UILibrary)
	RoundTextBox = UILibrary.Component.RoundTextBox
end

local withTheme = if FFlagUpdateConvertToPackageToDFContextServices then nil else require(Plugin.Src.ContextServices.Theming).withTheme
local ConfigTextField = Roact.PureComponent:extend("ConfigTextField")

local TITLE_HEIGHT = 40
local TOOL_TIP_HEIGHT = 20

function ConfigTextField:init(props)
	self.state = {
		currentContent = nil
	}

	self.onTextChanged = function(newText)
		self:setState({
			currentContent = newText
		})

		self.props.TextChangeCallBack(newText)
	end
end

function ConfigTextField:render()
	local style = self.props.Stylizer

	local function renderWithContext(theme)
		local props = self.props
		local state = self.state

		local Title = props.Title
		local TotalHeight = props.TotalHeight
		local LayoutOrder = props.LayoutOrder
		local MaxCount = props.MaxCount
		local TextContent = props.TextContent or ""
		local currentContent = state.currentContent or TextContent

		local publishAssetTheme = theme.publishAsset

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, TotalHeight),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = LayoutOrder,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 0),
			}),

			Title = Roact.createElement("TextLabel", {
				Size = UDim2.new(0, Constants.TITLE_GUTTER_WIDTH, 1, 0),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = Title,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = Constants.FONT_SIZE_TITLE,
				TextColor3 = publishAssetTheme.titleTextColor,
				Font = Constants.FONT,

				LayoutOrder = 1,
			}),

			TextField = (if FFlagRemoveUILibraryRoundTextBox then
				Roact.createElement(TextInput2, {
					LayoutOrder = 2,
					MaxLength = MaxCount,
					MultiLine = MaxCount > 50,
					OnTextChanged = self.onTextChanged,
					Text = currentContent,
					Width = if FFlagRemoveUILibraryRoundTextBox then UDim.new(1, -Constants.TITLE_GUTTER_WIDTH) else nil,
				})
			else
				Roact.createElement(RoundTextBox, {
					Active = true,
					ErrorMessage = nil,
					MaxLength = MaxCount,
					Text = currentContent,
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_TITLE,
					Height = TotalHeight - TITLE_HEIGHT - TOOL_TIP_HEIGHT,
					WidthOffset = -Constants.TITLE_GUTTER_WIDTH,
					Multiline = MaxCount > 50,

					SetText = self.onTextChanged,

					LayoutOrder = 2,
				})
			),
		})
	end

	return if FFlagUpdateConvertToPackageToDFContextServices then renderWithContext(style) else withTheme(renderWithContext)
end

if FFlagUpdateConvertToPackageToDFContextServices then
	ConfigTextField = withContext({
		Stylizer = ContextServices.Stylizer,
	})(ConfigTextField)
end

return ConfigTextField