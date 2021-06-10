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

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local UILibrary = require(Libs.UILibrary)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local RoundTextBox = UILibrary.Component.RoundTextBox

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
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
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

				TextField = Roact.createElement(RoundTextBox, {
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
				})
			})
		end)
	end)
end

return ConfigTextField
