local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ButtonStack = require(AppRoot.Button.ButtonStack)

local FitFrame = require(Packages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

local ModalTitle = require(ModalRoot.ModalTitle)
local ModalWindow = require(ModalRoot.ModalWindow)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local PartialPageModal = Roact.PureComponent:extend("PartialPageModal")

local MARGIN = 24

PartialPageModal.validateProps = t.strictInterface({
	-- Size of the container housing the `Modal`. This is necessary to dynamically scale the modal's width.
	screenSize = t.Vector2,
	[Roact.Children] = t.table,

	-- Position of `Modal` in the whole page. Depending on the screensize that houses it, the position and anchor of the modal will change.
	-- If the width is less than the max size of the `Modal` (540px), then it will be anchored at the bottom of the screen, otherwise it will be positioned at the center.
	-- This is just for the ease of seeing the final state of the window, the window should be animated in and out.
	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	-- Title text of the `Modal`. Title can be a maximum of 2 lines long before it is cut off.
	title = t.optional(t.string),
	-- Title background image of the `Modal`
	titleBackgroundImageProps = t.optional(t.strictInterface({
		-- Title background image ID
		image = t.string,
		-- Title background image height
		imageHeight = t.number,
		text = t.optional(t.string),
	})),
	-- Used to set the bottom padding of the modal. This should be used to add extra padding to the bottom when on phones with a bottom bar such as iPhoneX.
	bottomPadding = t.optional(t.number),
	-- Used to set the left/right margin's of the middle content in the modal
	marginSize = t.optional(t.number),
	-- Button stack validates the contents.
	-- See [[ButtonStack]] for more details.
	buttonStackProps = t.optional(ButtonStack.validateProps),

	-- Accepts any element
	footerContent = t.optional(t.callback),
	-- A function that is called when the X button in the Title has been clicked
	onCloseClicked = t.optional(t.callback),

	contentPadding = t.optional(t.UDim),
})

PartialPageModal.defaultProps = {
	marginSize = 24,
}

-- Used to determine width of middle content for dynamically sizing children in the content
-- Example: Multi-lined text that requires to know the width of its space that can also dynamically change its height.
-- remove with UIBloxConfig.useSeparatedCalcFunction
function PartialPageModal:getMiddleContentWidth(screenWidth, modalMarginSize)
	if UIBloxConfig.useSeparatedCalcFunction then
		assert(false, "Deprecated usage, use `UIBlox.App.Dialog.Modal.getPartialPageModalMiddleContentWidth` instead")
		return
	end

	return ModalWindow:getWidth(screenWidth) - 2 * (modalMarginSize or MARGIN)
end

function PartialPageModal:render()
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
			LayoutOrder = 1,
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
