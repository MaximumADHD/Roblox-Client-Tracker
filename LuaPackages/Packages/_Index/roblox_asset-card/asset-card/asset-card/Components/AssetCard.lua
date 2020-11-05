local TextService = game:GetService("TextService")

local root = script.Parent.Parent
local Packages = root.Parent

local UIBlox = require(Packages.UIBlox)
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local LoadableImage = UIBlox.App.Loading.LoadableImage

local IMAGE_SIZE = 128
local FOOTER_HEIGHT = 20

local MAX_TEXT_BOUND = 10000
local TEXT_LINE_HEIGHT = 20
local TEXT_PADDING = 12
local TEXT_TOP_PADDING = 8

local AssetCard = Roact.PureComponent:extend("AssetCard")

local validateProps = t.interface({
	image = t.string,
	imageTransparency = t.number,
	textColor3 = t.Color3,
	textTransparency = t.number,
	text = t.string,
	font = t.enum(Enum.Font),
	onActivated = t.callback,
})

AssetCard.defaultProps = {
	image = "",
	imageTransparency = 0,
	textColor3 = Color3.fromRGB(242, 244, 245),
	textTransparency = 0,
	text = "tucker was here",
	font = Enum.Font.Gotham,
	onActivated = function() end,
}

function AssetCard:render()
	local props = self.props
	assert(validateProps(props))

	local text = props.text
	local font = props.font

	local textLabelWidth = IMAGE_SIZE - (TEXT_PADDING*2)
	local textWidth = TextService:GetTextSize(text, 16, font, Vector2.new(MAX_TEXT_BOUND, MAX_TEXT_BOUND)).X

	local lines = 1

	if textWidth > textLabelWidth then
		lines = 2
	end

	local textFooterSize = FOOTER_HEIGHT+(TEXT_LINE_HEIGHT*lines)

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(0, IMAGE_SIZE, 0, IMAGE_SIZE + textFooterSize),
		BackgroundTransparency = 1,
		[Roact.Event.Activated] = props.onActivated,
	}, {
		layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		assetIcon = Roact.createElement(LoadableImage, {
			Size = UDim2.new(0, IMAGE_SIZE, 0, IMAGE_SIZE),
			BackgroundTransparency = 0.5,
			LayoutOrder = 1,
			Image = props.image,
			ImageTransparency = props.imageTransparency,
			useShimmerAnimationWhileLoading = true,
			showFailedStateWhenLoadingFailed = true,
		}),
		nameContainer = Roact.createElement("Frame", {
			Size = UDim2.new(0, IMAGE_SIZE, 0, textFooterSize),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0,TEXT_TOP_PADDING),
				PaddingBottom = UDim.new(0, TEXT_PADDING),
				PaddingLeft = UDim.new(0, TEXT_PADDING),
				PaddingRight = UDim.new(0,TEXT_PADDING),
			}),
			assetName = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Font = font,
				TextTransparency = props.textTransparency,
				TextColor3 = props.textColor3,
				TextSize = 16,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextWrapped = true,
				Text = text,
			})
		})
	})
end

return AssetCard
