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
local withStyle = require(UIBlox.Style.withStyle)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local SLICE_CENTER = Rect.new(8, 8, 9, 9)

local ANCHORED_BACKGROUND_IMAGE = "modal/modalBackground"
local FLOATING_BACKGROUND_IMAGE = "buttons/buttonFill"

local ModalWindow = Roact.PureComponent:extend("ModalWindow")

local MAX_WIDTH = 540

local validateProps = t.strictInterface({
	isFullHeight = t.boolean,
	screenSize = t.Vector2,
	[Roact.Children] = t.table,
	position = t.optional(t.UDim2),
})

function ModalWindow:init()
	self.screenRef = Roact.createRef()
	self.state = {
		contentSize = Vector2.new(0, 0),
	}

	self.changeContentSize = function(rbx)
		if self.state.contentSize ~= rbx.AbsoluteSize then
			self:setState({
				contentSize = rbx.AbsoluteSize
			})
		end
	end
end

function ModalWindow:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local isFullWidth = self.props.screenSize.X < MAX_WIDTH

		local anchorPoint, backgroundImage, position, width
		if isFullWidth then
			width = UDim.new(0, self.props.screenSize.X)
			anchorPoint = Vector2.new(0.5, 1)
			backgroundImage = ANCHORED_BACKGROUND_IMAGE
			position = self.props.position or UDim2.new(0.5, 0, 1, 0)
		else
			width = UDim.new(0, MAX_WIDTH)
			anchorPoint = Vector2.new(0.5, 0.5)
			backgroundImage = FLOATING_BACKGROUND_IMAGE
			position = self.props.position or UDim2.new(0.5, 0, 0.5, 0)
		end

		if self.props.isFullHeight then
			return Roact.createElement("ImageButton", {
				Position = position,
				Size = UDim2.new(width, UDim.new(1, 0)),
				AnchorPoint = anchorPoint,
				BackgroundTransparency = 0,
				ClipsDescendants = true,
				Selectable = false,
				[Roact.Event.InputBegan] = function(...) end,
				[Roact.Event.InputEnded] = function(...) end,
				[Roact.Event.Activated] = function(...) end,
			}, {
				BackgroundImage = Roact.createElement(ImageSetComponent.Label, {
					Size = UDim2.new(1, 0, 1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BackgroundTransparency = 1,
					Image = Images[backgroundImage],
					ImageColor3 = theme.BackgroundUIDefault.Color,
					ImageTransparency = theme.BackgroundUIDefault.Transparency,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = SLICE_CENTER,
				}, self.props[Roact.Children])
			})
		else
			return Roact.createElement("ImageButton", {
				Position = position,
				Size = UDim2.new(0, self.state.contentSize.X, 0, self.state.contentSize.Y),
				AnchorPoint = anchorPoint,
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Selectable = false,
				[Roact.Event.InputBegan] = function(...) end,
				[Roact.Event.InputEnded] = function(...) end,
				[Roact.Event.Activated] = function(...) end,
			}, {
				BackgroundImage = Roact.createElement(FitFrameVertical, {
					AnchorPoint = anchorPoint,
					BackgroundTransparency = 1,
					ImageSet = Images[backgroundImage],
					ImageColor3 = theme.BackgroundUIDefault.Color,
					ImageTransparency = theme.BackgroundUIDefault.Transparency,
					Position = position,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = SLICE_CENTER,
					width = width,
					[Roact.Change.AbsoluteSize] = self.changeContentSize,
				}, self.props[Roact.Children])
			})
		end
	end)
end

return ModalWindow