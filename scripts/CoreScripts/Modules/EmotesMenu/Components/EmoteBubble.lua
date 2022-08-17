--!nonstrict
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local SpringAnimatedItem = UIBlox.Utility.SpringAnimatedItem
local ImageSet = UIBlox.Core.ImageSet
local Images = UIBlox.App.ImageSet.Images

local Components = script.Parent
local EmoteHighlight = require(Components.EmoteHighlight)
local EmotesModules = Components.Parent
local Constants = require(EmotesModules.Constants)
local EmoteBubbleSizes = Constants.EmoteBubbleSizes
local Thunks = EmotesModules.Thunks

local PlayEmote = require(Thunks.PlayEmote)

local ICON_SIZE = 40
local CURSOR_IMAGE = Images["component_assets/circle_60_stroke_2"]

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 7.5,
}

local GRADIENT_TRANSPARENCY = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(1, 0.7),
})

local EmoteBubble = Roact.PureComponent:extend("EmoteBubble")

EmoteBubble.validateProps = t.strictInterface({
	emoteName = t.string,
	emoteAssetId = t.integer,
	slotIndex = t.optional(t.number),
	focused = t.optional(t.boolean),
	scrollingFrameRef = t.optional(t.table),
	offScreen = t.optional(t.string),
	Position = t.optional(t.UDim2),
	AnchorPoint = t.optional(t.Vector2),

	-- from mapStateToProps
	guiInset = t.number,
	menuVisible = t.boolean,

	-- from mapDispatchToProps
	playEmote = t.callback,
})

EmoteBubble.defaultProps = {
	focused = false,
	Position = UDim2.fromScale(0, 0),
	AnchorPoint = Vector2.new(0, 0),
}

function EmoteBubble:shiftScrollingFrame()
	if not self.props.scrollingFrameRef then
		return
	end

	local bubbleFrame = self.bubbleFrameRef:getValue()
	local scrollingFrame = self.props.scrollingFrameRef:getValue()
	if bubbleFrame and scrollingFrame then
		local yPos = self.props.Position.Y.Offset
		if yPos + bubbleFrame.AbsoluteSize.Y - scrollingFrame.CanvasPosition.Y > scrollingFrame.AbsoluteSize.Y then
			-- move scrolling frame to accommodate off screen bottom element
			local diff = yPos + bubbleFrame.AbsoluteSize.Y - scrollingFrame.AbsoluteSize.Y
			scrollingFrame.CanvasPosition =
				Vector2.new(0, diff + EmoteBubbleSizes.BubblePadding)
		elseif yPos - scrollingFrame.CanvasPosition.Y < 0 then
			-- move scrolling frame to accommodate off screen top element
			local diff = scrollingFrame.CanvasPosition.Y - yPos
			scrollingFrame.CanvasPosition =
				Vector2.new(0, scrollingFrame.CanvasPosition.Y - diff - EmoteBubbleSizes.BubblePadding)
		end
	end
end

