local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ButtonStack = require(AppRoot.Button.ButtonStack)
local devOnly = require(UIBlox.Utility.devOnly)

local FitFrame = require(Packages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

local ModalTitle = require(ModalRoot.ModalTitle)
local ModalWindow = require(ModalRoot.ModalWindow)

local PartialPageModal = Roact.PureComponent:extend("PartialPageModal")

local MARGIN = 24

local validateProps = devOnly(t.strictInterface({
	screenSize = t.Vector2,
	[Roact.Children] = t.table,

	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	title = t.optional(t.string),
	titleBackgroundImageProps = t.optional(t.strictInterface({
		image = t.string,
		imageHeight = t.number,
		text = t.optional(t.string),
	})),
	bottomPadding = t.optional(t.number),
	marginSize = t.optional(t.number),

	buttonStackProps = t.optional(t.table), -- Button stack validates the contents

	footerContent = t.optional(t.callback), -- Accepts any element

	onCloseClicked = t.optional(t.callback),

	contentPadding = t.optional(t.UDim),
}))

PartialPageModal.defaultProps = {
	marginSize = MARGIN,
}

-- Used to determine width of middle content for dynamically sizing children in the content
-- Example: Multi-lined text that requires to know the width of its space that can also dynamically change its height.
function PartialPageModal:getMiddleContentWidth(screenWidth, modalMarginSize)
	return ModalWindow:getWidth(screenWidth) - 2 * (modalMarginSize or MARGIN)
end

function PartialPageModal:render()
	assert(validateProps(self.props))
	local screenSize = self.props.screenSize
	local bottomPadding = self.props.bottomPadding or MARGIN

	-- Only add bottom padding when window is anchored to the bottom
	-- Used to align buttons with previous UI
	if not ModalWindow:isFullWidth(screenSize.X) then
		bottomPadding = MARGIN
	end

	return Roact.createElement(ModalWindow, {
		isFullHeight = false,
		screenSize = screenSize,
		position = self.props.position,
		anchorPoint = self.props.anchorPoint,
	}, {
		TitleContainer = Roact.createElement(ModalTitle, {
			title = self.props.title,
			titleBackgroundImageProps = self.props.titleBackgroundImageProps,
			onCloseClicked = self.props.onCloseClicked,
		}),
		Content = Roact.createElement(FitFrameVertical, {
			Position = UDim2.new(0, 0, 0, ModalTitle.TITLE_HEIGHT),
			width = UDim.new(1, 0),
			margin = {
				top = 0,
				bottom = bottomPadding,
				left = 0,
				right = 0,
			},
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			BackgroundTransparency = 1,
			contentPadding = self.props.contentPadding,
		}, {
			MiddlContent = Roact.createElement(FitFrameVertical, {
				width = UDim.new(1, -2 * self.props.marginSize),
				BackgroundTransparency = 1,
			}, self.props[Roact.Children]),
			Buttons = self.props.buttonStackProps and Roact.createElement(FitFrameVertical, {
				BackgroundTransparency = 1,
				width = UDim.new(1, 0),
				LayoutOrder = 2,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, MARGIN),
					PaddingRight = UDim.new(0, MARGIN),
				}),
				Roact.createElement(ButtonStack, self.props.buttonStackProps),
			}),
			BottomFrame = if self.props.footerContent
				then Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					LayoutOrder = 3,
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.Y,
				}, { FooterContent = self.props.footerContent() })
				else nil,
		}),
	})
end

return PartialPageModal
