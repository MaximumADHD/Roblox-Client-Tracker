--!nonstrict
local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local CoreRoot = UIBlox.Core
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Images = require(AppRoot.ImageSet.Images)
local ImageSetComponent = require(CoreRoot.ImageSet.ImageSetComponent)
local Controllable = require(CoreRoot.Control.Controllable)
local GenericTextLabel = require(CoreRoot.Text.GenericTextLabel.GenericTextLabel)
local withStyle = require(UIBlox.Core.Style.withStyle)
local CloseButtonIcon = require(script.Parent.Enum.CloseButtonIcon)

local CLOSE_BUTTON_SIZE = 36
local CLOSE_HORIZONTAL_PADDING = 8
local TEXT_VERTICAL_PADDING = 8
local X_IMAGE = "icons/navigation/close"
local BACK_IMAGE = "icons/actions/cycleLeft"
local TITLE_HEIGHT = 48
local TITLE_MAX_HEIGHT_WITH_IMAGE = 261
local TITLE_RADIUS = 8
local TOTAL_X_BUTTON_SPACE = CLOSE_BUTTON_SIZE + (CLOSE_HORIZONTAL_PADDING * 2)

local ModalTitle = Roact.PureComponent:extend("ModalTitle")

ModalTitle.validateProps = t.strictInterface({
	title = t.string,
	position = t.optional(t.UDim2),
	anchor = t.optional(t.Vector2),
	closeButtonIcon = t.optional(CloseButtonIcon.isEnumValue),
	onCloseClicked = t.optional(t.callback),
	titleBackgroundImageProps = t.optional(t.strictInterface({
		image = t.string,
		imageHeight = t.number,
		text = t.optional(t.string),
	})),
	onTitleSizeChanged = t.optional(t.callback),
})

ModalTitle.defaultProps = {
	title = "",
	position = UDim2.new(0.5, 0, 0, 0),
	anchor = Vector2.new(0.5, 0),
	closeButtonIcon = CloseButtonIcon.Close,
}

function ModalTitle:GetHeight()
	return TITLE_HEIGHT
end

local function getCloseButtonIcon(closeButtonIcon)
	if closeButtonIcon == CloseButtonIcon.Close then
		return X_IMAGE
	elseif closeButtonIcon == CloseButtonIcon.Back then
		return BACK_IMAGE
	end

	return nil
end

local function renderBackgroundImage(titleBackgroundImageProps, stylePalette, contents)
	local titleText = titleBackgroundImageProps.text
	-- these could be exposed as props if needed
	local roundCorners = titleText and #titleText > 0
	local showGradient = titleText and #titleText > 0

	local titleHeight = math.clamp(titleBackgroundImageProps.imageHeight, TITLE_HEIGHT, TITLE_MAX_HEIGHT_WITH_IMAGE)

	if roundCorners then
		titleHeight = titleHeight + TITLE_RADIUS
		contents = Cryo.Dictionary.join(contents, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, TITLE_RADIUS),
			}),
		})
	end

	if titleText and #titleText > 0 then
		contents = Cryo.Dictionary.join(contents, {
			BackgroundText = Roact.createElement(GenericTextLabel, {
				Size = if UIBloxConfig.resizeModalTitle then UDim2.new(1, 0, 1, -TITLE_HEIGHT - TITLE_RADIUS) else nil,
				AnchorPoint = if UIBloxConfig.resizeModalTitle then Vector2.new(0.5, 0) else Vector2.new(0.5, 0.5),
				Position = if UIBloxConfig.resizeModalTitle
					then UDim2.new(0.5, 0, 0, TITLE_HEIGHT)
					else UDim2.new(0.5, 0, 0.5, 0),
				fontStyle = stylePalette.Font.Body,
				colorStyle = stylePalette.Theme.TextEmphasis,
				RichText = true,
				Text = titleText,
				TextTruncate = Enum.TextTruncate.AtEnd,
				ZIndex = 2,
			}),
		})
	end

	if showGradient then
		contents = Cryo.Dictionary.join(contents, {
			BackgroundTextShadow = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, roundCorners and -TITLE_RADIUS or 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 0,
				ZIndex = 1,
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Color = ColorSequence.new(Color3.new(0, 0, 0)),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(0.6, 0.25),
						NumberSequenceKeypoint.new(1, 1),
					}),
					Rotation = 90,
				}),
			}),
		})
	end

	local titleBackground = Roact.createElement(ImageSetComponent.Label, {
		AnchorPoint = Vector2.new(0, 0),
		Size = UDim2.new(1, 0, 0, titleHeight),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		ScaleType = Enum.ScaleType.Crop,
		BorderSizePixel = 0,
		Image = titleBackgroundImageProps.image,
		ImageColor3 = Color3.fromRGB(255, 255, 255),
	}, contents)

	if roundCorners then
		titleBackground = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 0, 0, titleHeight - TITLE_RADIUS),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			TitleBackground = titleBackground,
		})
	end

	return titleBackground
end

function ModalTitle:render()
	local titleBackgroundImageProps = self.props.titleBackgroundImageProps

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local theme = stylePalette.Theme

		local headerSize = font.BaseSize * font.Header1.RelativeSize

		local titleText = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = self.props.onTitleSizeChanged,
		}, {
			CloseButton = self.props.onCloseClicked and Roact.createElement(Controllable, {
				controlComponent = {
					component = ImageSetComponent.Button,
					props = {
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0, TITLE_HEIGHT * 0.5 + CLOSE_HORIZONTAL_PADDING, 0.5, 0),
						Size = UDim2.new(0, TITLE_HEIGHT, 0, TITLE_HEIGHT),
						[Roact.Event.Activated] = self.props.onCloseClicked,
					},
					children = {
						InputFillImage = Roact.createElement(ImageSetComponent.Label, {
							BackgroundTransparency = 1,
							Size = UDim2.new(0, CLOSE_BUTTON_SIZE, 0, CLOSE_BUTTON_SIZE),
							Image = Images[getCloseButtonIcon(self.props.closeButtonIcon)],
							ImageColor3 = theme.IconEmphasis.Color,
							ImageTransparency = theme.IconEmphasis.Transparency,
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						}),
					},
				},
				onStateChanged = function(...) end,
			}) or nil,
			Title = Roact.createElement(GenericTextLabel, {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, -(TOTAL_X_BUTTON_SPACE * 2), 1, 0),
				colorStyle = theme.TextEmphasis,
				fontStyle = font.Header1,
				LayoutOrder = 1,
				Text = self.props.title,
				TextSize = headerSize,
				TextWrapped = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, TEXT_VERTICAL_PADDING),
					PaddingBottom = UDim.new(0, TEXT_VERTICAL_PADDING),
				}),
			}),
			Underline = not titleBackgroundImageProps and Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = theme.Divider.Color,
				BackgroundTransparency = theme.Divider.Transparency,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 1),
			}),
		})

		if titleBackgroundImageProps then
			return renderBackgroundImage(titleBackgroundImageProps, stylePalette, {
				TitleText = titleText,
			})
		else
			return titleText
		end
	end)
end

return ModalTitle