function EmoteBubble:init()
	self.isMounted = false
	self.bubbleFrameRef = Roact.createRef()
	self.gradientOffset, self.updateGradientOffset = Roact.createBinding(Vector2.new(0, 0))
	self.gradientRotation, self.updateGradientRotation = Roact.createBinding(90)

	self:setState({
		isSelected = false,
		isHovered = false,
		expansionAnimationScale = 1,
		bubbleOffscreen = false,
	})

	self.setHighlight = function()
		if self.isMounted then
			self:setState({
				isSelected = true,
				expansionAnimationScale = Constants.EmoteBubbleSizes.AnimScale,
			})
		end
	end

	self.removeHighlight = function()
		if self.isMounted then
			self:setState({
				isSelected = false,
			})
		end
	end

	self.onActivated = function()
		local assetId = self.props.emoteAssetId
		-- shift scrolling frame so EmoteBubble is in view if it is partially offscreen when activated
		self:shiftScrollingFrame()
		self.props.playEmote(self.props.emoteName, self.props.slotIndex, assetId, self.setHighlight, self.removeHighlight)
	end

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end

	self.onAnimComplete = function()
		self:setState({
			expansionAnimationScale = 1,
		})
	end

	self.onAbsolutePositionChange = function()
		local scrollingFrame = self.props.scrollingFrameRef:getValue()
		local gradientYOffset = 0
		if scrollingFrame then
			local bubbleDiff = scrollingFrame.CanvasPosition.Y - self.props.Position.Y.Offset
			if bubbleDiff < 0 then
				bubbleDiff = scrollingFrame.AbsoluteSize.Y -
					(self.props.Position.Y.Offset + EmoteBubbleSizes.BubbleSize - scrollingFrame.CanvasPosition.Y)
			end
			gradientYOffset = bubbleDiff / EmoteBubbleSizes.BubbleSize
		end

		self.updateGradientOffset(Vector2.new(0, gradientYOffset))
		self.updateGradientRotation(gradientYOffset >= 0 and 90 or 270)

		-- Check if the bubble itself is offscreen since the entire element can be offscreen without the bubble being offscreen
		-- in the case where the text is still offscreen at the bottom, but the bubble is onscreen
		local bubbleOffscreen = (self.props.offScreen == Constants.OffScreen.Bottom and gradientYOffset < 0) or
			self.props.offScreen == Constants.OffScreen.Top and gradientYOffset > 0
		if bubbleOffscreen ~= self.state.bubbleOffscreen then
			self:setState({
				bubbleOffscreen = bubbleOffscreen
			})
		end
	end
end

function EmoteBubble:bindActions()
	if self.actionsBound then
		return
	end

	local function playSelectedEmote(actionName, inputState, inputObj)
		if inputState == Enum.UserInputState.Begin and self.props.focused then
			self.onActivated()
		end
	end

	local actionKey = Constants.PlaySelectedAction .. self.props.emoteName
	ContextActionService:BindAction(actionKey, playSelectedEmote, --[[createTouchButton = ]] false,
									Constants.EmoteMenuPlayEmoteButton)

	self.actionsBound = true
end

function EmoteBubble:unbindActions()
	if self.actionsBound then
		local actionKey = Constants.PlaySelectedAction .. self.props.emoteName
		ContextActionService:UnbindAction(actionKey)

		self.actionsBound = false
	end
end

function EmoteBubble:didMount()
	self.isMounted = true
	if self.props.focused and self.props.menuVisible then
		self:bindActions()
	end
end

