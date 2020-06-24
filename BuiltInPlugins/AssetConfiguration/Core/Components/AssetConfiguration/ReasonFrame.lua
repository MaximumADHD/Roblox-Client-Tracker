--[[
	A simple scrolling frame to list reasons why an action failed.
	The canvas size changes to fit the reasons while the total frame size stays the same.

	Position: UDim2
	Size: UDim2
	Reasons: {
		name,
		response: {
			responseBody: string
		}
	}[]
	LayoutOrder: number (optional)
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)

local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local FFlagShowAssetConfigReasons2 = game:GetFastFlag("ShowAssetConfigReasons2")

local ReasonFrame = Roact.PureComponent:extend("ReasonFrame")

local DEFAULT_CANVAS_HEIGHT = 40
-- Default if we don't have the absoluteSize of the scrolling frame.
local DEFAULT_FRAME_SIZE = Vector2.new(400, 9000)
local DEFAULT_FRAME_HEIGHT = 9000
local DEFAULT_REASON_TITLE_HEIGHT = 20

function ReasonFrame:init(props)
	self.scrollingFrameRef = Roact.createRef()

	self.calibrateCanvas = function()
		local reasons = self.props.Reasons or {}
		local canvasHeight = 0
		local sizeArray = {}
		-- Needed for getting the absoluteSize for calculating textBound for reason entity.
		local scrollingFrame = self.scrollingFrameRef.current

		-- Use the reasons here to calculate how big the canvas size should be and generate TextLabels for it.
		for _, reason in pairs(reasons) do
			local reasonText = reason.response.responseBody

			local frameSize
			if scrollingFrame then
				local absoluteSize = scrollingFrame.AbsoluteSize
				frameSize = Vector2.new(absoluteSize.X, DEFAULT_FRAME_HEIGHT)
			else
				frameSize = DEFAULT_FRAME_SIZE
			end

			local newTextSize = Constants.getTextSize(reasonText, Constants.FONT_SIZE_LARGE, Constants.FONT, frameSize)
			table.insert(sizeArray, newTextSize)
			if newTextSize then
				canvasHeight = canvasHeight + newTextSize.Y
			else
				canvasHeight = canvasHeight + 10
			end
		end

		if not canvasHeight then canvasHeight = DEFAULT_CANVAS_HEIGHT end
		if scrollingFrame then
			scrollingFrame.CanvasSize = UDim2.new(1, 0, 0, canvasHeight)
		end

		return sizeArray
	end

	self.getReasons = function(reasons, sizeArray, assetConfigTheme, localizedContent)
		local reasonsContent = {
			UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, Constants.ASSET_INNER_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),

			ExplainLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, DEFAULT_REASON_TITLE_HEIGHT),
				Text = localizedContent.AssetConfig.NetworkError,
				TextColor3 = assetConfigTheme.textColor,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_LARGE,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 0,
			})
		}

		for index, reason in pairs(reasons) do
			local sizeVector2 = sizeArray[index]

			reasonsContent[FFlagShowAssetConfigReasons2 and reason.networkErrorAction or reason.name] = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, sizeVector2.Y),
				Text = reason.response.responseBody,
				TextColor3 = FFlagShowAssetConfigReasons2 and assetConfigTheme.errorColor or assetConfigTheme.textColor,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_LARGE,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = index,
			})
		end
		return reasonsContent
	end
end

function ReasonFrame:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local props = self.props

			local size = props.Size
			local position = props.Position
			local reasons = props.Reasons
			local layoutOrder = props.LayoutOrder
			local assetConfigTheme = theme.assetConfig

			local reasonsContent = self.getReasons(reasons, self.calibrateCanvas(), assetConfigTheme, localizedContent)

			return Roact.createElement(StyledScrollingFrame, {
				Position = position,
				Size = size,
				-- Will be overidden in calibrateCanvas.
				CanvasSize = UDim2.new(0, 0, 0, DEFAULT_CANVAS_HEIGHT),
				ZIndex = 1,
				[Roact.Ref] = self.scrollingFrameRef,
				onScroll = self.onScroll,
				LayoutOrder = layoutOrder,
			}, reasonsContent)
		end)
	end)
end

return ReasonFrame
