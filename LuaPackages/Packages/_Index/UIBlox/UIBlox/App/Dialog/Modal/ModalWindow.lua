--!nonstrict
local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local FitFrame = require(Packages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

local Images = require(AppRoot.ImageSet.Images)
local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local getModalWindowWidth = require(ModalRoot.getModalWindowWidth)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local SLICE_CENTER = Rect.new(8, 8, 9, 9)
local MAX_WIDTH = 540

local ANCHORED_BACKGROUND_IMAGE = "component_assets/bullet_17"
local FLOATING_BACKGROUND_IMAGE = "component_assets/circle_17"

local ModalWindow = Roact.PureComponent:extend("ModalWindow")

ModalWindow.validateProps = t.strictInterface({
	-- Determine if the ModalWindow will have a Frame extending the full height
	-- of the screenSize or fit component to dynamically size around the middleContent.
	isFullHeight = t.boolean,
	-- Size of the container housing the `ModalWindow`. This is necessary to dynamically scale the alert's width.
	screenSize = t.Vector2,
	[Roact.Children] = t.table,
	-- Position of `ModalWindow` in the whole page. Depending on the screensize that houses it, the position and anchor of the modal will change.
	-- If the width is less than the max size of the `Modal` (540px), then it will be anchored at the bottom of the screen, otherwise it will be positioned at the center.
	-- This is just for the ease of seeing the final state of the window, the window should be animated in and out.
	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	-- The modal does not inherently account for safe zone areas at the top, such as device-specific status bars.
	-- This value repositions the top of the modal by this pixel value from the top of the screen.
	distanceFromTop = t.optional(t.number),
})

ModalWindow.defaultProps = {
	distanceFromTop = 0,
}

function ModalWindow:init()
	self.contentSize, self.changeContentSize = Roact.createBinding(Vector2.new(0, 0))
end

-- Used to determine width of middle content for dynamically sizing children, see PartialPageModal
-- remove with UIBloxConfig.useSeparatedCalcFunction
function ModalWindow:getWidth(screenWidth)
	if UIBloxConfig.useSeparatedCalcFunction then
		assert(false, "Deprecated usage, use `getModalWindowWidth()` instead")
		return
	end

	return self:isFullWidth(screenWidth) and screenWidth or MAX_WIDTH
end

-- Used to determine if the modal is anchored in the middle or bottom of the screen
function ModalWindow:isFullWidth(screenWidth)
	return screenWidth < MAX_WIDTH
end

function ModalWindow:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local screenSize = self.props.screenSize

		local anchorPoint, backgroundImage, position, width
		width = UDim.new(
			0,
			if UIBloxConfig.useSeparatedCalcFunction
				then getModalWindowWidth(screenSize.X)
				else self:getWidth(screenSize.X)
		)
		if self:isFullWidth(screenSize.X) then
			anchorPoint = Vector2.new(0.5, 1)
			backgroundImage = ANCHORED_BACKGROUND_IMAGE
			position = self.props.position or UDim2.new(0.5, 0, 1, 0)
		else
			anchorPoint = Vector2.new(0.5, 0.5)
			backgroundImage = FLOATING_BACKGROUND_IMAGE
			position = self.props.position or UDim2.new(0.5, 0, 0.5, 0)
		end

		anchorPoint = self.props.anchorPoint or anchorPoint

		if self.props.isFullHeight then
			local height
			if self.props.distanceFromTop > 0 then
				height = UDim.new(1, -self.props.distanceFromTop)
			else
				height = UDim.new(1, 0)
				if screenSize.X >= 540 and screenSize.Y >= 700 then
					height = UDim.new(0.8, 0)
				end
			end
			return Roact.createElement(ImageSetComponent.Button, {
				Position = position,
				Size = UDim2.new(width, height),
				AnchorPoint = anchorPoint,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = Images[backgroundImage],
				ImageColor3 = theme.BackgroundUIDefault.Color,
				ImageTransparency = theme.BackgroundUIDefault.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = SLICE_CENTER,
				AutoButtonColor = false,
				ClipsDescendants = true,
				Selectable = false,
			}, {
				BackgroundImage = Roact.createElement(ImageSetComponent.Label, {
					Size = UDim2.new(1, 0, 1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				}, self.props[Roact.Children]),
			})
		else
			return Roact.createElement(ImageSetComponent.Button, {
				Position = position,
				Size = self.contentSize:map(function(absoluteSize)
					return UDim2.new(0, absoluteSize.X, 0, absoluteSize.Y)
				end),
				AnchorPoint = anchorPoint,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = Images[backgroundImage],
				ImageColor3 = theme.BackgroundUIDefault.Color,
				ImageTransparency = theme.BackgroundUIDefault.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = SLICE_CENTER,
				AutoButtonColor = false,
				ClipsDescendants = true,
				Selectable = false,
			}, {
				BackgroundImage = Roact.createElement(FitFrameVertical, {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					width = width,
					[Roact.Change.AbsoluteSize] = function(rbx)
						self.changeContentSize(rbx.AbsoluteSize)
					end,
				}, self.props[Roact.Children]),
			})
		end
	end)
end

return ModalWindow