function EmoteBubble:render()
	local assetId = self.props.emoteAssetId
	local emoteImage = Constants.EmotesImage:format(assetId)
	local emoteText = self.props.slotIndex and
		(self.props.slotIndex .. " / " .. self.props.emoteName) or self.props.emoteName
	local iconOffset = EmoteBubbleSizes.BubbleSize - ICON_SIZE
	local showGradientTransparency = self.state.bubbleOffscreen and self.props.offScreen ~= nil

	return Roact.createElement("Frame", {
		AnchorPoint = self.props.AnchorPoint,
		Position = self.props.Position,
		Size = UDim2.fromOffset(EmoteBubbleSizes.BubbleSize,
			EmoteBubbleSizes.BubbleSize + EmoteBubbleSizes.TextSize + EmoteBubbleSizes.TextPadding),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.bubbleFrameRef,
		[Roact.Change.AbsolutePosition] = self.props.offScreen ~= nil and self.onAbsolutePositionChange or nil,
	}, {
		EmoteBubbleButton = Roact.createElement(SpringAnimatedItem.AnimatedTextButton, {
			regularProps = {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0, EmoteBubbleSizes.BubbleSize / 2),
				BackgroundColor3 = Constants.Colors.Black,
				BackgroundTransparency = (self.state.isSelected or self.state.isHovered) and 0.3 or
					not showGradientTransparency and 0.5 or 0,
				Text = "",
				[Roact.Event.Activated] = self.onActivated,
				[Roact.Event.MouseEnter] = self.onMouseEnter,
				[Roact.Event.MouseLeave] = self.onMouseLeave,
			},

			animatedValues = {
				expansionAnimationScale = self.state.expansionAnimationScale
			},

			mapValuesToProps = function(values)
				local offset = EmoteBubbleSizes.BubbleSize * values.expansionAnimationScale
				return {
					Size = UDim2.fromOffset(offset, offset)
				}
			end,

			springOptions = ANIMATION_SPRING_SETTINGS,
			onComplete = self.onAnimComplete,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0.5, 0),
			}),
			UIGradient = showGradientTransparency and Roact.createElement("UIGradient", {
				Rotation = self.gradientRotation,
				Offset = self.gradientOffset,
				Transparency = GRADIENT_TRANSPARENCY,
			}),

			EmoteImage = Roact.createElement("ImageLabel", {
				Image = emoteImage,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.new(1, -iconOffset, 1, -iconOffset),
				BackgroundTransparency = 1,
				ImageTransparency = 0,
				ImageColor3 = Constants.Colors.White,
			}, {
				UIGradient = showGradientTransparency and Roact.createElement("UIGradient", {
					Rotation = self.gradientRotation,
					Offset = self.gradientOffset,
					Transparency = GRADIENT_TRANSPARENCY,
				}),
			}),

			EmoteGamepadSelectionCursor = self.props.focused and Roact.createElement(ImageSet.Label, {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Image = CURSOR_IMAGE,
				ImageColor3 = Constants.Colors.White,
			}),

			EmoteHighlight = self.state.isSelected and Roact.createElement(EmoteHighlight),
		}),

		EmoteTextFrame = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
			regularProps = {
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = 1,
			},

			animatedValues = {
				expansionAnimationScale = self.state.expansionAnimationScale,
			},

			mapValuesToProps = function(values)
				local scale = values.expansionAnimationScale
				local expansionOffset = EmoteBubbleSizes.BubbleSize * (scale - 1) / 2
				return {
					Size = UDim2.fromOffset(EmoteBubbleSizes.BubbleSize * scale, EmoteBubbleSizes.TextSize * scale),
					Position = UDim2.new(0.5, 0, 0, EmoteBubbleSizes.BubbleSize + EmoteBubbleSizes.TextPadding + expansionOffset),
				}
			end,

			springOptions = ANIMATION_SPRING_SETTINGS,
		}, {
			EmoteText = Roact.createElement("TextLabel", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Text = emoteText,
				TextColor3 = Constants.Colors.White,
				TextTransparency = self.props.offScreen == nil and 0 or 0.3,
				TextScaled = true,
				TextSize = 7,
				Font = Enum.Font.GothamBold,
			}),
		})
	})
end

function EmoteBubble:didUpdate(prevProps)
	if self.props.menuVisible and not prevProps.menuVisible and self.props.focused then
		-- bind actions when first opening the menu
		self:bindActions()
	elseif not self.props.menuVisible and prevProps.menu and self.props.focused then
		self:unbindActions()
	end

	if self.props.focused ~= prevProps.focused then
		if self.props.focused and self.props.menuVisible then
			-- bind actions when shifting focus while menu is open
			self:bindActions()
			-- shift scrolling frame so EmoteBubble is in view if it is partially offscreen when focused
			self:shiftScrollingFrame()
		else
			self:unbindActions()
		end
	end
end

function EmoteBubble:willUnmount()
	self:unbindActions()
	self.isMounted = false
end

local function mapStateToProps(state)
	return {
		guiInset = state.displayOptions.guiInset,
		menuVisible = state.displayOptions.menuVisible,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		playEmote = function(emoteName, slotNumber, assetId, onEmotePlay, onEmoteStop)
			return dispatch(PlayEmote(emoteName, slotNumber, assetId, onEmotePlay, onEmoteStop))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(EmoteBubble)