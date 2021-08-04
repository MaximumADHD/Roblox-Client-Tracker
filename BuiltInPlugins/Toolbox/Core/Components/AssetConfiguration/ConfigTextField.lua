--[[
	This component is responsible for configuring asset's name and description
	It should let the parent know the content of latest string.

	Necessary Props:
	Position, UDim2.
	Size, UDim2.
	MaxCount, number, how many content is allowed to type inside the textField.
	TextChangeCallBack, function, return current character content.
	ErrorCallBack, function, called when error state of field changes

	Optional Props:
	LayoutOrder = number, will automatic be overrode Position property by UILayouter.
]]
local FFlagToolboxReplaceUILibraryComponentsPt2 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt2")
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local UILibrary = require(Libs.UILibrary)
local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local RoundTextBox
local TextInputWithBottomText
if FFlagToolboxReplaceUILibraryComponentsPt2 then
	local Framework = require(Libs.Framework)
	TextInputWithBottomText = Framework.StudioUI.TextInputWithBottomText
else
	RoundTextBox = UILibrary.Component.RoundTextBox
end

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local ConfigTextField = Roact.PureComponent:extend("ConfigTextField")

local TITLE_HEIGHT = 40
local TOOL_TIP_HEIGHT = 20

function ConfigTextField:init(props)
	self.state = {
		currentContent = nil
	}

	self.hasError = false

	self.onTextChanged = function(newText)
		self:setState({
			currentContent = newText
		})

		self.props.TextChangeCallBack(newText)
	end
end

function ConfigTextField:render()
	if FFlagToolboxReplaceUILibraryComponentsPt2 then
		return withLocalization(function(localization, localizedContent)
			return self:renderContent(nil, localization, localizedContent)
		end)
	else
		return withTheme(function(theme)
			return withLocalization(function(localization, localizedContent)
				return self:renderContent(theme, localization, localizedContent)
			end)
		end)
	end
end

function ConfigTextField:renderContent(theme, _, localizedContent)
	if FFlagToolboxReplaceUILibraryComponentsPt2 then
		theme = self.props.Stylizer
	end

	local props = self.props
	local state = self.state

	local Title = props.Title
	local TotalHeight = props.TotalHeight
	local LayoutOrder = props.LayoutOrder
	local MaxCount = props.MaxCount

	local TextContent = props.TextContent or ""
	local currentContent = state.currentContent or TextContent

	if self.props.ErrorCallback then
		if #currentContent > self.props.MaxCount then
			if not self.hasError then
				self.hasError = true
				self.props.ErrorCallback(self.hasError)
			end
		else
			if self.hasError then
				self.hasError = false
				self.props.ErrorCallback(self.hasError)
			end
		end
	end

	local publishAssetTheme = theme.publishAsset

	local textLength
	local textOverMaxCount
	local countText
	local isMultiLine = false
	if FFlagToolboxReplaceUILibraryComponentsPt2 then
		textLength = utf8.len(currentContent)
		textOverMaxCount = MaxCount and textLength > MaxCount
		countText = MaxCount and (textLength .. "/" .. MaxCount) or ""
		isMultiLine = MaxCount and MaxCount > 50
	end

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
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 1, 0),

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

		TextField = FFlagToolboxReplaceUILibraryComponentsPt2 and Roact.createElement(TextInputWithBottomText, {
			BottomText = countText,
			LayoutOrder = 2,
			Size = UDim2.new(1, -AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, TotalHeight - TITLE_HEIGHT - TOOL_TIP_HEIGHT),
			Style = textOverMaxCount and "Error" or nil,
			TextInputProps = {
				Enabled = true,
				MultiLine = isMultiLine,
				OnTextChanged = self.onTextChanged,
				Text = currentContent,
			},
		})
		or Roact.createElement(RoundTextBox, {
			Active = true,
			ErrorMessage = nil,
			MaxLength = MaxCount,
			Text = currentContent,
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_LARGE,
			Height = TotalHeight - TITLE_HEIGHT - TOOL_TIP_HEIGHT,
			WidthOffset = -AssetConfigConstants.TITLE_GUTTER_WIDTH,
			Multiline = MaxCount > 50,

			SetText = self.onTextChanged,

			LayoutOrder = 2,
		}),
	})
end

if FFlagToolboxReplaceUILibraryComponentsPt2 then
	if FFlagToolboxWithContext then
		ConfigTextField = withContext({
			Stylizer = ContextServices.Stylizer,
		})(ConfigTextField)
	else
		ContextServices.mapToProps(ConfigTextField, {
			Stylizer = ContextServices.Stylizer,
		})
	end

end

return ConfigTextField
