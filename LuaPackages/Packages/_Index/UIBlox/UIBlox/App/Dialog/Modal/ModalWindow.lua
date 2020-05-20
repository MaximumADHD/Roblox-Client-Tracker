local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local FitFrame = require(Packages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

local Images = require(AppRoot.ImageSet.Images)
local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local SLICE_CENTER = Rect.new(8, 8, 9, 9)

local ANCHORED_BACKGROUND_IMAGE = "component_assets/bullet_17"
local FLOATING_BACKGROUND_IMAGE = "component_assets/circle_17"

local modalWindowAnchorPoint = UIBloxConfig.modalWindowAnchorPoint

local ModalWindow = Roact.PureComponent:extend("ModalWindow")

local MAX_WIDTH = 540

local validateProps = t.strictInterface({
	isFullHeight = t.boolean,
	screenSize = t.Vector2,
	[Roact.Children] = t.table,
	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
})

function ModalWindow:init()
	self.contentSize, self.changeContentSize = Roact.createBinding(Vector2.new(0, 0))
end

-- Used to determine width of middle content for dynamically sizing children, see PartialPageModal
function ModalWindow:getWidth(screenWidth)
	return self:isFullWidth(screenWidth) and screenWidth or MAX_WIDTH
end

-- Used to determine if the modal is anchored in the middle or bottom of the screen
function ModalWindow:isFullWidth(screenWidth)
	return screenWidth < MAX_WIDTH
end

function ModalWindow:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local screenSize = self.props.screenSize

		local anchorPoint, backgroundImage, position, width
		width = UDim.new(0, self:getWidth(screenSize.X))
		if self:isFullWidth(screenSize.X) then
			anchorPoint = Vector2.new(0.5, 1)
			backgroundImage = ANCHORED_BACKGROUND_IMAGE
			position = self.props.position or UDim2.new(0.5, 0, 1, 0)
		else
			anchorPoint = Vector2.new(0.5, 0.5)
			backgroundImage = FLOATING_BACKGROUND_IMAGE
			position = self.props.position or UDim2.new(0.5, 0, 0.5, 0)
		end

		if modalWindowAnchorPoint then
			anchorPoint = self.props.anchorPoint or anchorPoint
		end

		if self.props.isFullHeight then
			return Roact.createElement(ImageSetComponent.Button, {
				Position = position,
				Size = UDim2.new(width, UDim.new(1, 0)),
				AnchorPoint = anchorPoint,
				BackgroundTransparency = 0,
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
				}, self.props[Roact.Children])
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
					Position = modalWindowAnchorPoint and UDim2.new(0.5, 0, 0.5, 0) or position,
					AnchorPoint = modalWindowAnchorPoint and Vector2.new(0.5, 0.5) or anchorPoint,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					width = width,
					[Roact.Change.AbsoluteSize] = function(rbx)
						self.changeContentSize(rbx.AbsoluteSize)
					end,
				}, self.props[Roact.Children])
			})
		end
	end)
end

return ModalWindow