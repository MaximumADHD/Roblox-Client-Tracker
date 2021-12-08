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

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local Framework = require(Libs.Framework)
local TextInputWithBottomText = Framework.StudioUI.TextInputWithBottomText

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
	return withLocalization(function(localization, localizedContent)
		return self:renderContent(nil, localization, localizedContent)
	end)
end

function ConfigTextField:renderContent(theme, localization, localizedContent)
	theme = self.props.Stylizer

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

	local textLength = utf8.len(currentContent)
	local textOverMaxCount = MaxCount and textLength > MaxCount
	local countText = MaxCount and (textLength .. "/" .. MaxCount) or ""
	local isMultiLine = MaxCount and MaxCount > 50

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

		TextField = Roact.createElement(TextInputWithBottomText, {
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
		}),
	})
end


ConfigTextField = withContext({
	Stylizer = ContextServices.Stylizer,
})(ConfigTextField)


return ConfigTextField
