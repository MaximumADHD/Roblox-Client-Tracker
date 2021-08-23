local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local Plugin = script.Parent.Parent.Parent.Parent

local StudioService = game:GetService("StudioService")

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local CopyID = Roact.PureComponent:extend("CopyID")

local LABEL_WIDTH = 86
local BUTTON_WIDTH = 20
local PADDING = 5
local FRAME_WIDTH = LABEL_WIDTH + BUTTON_WIDTH + PADDING
local FRAME_HEIGHT = 24
local CONFIRM_POS = FRAME_WIDTH + PADDING
local CONFIRM_SIZE = 64


function CopyID:init()
	self.state = {
		copied = false
	}

	self.onCopyClicked = function(rbx)
		StudioService:CopyToClipboard(tostring(self.props.AssetId))
		self:setState({
			copied = true
		})
	end
end

function CopyID:render()
	if FFlagToolboxRemoveWithThemes then
		return withLocalization(function(_, localizedContent)
			return self:renderContent(nil, localizedContent)
		end)
	else
		return withTheme(function(theme)
			return withLocalization(function(_, localizedContent)
				return self:renderContent(theme, localizedContent)
			end)
		end)
	end
end

function CopyID:renderContent(theme, localizedContent)
	local props = self.props
	local state = self.state

	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end
	local copied = state.copied

	local yPos = props.YPos
	local assetID = props.AssetId

	--localizedContent.AssetConfig.Override.FilterID

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0.5, 0, 0, yPos),
		AnchorPoint = Vector2.new(0.5, 0),
		Size = UDim2.new(0, FRAME_WIDTH, 0, FRAME_HEIGHT),
	}, {
		LayoutContainer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING),
			}),

			IDLabel = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				Text = "ID: " ..assetID,
				TextColor3 = theme.uploadResult.idText,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				Size = UDim2.new(0, LABEL_WIDTH, 1, 0),
				TextYAlignment = Enum.TextYAlignment.Center,
				TextXAlignment = Enum.TextXAlignment.Center,
				LayoutOrder = 1,
			}),

			CopyButton = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_WIDTH),
				Image = "rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png",
				ImageColor3 = theme.uploadResult.buttonColor,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				[Roact.Event.MouseButton1Click] = self.onCopyClicked,
			}),
		}),

		CopiedLabel = copied and Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			Text = localizedContent.AssetConfig.Upload.IDCopied,
			TextColor3 = theme.uploadResult.greenText,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			Size = UDim2.new(0, CONFIRM_SIZE, 1, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, CONFIRM_POS, 0.5, 0),
			TextYAlignment = Enum.TextYAlignment.Center,
			TextXAlignment = Enum.TextXAlignment.Center,
		}),
	})
end

if FFlagToolboxRemoveWithThemes then
	CopyID = withContext({
		Stylizer = ContextServices.Stylizer,
	})(CopyID)
end

return CopyID