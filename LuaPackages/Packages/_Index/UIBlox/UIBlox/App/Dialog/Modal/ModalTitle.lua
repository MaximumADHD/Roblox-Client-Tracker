local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local CoreRoot = UIBlox.Core
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(AppRoot.ImageSet.Images)
local ImageSetComponent = require(CoreRoot.ImageSet.ImageSetComponent)
local Controllable = require(CoreRoot.Control.Controllable)
local GenericTextLabel = require(CoreRoot.Text.GenericTextLabel.GenericTextLabel)
local withStyle = require(UIBlox.Core.Style.withStyle)

local X_BUTTON_SIZE = 36
local X_LEFT_PADDING = 8
local X_IMAGE = "icons/navigation/close"
local TITLE_HEIGHT = 48
local TITLE_MAX_HEIGHT_WITH_IMAGE = 261

local ModalTitle = Roact.PureComponent:extend("ModalTitle")

ModalTitle.validateProps = t.strictInterface({
	title = t.string,
	position = t.optional(t.UDim2),
	anchor = t.optional(t.Vector2),
	onCloseClicked = t.optional(t.callback),
	titleBackgroundImageProps = t.optional(t.strictInterface({
		image = t.string,
		imageHeight = t.number,
	})),
})

ModalTitle.defaultProps = {
	title = "",
	position = UDim2.new(0.5, 0, 0, 0),
	anchor = Vector2.new(0.5, 0),
}

function ModalTitle:GetHeight()
	return TITLE_HEIGHT
end

function ModalTitle:render()
	local titleBackground = self.props.titleBackgroundImageProps

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local theme = stylePalette.Theme

		local headerSize = font.BaseSize * font.Header1.RelativeSize

		local titleText = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			CloseButton = self.props.onCloseClicked and Roact.createElement(Controllable, {
				controlComponent = {
					component = ImageSetComponent.Button,
					props = {
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0, TITLE_HEIGHT * 0.5 + X_LEFT_PADDING, 0.5, 0),
						Size = UDim2.new(0, TITLE_HEIGHT, 0, TITLE_HEIGHT),
						[Roact.Event.Activated] = self.props.onCloseClicked,
					},
					children = {
						InputFillImage = Roact.createElement(ImageSetComponent.Label, {
							BackgroundTransparency = 1,
							Size = UDim2.new(0, X_BUTTON_SIZE, 0, X_BUTTON_SIZE),
							Image = Images[X_IMAGE],
							ImageColor3 = theme.IconEmphasis.Color,
							ImageTransparency = theme.IconEmphasis.Transparency,
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						})
					}
				},
				onStateChanged = function(...) end,
			}) or nil,
			Title = Roact.createElement(GenericTextLabel, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				colorStyle = theme.TextEmphasis,
				fontStyle = font.Header1,
				LayoutOrder = 1,
				Text = self.props.title,
				TextSize = headerSize,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
			Underline = not titleBackground and Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = theme.Divider.Color,
				BackgroundTransparency = theme.Divider.Transparency,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 1),
			}),
		})

		if titleBackground then
			local bgHeight = titleBackground.imageHeight
			local height = math.min(math.max(TITLE_HEIGHT, bgHeight), TITLE_MAX_HEIGHT_WITH_IMAGE)
			return Roact.createElement(ImageSetComponent.Label, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 0, 0, height),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				ScaleType = Enum.ScaleType.Crop,
				BorderSizePixel = 0,
				Image = titleBackground.image,
				ImageColor3 = Color3.new(255, 255, 255),
			}, {
				TitleText = titleText,
			})
		else
			return titleText
		end
	end)
end

return ModalTitle
