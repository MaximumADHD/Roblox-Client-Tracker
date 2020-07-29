local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local FitFrame = require(Packages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local withStyle = require(UIBlox.Core.Style.withStyle)
local ButtonType = require(UIBlox.App.Button.Enum.ButtonType)
local getIconSize = require(AppRoot.ImageSet.getIconSize)
local IconSize = require(AppRoot.ImageSet.Enum.IconSize)

local PartialPageModal = require(ModalRoot.PartialPageModal)

local BODY_CONTENTS_WIDTH = 253
local BODY_CONTENTS_MARGIN = 20

local EducationalModal = Roact.PureComponent:extend("EducationalModal")

EducationalModal.validateProps = t.strictInterface({
	bodyContents = t.array(t.strictInterface({
		icon = t.union(t.string, t.table),
		text = t.string,
		layoutOrder = t.integer,
		isSystemMenuIcon = t.optional(t.boolean),
	})),
	cancelText = t.string,
	confirmText = t.string,
	titleText = t.string,
	titleBackgroundImageProps = t.strictInterface({
		image = t.string,
		imageHeight = t.number,
	}),
	screenSize = t.Vector2,

	onDismiss = t.callback,
	onCancel = t.callback,
	onConfirm = t.callback,
})

local function ContentItem(props)
	local totalTextSize = Vector2.new(16, 16)
	local paddingBetween = 8

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font
		local textSize = font.Body.RelativeSize * font.BaseSize

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, BODY_CONTENTS_WIDTH, 0, totalTextSize.Y),
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		}, {
			HorizontalLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = props.isSystemMenuIcon and UDim.new(0, paddingBetween + 2)
					or UDim.new(0, paddingBetween),
				VerticalAlignment = Enum.VerticalAlignment.Center
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = props.isSystemMenuIcon and UDim.new(0, 2)
					or UDim.new(0, 0),
			}),
			Icon = props.isSystemMenuIcon and Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(32, 32),
				Image = "rbxasset://textures/ui/TopBar/iconBase.png",
				LayoutOrder = 1,
			}, {
				Icon = Roact.createElement(ImageSetLabel, {
					ZIndex = 1,
					BackgroundTransparency = 1,
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.fromOffset(24, 24),
					Image = "rbxasset://textures/ui/TopBar/coloredlogo.png",
				}),
			}) or Roact.createElement(ImageSetLabel, {
				Image = props.icon,
				Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium)),
				ImageColor3 = theme.IconDefault.Color,
				ImageTransparency = theme.IconDefault.Transparency,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}),
			Roact.createElement(GenericTextLabel, {
				Size = UDim2.new(1, 0, 0, totalTextSize.Y),
				BackgroundTransparency = 1,
				Text = props.text,
				TextSize = textSize,
				colorStyle = theme.TextDefault,
				TextTransparency = theme.TextDefault.Transparency,
				fontStyle = font.Body,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
				LayoutOrder = 2,
			}),
		})
	end)
end

function EducationalModal:init()
	self.contentSize, self.changeContentSize = Roact.createBinding(Vector2.new(0, 0))
end

function EducationalModal:render()
	local props = self.props

	local elements = {}
	for _, content in ipairs(props.bodyContents) do
		local current = Roact.createElement(ContentItem, {
			icon = content.icon,
			text = content.text,
			layoutOrder = content.layoutOrder,
			isSystemMenuIcon = content.isSystemMenuIcon,
		})
		table.insert(elements, current)
	end

	return Roact.createElement(PartialPageModal, {
		title = props.titleText,
		titleBackgroundImageProps = props.titleBackgroundImageProps,
		screenSize = props.screenSize,
		bottomPadding = 50,
		buttonStackProps = {
			buttons = {
				{
					props = {
						isDisabled = false,
						onActivated = props.onCancel,
						text = props.cancelText,
					},
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						isDisabled = false,
						onActivated = props.onConfirm,
						text = props.confirmText,
					},
				},
			},
		},
		onCloseClicked = props.onDismiss,
	}, {
		BodyContents = Roact.createElement(FitFrameVertical, {
			BackgroundTransparency = 1,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			width = UDim.new(1, 0),
			contentPadding = UDim.new(0, 28),
			margin = {
				top = BODY_CONTENTS_MARGIN,
				bottom = BODY_CONTENTS_MARGIN,
			},
			[Roact.Change.AbsoluteSize] = function(rbx)
				self.changeContentSize(rbx.AbsoluteSize)
			end,
		}, elements),
	})
end

return EducationalModal
