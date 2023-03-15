--!nonstrict
--[[

        -- |- CanvasPos x -| --
        |  |               |  |
        |  |               |  |
        |  |  FillingArea  |  |
        |  |               | ScrollingFrame
  PeekView |               |  |
 component |---------------|  | --
    height |  PeekHeader   |  |  |
        |  |---------------|  |  |
        |  |  Content ...  |  | ClipFrame
        |  |---------------|  |  |
        |  |BottomContainer|  |  |
        -- |---------------| -- --
           .               .
           .  ... Content  .
           .               .

  FillingArea:
    Input can penetrate this area

    --        |-------_-------| --
    |         |               |  |
    |         |               |  |
    |         |               | PeekView
  Full        |               | component
    |   --    |-------_-------| height
    |   |     |               |  |
    | Brief   |               |  |
    |   |     |               |  |
    |     --  |-------_-------|  |
    |      |  |               |  |
    | SpBrief |               |  |
    |      |  |               |  |
    --  --    |-------_-------| -- -- Closed
               -------_-------     -- Hidden

  isTouched:
    PeekView is under holding or swiping

  isInGoToState:
    PeekView is automatically going up or down to brief, full or close view
    This state can NOT be stopped by any touch
]]

local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local Focusable = RoactGamepad.Focusable
local RoactRodux = require(CorePackages.RoactRodux)
local FitChildren = require(script.Parent.FitChildren)
local PeekViewState = require(script.Parent.PeekViewState)
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local InputTypeConstants = require(CorePackages.Workspace.Packages.InputType).InputTypeConstants
local GamepadUtils = require(CorePackages.Workspace.Packages.AppCommonLib).Utils.GamepadUtils
local getInputGroup = require(CorePackages.Workspace.Packages.InputType).getInputGroup

local FeatureAPIScrollVelocity = game:GetEngineFeature("FeatureAPIScrollVelocity")
local GetFFlagPeekViewClipFramePositionFromBottom =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekViewClipFramePositionFromBottom
local GetFFlagPeekViewDeprecateFitChildren =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekViewDeprecateFitChildren

local useAutomaticSizeForPeekView = GetFFlagPeekViewDeprecateFitChildren()
	and game:GetEngineFeature("UseActualSizeToCalculateListMinSize")

local BACKGROUND_SLICE_CENTER = Rect.new(9, 9, 9, 9)
local DRAGGER_IMAGE = Images["icons/navigation/swipe"]

local PEEK_HEADER_HEIGHT = 25
local GO_TO_TRANSITION_TIME = 0.35
local TRANSITION_FUNC_CONSTANT = 0.5 * math.pi / (GO_TO_TRANSITION_TIME / 0.55)
local FULL_VIEW_HEIGHT = UDim.new(1, 0)
local SWIPE_VELOCITY_THRESHOLD = 500
local STICK_MAX_SPEED = 1000

local VT_Hidden = PeekViewState.Hidden
local VT_Closed = PeekViewState.Closed
local VT_SuperBrief = PeekViewState.SuperBrief
local VT_Brief = PeekViewState.Brief
local VT_Full = PeekViewState.Full
local VT_Extended = PeekViewState.Extended

local PeekView = Roact.PureComponent:extend("PeekView")

PeekView.defaultProps = {
	briefViewContentHeight = UDim.new(0.5, 0),
	bottomDockedContainerHeight = 0,
	bottomDockedContainerContent = nil,
	elasticBehavior = Enum.ElasticBehavior.Always,
	hidden = false,
	showDraggerInClosedState = true,
	showDropShadow = true,
	mountAsFullView = false,
	mountAnimation = true,
	canDragFullViewToBrief = false,
	withNewThemeProvider = true,
	viewStateChanged = nil, -- function(viewState, preViewState)
	briefToFullTransitionPercent = nil, -- function(percent)
	peekHeaderClose = true,
	peekHeaderPositionYChange = nil, --function(scrollY)
	isScrollingEnabled = true,
	superBriefViewContentHeight = nil,
	closeSignal = nil, -- optional signal to close the PeekView with animation
}

function PeekView:init()
	self.isMounted = false

	self.isTouched = false
	self.isInGoToState = false

	self.viewType = VT_Hidden
	self:setState({
		scrollableViewType = false,
		absoluteWindowSizeX = 0,
		absoluteWindowSizeY = 0,
		lastInputGroup = getInputGroup(UserInputService:GetLastInputType()),
	})

	self.containerFrameRef = Roact.createRef()
	self.clipFrameRef = Roact.createRef()
	self.shadowRef = Roact.createRef()
	self.fillingAreaRef = Roact.createRef()
	self.swipeScrollingFrameRef = Roact.createRef()
	self.bottomContainerRef = Roact.createRef()

	self.onAbsoluteWindowSizeChanged = function(rbx)
		if
			rbx.AbsoluteWindowSize.X ~= self.state.absoluteWindowSizeX
			or rbx.AbsoluteWindowSize.Y ~= self.state.absoluteWindowSizeY
		then
			self:setState({
				absoluteWindowSizeX = rbx.AbsoluteWindowSize.X,
				absoluteWindowSizeY = rbx.AbsoluteWindowSize.Y,
			})
		end
	end

	self.withStyle = function(func)
		if self.props.withNewThemeProvider then
			return UIBlox.Style.withStyle(func)
		end

		return func({
			Theme = {
				BackgroundDefault = {
					Color = Color3.fromRGB(35, 37, 39),
					Transparency = 0,
				},
				UIEmphasis = {
					Color = Color3.fromRGB(255, 255, 255),
					Transparency = 0.7, -- Alpha 0.3
				},
				DropShadow = {
					Color = Color3.fromRGB(0, 0, 0),
					Transparency = 0,
				},
			},
		})
	end

	self.inputBeganCallback = function(input)
		if not self.isMounted then
			return
		end

		if input.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		self.isTouched = true
	end

	self.inputEndedCallback = function(input)
		if not self.isMounted then
			return
		end

		if input.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		self.isTouched = false
		self.checkGoTo()
	end

	self.getViewSize = function(viewType)
		if viewType == VT_Hidden then
			return UDim.new(0, 0)
		elseif viewType == VT_Closed then
			if self.props.showDraggerInClosedState then
				return UDim.new(0, PEEK_HEADER_HEIGHT)
			else
				return UDim.new(0, 0)
			end
		elseif viewType == VT_SuperBrief then
			if self.props.superBriefViewContentHeight then
				local superBriefViewContentHeight = self.props.superBriefViewContentHeight
				return UDim.new(
					superBriefViewContentHeight.Scale,
					superBriefViewContentHeight.Offset + PEEK_HEADER_HEIGHT
				)
			else
				return nil
			end
		elseif viewType == VT_Brief then
			local briefViewContentHeight = self.props.briefViewContentHeight
			return UDim.new(briefViewContentHeight.Scale, briefViewContentHeight.Offset + PEEK_HEADER_HEIGHT)
		elseif viewType == VT_Full then
			return FULL_VIEW_HEIGHT
		end

		return nil
	end

	self.reconcileRbxInstances = function()
		local swipeScrollingFrame = self.swipeScrollingFrameRef.current
		local scrollingFrameCanvasY = swipeScrollingFrame and swipeScrollingFrame.CanvasPosition.Y or 0

		local containerFrame = self.containerFrameRef.current
		local clipFrame = self.clipFrameRef.current
		local shadow = self.shadowRef.current
		local fillingArea = self.fillingAreaRef.current

		local width = containerFrame.AbsoluteSize.X
		local height = containerFrame.AbsoluteSize.Y

		clipFrame.Size = UDim2.new(0, width, 0, scrollingFrameCanvasY)
		shadow.Size = UDim2.new(0, width, 0, 36)

		if GetFFlagPeekViewClipFramePositionFromBottom() then
			clipFrame.Position = UDim2.new(0, 0, 1, -scrollingFrameCanvasY)
			shadow.Position = UDim2.new(0, 0, 1, -scrollingFrameCanvasY - 30)
		else
			clipFrame.Position = UDim2.new(0, 0, 0, height - scrollingFrameCanvasY)
			shadow.Position = UDim2.new(0, 0, 0, height - scrollingFrameCanvasY - 30)
		end

		swipeScrollingFrame.Size = UDim2.new(0, width, 0, height)
		swipeScrollingFrame.Position = UDim2.new(0, 0, 0, -(height - scrollingFrameCanvasY))

		fillingArea.Size = UDim2.new(0, width, 0, height)

		local bottomContainer = self.bottomContainerRef.current
		if bottomContainer then
			local bottomDockedContainerHeight = self.props.bottomDockedContainerHeight
			if clipFrame.AbsoluteSize.Y > PEEK_HEADER_HEIGHT + bottomDockedContainerHeight then
				bottomContainer.Active = true
				bottomContainer.Position = UDim2.new(0, 0, 1, -bottomDockedContainerHeight)
			else
				bottomContainer.Active = false
				bottomContainer.Position = UDim2.new(0, 0, 1, -clipFrame.AbsoluteSize.Y + PEEK_HEADER_HEIGHT)
			end
		end

		self.transitionCallbacks()
	end

	self.updateSwipeScrollingFrame = function()
		local viewSize = self.getViewSize(self.viewType)

		-- Ensure refs are valid before access
		local scrollingFrameRefValid = self.containerFrameRef.current and self.swipeScrollingFrameRef.current

		if viewSize and scrollingFrameRefValid then
			local containerFrame = self.containerFrameRef.current
			local containerFrameHeight = containerFrame.AbsoluteSize.Y
			local swipeScrollingFrame = self.swipeScrollingFrameRef.current
			local goToPosY = containerFrameHeight * viewSize.Scale + viewSize.Offset
			if swipeScrollingFrame.CanvasPosition.Y ~= goToPosY then
				swipeScrollingFrame.CanvasPosition = Vector2.new(0, goToPosY)
				if self.props.peekHeaderPositionYChange then
					self.props.peekHeaderPositionYChange(goToPosY)
				end
			end
		end
	end

	self.onContainerFrameAbsoluteSizeChanged = function()
		if not self.isMounted then
			return
		end

		self.reconcileRbxInstances()
		self.updateSwipeScrollingFrame()
	end

	self.onSwipeScrollingFrameCanvasPositionChanged = function()
		if not self.isMounted then
			return
		end
		-- Round scrollingFrameCanvasY to an integer to prevent PeekHeader & BottomContainer jittering
		local swipeScrollingFrame = self.swipeScrollingFrameRef.current
		local scrollingFrameCanvasY = swipeScrollingFrame.CanvasPosition.Y
		if scrollingFrameCanvasY ~= math.floor(scrollingFrameCanvasY) then
			swipeScrollingFrame.CanvasPosition = Vector2.new(0, math.floor(scrollingFrameCanvasY + 0.5))
			if self.props.peekHeaderPositionYChange then
				self.props.peekHeaderPositionYChange(scrollingFrameCanvasY)
			end
			return
		end
		self.reconcileRbxInstances()
		if self.state.lastInputGroup ~= InputTypeConstants.Gamepad then
			--[[
				Avoid checkGoTo here if using gamepad navigation as to not clobber swipe scrolling
				frame CanvasPosition with RunService values when attempting to auto-scroll
			--]]
			self.checkGoTo()
		end
	end

	self.getBriefViewY = function()
		local containerFrameHeight = self.containerFrameRef.current.AbsoluteSize.Y
		local bfvContentHeight = self.props.briefViewContentHeight
		return (containerFrameHeight * bfvContentHeight.Scale + bfvContentHeight.Offset + PEEK_HEADER_HEIGHT)
	end

	self.getSuperBriefViewY = function()
		if not self.props.superBriefViewContentHeight or not self.containerFrameRef:getValue() then
			return nil
		end

		local containerFrameHeight = self.containerFrameRef:getValue().AbsoluteSize.Y
		local sbfvContentHeight = self.props.superBriefViewContentHeight
		return (containerFrameHeight * sbfvContentHeight.Scale + sbfvContentHeight.Offset + PEEK_HEADER_HEIGHT)
	end

	self.getFullViewY = function()
		local containerFrameHeight = self.containerFrameRef.current.AbsoluteSize.Y
		return (containerFrameHeight * FULL_VIEW_HEIGHT.Scale + FULL_VIEW_HEIGHT.Offset)
	end

	self.transitionCallbacks = function()
		local briefToFullTransitionPercent = self.props.briefToFullTransitionPercent
		if briefToFullTransitionPercent then
			local swipeScrollingFrame = self.swipeScrollingFrameRef.current
			local curY = swipeScrollingFrame.CanvasPosition.Y
			local briefViewY = self.getBriefViewY()
			local fullViewY = self.getFullViewY()
			local briefToFullDistance = fullViewY - briefViewY
			local percent = 0
			if curY > briefViewY and curY <= fullViewY then
				percent = (curY - briefViewY) / briefToFullDistance
			elseif curY > fullViewY then
				percent = 1
			end
			briefToFullTransitionPercent(percent)
		end
	end

	-- User has dragged the peek view up or down and released.  We want to
	-- spring into the appropriate view state based on their actions.  Factors include:
	--   * Where exactly did they drag to, like how far up/down is the peek view.
	--   * Were they dragging up or down to get to where they are.
	--   * Was it a 'hard/fast' swipe (indicating we may want to skip a few view states
	--     and jump all the way to fully opened or fully closed.
	--
	-- The heart of the matter is currently in a switch-like statement around 'curY', the
	-- current height we've dragged to.  We compare curY to the height associated with
	-- each view state to break things down into a series of cases: if user has dragged
	-- between the height for view state A and view state B, do blah.
	self.checkGoTo = function()
		if self.isInGoToState then
			return
		end

		if self.isTouched then
			return
		end

		local swipeScrollingFrame = self.swipeScrollingFrameRef.current
		if swipeScrollingFrame and self.state.absoluteWindowSizeX == 0 and self.state.absoluteWindowSizeY == 0 then
			return
		end

		local briefViewY = self.getBriefViewY()
		local superBriefViewY = self.getSuperBriefViewY()
		local fullViewY = self.getFullViewY()

		if briefViewY > fullViewY then
			return
		end

		if superBriefViewY and superBriefViewY > briefViewY then
			return
		end

		--[[
			During initial layout, the canvas size may be invalid.
			It should be at least as tall as the FillingArea (window height) +
			peek header height + bottom container height.
		]]
		local minValidCanvasSize = swipeScrollingFrame.AbsoluteWindowSize.Y
			+ PEEK_HEADER_HEIGHT
			+ self.props.bottomDockedContainerHeight

		local canvasY = useAutomaticSizeForPeekView and swipeScrollingFrame.AbsoluteCanvasSize.Y
			or swipeScrollingFrame.CanvasSize.Y.Offset
		if canvasY < minValidCanvasSize then
			return
		end

		local inertialVelocityY
		if FeatureAPIScrollVelocity then
			inertialVelocityY = swipeScrollingFrame.ScrollVelocity.Y
		else
			inertialVelocityY = swipeScrollingFrame:GetSampledInertialVelocity().Y
		end
		local inertiaUp = inertialVelocityY < 0
		local inertiaDown = inertialVelocityY > 0
		local curY = swipeScrollingFrame.CanvasPosition.Y

		-- No action needed, we are already in the correct state.
		local isInBriefView = self.viewType == PeekViewState.Brief and curY == briefViewY
		local isInFullView = self.viewType == PeekViewState.Full and curY == fullViewY
		if (isInBriefView or isInFullView) and inertialVelocityY == 0 then
			return
		end

		if curY > fullViewY then
			self:handleCurYAboveFullViewY(inertiaUp)
		elseif curY > briefViewY and curY <= fullViewY then
			self:handleCurYFromBriefToFull(curY, inertialVelocityY, inertiaUp, inertiaDown)
		else
			if superBriefViewY then
				if curY > superBriefViewY and curY <= briefViewY then
					self:handleCurYFromSuperBriefToBrief(
						curY,
						superBriefViewY,
						inertialVelocityY,
						inertiaUp,
						inertiaDown
					)
				elseif curY <= superBriefViewY then
					self:handleCurYFromClosedToSuperBrief(
						curY,
						superBriefViewY,
						inertialVelocityY,
						inertiaDown,
						inertiaUp
					)
				end
			else
				if curY <= briefViewY then
					self:handleCurYFromClosedToBrief(curY, inertiaDown, inertiaUp)
				end
			end
		end
	end

	self.onPeekHeaderActivated = function()
		if self.viewType == VT_Closed then
			self.goTo(VT_Brief)
		elseif self.viewType == VT_Brief then
			self.goTo(VT_Full)
		elseif self.viewType == VT_SuperBrief then
			self.goTo(VT_Brief)
		elseif self.viewType == VT_Full then
			if self.props.peekHeaderClose then
				self.goTo(VT_Closed)
			else
				self.goTo(VT_Brief)
			end
		end
	end

	self.setViewType = function(viewType)
		-- clear goto state
		if self.goToAnimationConnection then
			self.goToAnimationConnection:disconnect()
			self.goToAnimationConnection = nil
		end
		self.isInGoToState = false
		self.clipFrameRef.current.Active = false

		-- fire viewStateChanged
		local preViewType = self.viewType
		if preViewType ~= viewType then
			self.viewType = viewType
			local scrollableViewType = self.viewType == VT_Extended or self.viewType == VT_Full
			self:setState({
				scrollableViewType = scrollableViewType,
			})

			local viewStateChanged = self.props.viewStateChanged
			if viewStateChanged then
				viewStateChanged(viewType, preViewType)
			end
		end

		-- update swipeScrollingFrame
		self.updateSwipeScrollingFrame()
	end

	self.goTo = function(viewType, animation)
		if ArgCheck.isEqual(self.isInGoToState, false, "self.isInGoToState") then
			return
		end

		if ArgCheck.isEqual(self.goToAnimationConnection, nil, "self.goToAnimationConnection") then
			return
		end

		self.isInGoToState = true
		if FeatureAPIScrollVelocity then
			self.swipeScrollingFrameRef:getValue().ScrollVelocity = Vector2.new(0, 0)
		else
			self.swipeScrollingFrameRef.current:ClearInertialScrolling()
		end
		self.clipFrameRef.current.Active = true

		if animation == false then
			self.setViewType(viewType)
			if viewType == VT_Full then
				self:adjustScrollingFramePosition()
			end
		else
			local startTime = tick()

			self.goToAnimationConnection = RunService.RenderStepped:Connect(function()
				if not self.isMounted then
					return
				end

				if FeatureAPIScrollVelocity then
					self.swipeScrollingFrameRef:getValue().ScrollVelocity = Vector2.new(0, 0)
				else
					self.swipeScrollingFrameRef.current:ClearInertialScrolling()
				end

				local swipeScrollingFrame = self.swipeScrollingFrameRef.current
				local containerFrameHeight = self.containerFrameRef.current.AbsoluteSize.Y
				local viewSize = ArgCheck.isNotNil(self.getViewSize(viewType), "self.goTo.viewSize")
				local goToPosY = containerFrameHeight * viewSize.Scale + viewSize.Offset
				local timeElapsed = tick() - startTime

				-- On Complete
				if timeElapsed >= GO_TO_TRANSITION_TIME then
					self.setViewType(viewType)
					if viewType == VT_Full then
						self:adjustScrollingFramePosition()
					end
					return
				end

				local startPosY = swipeScrollingFrame.CanvasPosition.Y
				local distance = goToPosY - startPosY
				swipeScrollingFrame.CanvasPosition =
					Vector2.new(0, startPosY + distance * math.sin(timeElapsed * TRANSITION_FUNC_CONSTANT))
			end)
		end
	end

	self.selectedCoreObjectConnection = GuiService:GetPropertyChangedSignal("SelectedCoreObject"):connect(function()
		if self.swipeScrollingFrameRef.current and self.state.lastInputGroup == InputTypeConstants.Gamepad then
			self:adjustScrollingFramePosition()
		end
	end)
end

--[[
	A family of helper functions for "checkGoTo".
	Prior to calling we calculated curY, measured as a distance from the top of the screen.
	It's some notion of how far the top of the peek view is from top of screen.
	Now we are deciding what viewstate we should go to based on this drag state.
	Other factors that may influence this choice:
	  * inertia up/down (do we want to go to drag state above or below curY)
	  * inertialVelocity (is this a 'very hard' swipe, indicating we want to skip some view states to
	    go full-opened or full-closed)
]]
function PeekView:handleCurYAboveFullViewY(inertiaUp)
	if self.viewType ~= VT_Full and self.viewType ~= VT_Extended then
		if inertiaUp then
			self.goTo(VT_Full)
		else
			self.setViewType(VT_Extended)
		end
	elseif self.viewType == VT_Full then
		self.setViewType(VT_Extended)
	end
end

function PeekView:handleCurYFromBriefToFull(curY, inertialVelocityY, inertiaUp, inertiaDown)
	local canDragFullViewToBrief = self.props.canDragFullViewToBrief
	local swipeScrollingFrame = self.swipeScrollingFrameRef:getValue()
	local briefViewY = self.getBriefViewY()
	local fullViewY = self.getFullViewY()
	local briefToFullDistance = fullViewY - briefViewY
	if self.viewType == VT_Full then
		-- The canvas content may not be large enough to extend fully,
		-- so do not close the PeekView if curY is at its max value
		-- (allow delta of 1 to account for rounding)
		local maxY = swipeScrollingFrame.AbsoluteCanvasSize.Y - swipeScrollingFrame.AbsoluteWindowSize.Y
		if curY > maxY - 1 then
			return
		end

		if inertiaDown or curY < briefViewY + briefToFullDistance * 0.8 then
			local isSwipe = inertiaDown and inertialVelocityY > SWIPE_VELOCITY_THRESHOLD
			if canDragFullViewToBrief and not isSwipe then
				self.goTo(VT_Brief)
			else
				self.goTo(VT_Closed)
			end
		else
			self.goTo(VT_Full)
		end
	elseif self.viewType == VT_Extended then
		if not inertiaDown or curY < briefViewY + briefToFullDistance * 0.8 or inertialVelocityY > -1 then
			self.goTo(VT_Full)
		end
	else
		if inertiaUp or curY > briefViewY + briefToFullDistance * 0.2 then
			self.goTo(VT_Full)
		else
			self.goTo(VT_Brief)
		end
	end
end

function PeekView:handleCurYFromSuperBriefToBrief(curY, superBriefViewY, inertialVelocityY, inertiaUp, inertiaDown)
	local canDragFullViewToBrief = self.props.canDragFullViewToBrief
	local fullViewY = self.getFullViewY()
	local superBriefToFullDistance = fullViewY - superBriefViewY
	if self.viewType == VT_Full then
		if inertiaDown or curY < superBriefViewY + superBriefToFullDistance * 0.8 then
			local isSwipe = inertiaDown and inertialVelocityY > SWIPE_VELOCITY_THRESHOLD
			if canDragFullViewToBrief and not isSwipe then
				self.goTo(VT_SuperBrief)
			else
				self.goTo(VT_Closed)
			end
		else
			self.goTo(VT_Brief)
		end
	elseif self.viewType == VT_Extended then
		if not inertiaDown or curY < superBriefViewY + superBriefToFullDistance * 0.8 or inertialVelocityY > -1 then
			self.goTo(VT_Brief)
		end
	else
		if inertiaUp or curY > superBriefViewY + superBriefToFullDistance * 0.2 then
			self.goTo(VT_Brief)
		else
			local isSwipe = inertiaDown and inertialVelocityY > SWIPE_VELOCITY_THRESHOLD
			if canDragFullViewToBrief and not isSwipe then
				self.goTo(VT_SuperBrief)
			else
				self.goTo(VT_Closed)
			end
		end
	end
end

function PeekView:handleCurYFromClosedToSuperBrief(curY, superBriefViewY, inertialVelocityY, inertiaDown, inertiaUp)
	local closedToSuperBriefDistance = superBriefViewY - 0
	if self.viewType == VT_SuperBrief then
		if inertiaDown or curY < closedToSuperBriefDistance * 0.8 then
			self.goTo(VT_Closed)
		else
			self.goTo(VT_SuperBrief)
		end
	else
		local isSwipe = inertiaDown and inertialVelocityY > SWIPE_VELOCITY_THRESHOLD
		if not isSwipe and (inertiaUp or curY > closedToSuperBriefDistance * 0.8) then
			self.goTo(VT_SuperBrief)
		else
			self.goTo(VT_Closed)
		end
	end
end

function PeekView:handleCurYFromClosedToBrief(curY, inertiaDown, inertiaUp)
	local briefViewY = self.getBriefViewY()
	local closedToBriefDistance = briefViewY - 0
	if self.viewType == VT_Brief then
		if inertiaDown or curY < 0 + closedToBriefDistance * 0.8 then
			self.goTo(VT_Closed)
		else
			self.goTo(VT_Brief)
		end
	else
		if inertiaUp or curY > 0 + closedToBriefDistance * 0.2 then
			self.goTo(VT_Brief)
		else
			self.goTo(VT_Closed)
		end
	end
end

-- Check if the scrolling frame position needs to be adjusted after changing focused component and engine auto-scroll
function PeekView:adjustScrollingFramePosition()
	local currentSelection = GuiService.SelectedCoreObject
	if
		not currentSelection
		or not self.props.contentFrameRef
		or not currentSelection:IsDescendantOf(self.props.contentFrameRef.current)
	then
		return
	end

	local swipeScrollingFrame = self.swipeScrollingFrameRef.current
	if self.viewType ~= VT_Extended and self.viewType ~= VT_Full then
		--[[
			When PeekView is mounted as Hidden, engine auto-scroll will auto-scroll to the focussed components
			in the PeekView. This ensures the mount animation from hidden to brief view will work as expected
		]]
		local viewSize =
			ArgCheck.isNotNil(self.getViewSize(self.viewType), "self.adjustScrollingFramePosition.viewSize")
		swipeScrollingFrame.CanvasPosition = Vector2.new(swipeScrollingFrame.CanvasPosition.X, viewSize.Offset)
	else
		local currentPosition = currentSelection.AbsolutePosition.Y - self.props.topBarHeight
		local currentSize = currentSelection.AbsoluteSize.Y
		local scrollingFrameYBottom = swipeScrollingFrame.AbsoluteWindowSize.Y
		local bottomDistance = scrollingFrameYBottom - (currentPosition + currentSize)
		local newCanvasPositionY = swipeScrollingFrame.CanvasPosition.Y
		if bottomDistance < self.props.bottomDockedContainerHeight then
			--if the focused component is covered by the bottom docked container, adjust position so it is not covered
			newCanvasPositionY = newCanvasPositionY + self.props.bottomDockedContainerHeight - bottomDistance
		elseif
			currentPosition + currentSize + (newCanvasPositionY - scrollingFrameYBottom)
			< scrollingFrameYBottom - self.props.bottomDockedContainerHeight
		then
			--[[
				if the focused component can be visible when the PeekView is in FullView,
				adjust position to FullView (rather than generically Extended)
			]]
			newCanvasPositionY = scrollingFrameYBottom
		end
		local canvasY = useAutomaticSizeForPeekView and swipeScrollingFrame.AbsoluteCanvasSize.Y
			or swipeScrollingFrame.CanvasSize.Y.Offset
		newCanvasPositionY =
			math.max(0, math.min(newCanvasPositionY, canvasY - swipeScrollingFrame.AbsoluteWindowSize.Y))
		swipeScrollingFrame.CanvasPosition = Vector2.new(swipeScrollingFrame.CanvasPosition.X, newCanvasPositionY)
	end
end

function PeekView:handleThumbstickInput(inputObject, deltaTime)
	local stickInput = inputObject.Position
	local swipeScrollingFrame = self.swipeScrollingFrameRef:getValue()
	if self.containerFrameRef:getValue() and swipeScrollingFrame then
		local yPos = swipeScrollingFrame.CanvasPosition.Y
		local stickVector = GamepadUtils.normalizeStickByDeadzone(stickInput)
		local newYPos = yPos + deltaTime * -stickVector.Y * STICK_MAX_SPEED
		if newYPos > self.getFullViewY() then
			swipeScrollingFrame.CanvasPosition = Vector2.new(0, newYPos)
		end
	end
end

function PeekView:render()
	local children = self.props[Roact.Children]

	local bottomDockedContainerHeight = self.props.bottomDockedContainerHeight
	local bottomDockedContainerContent = self.props.bottomDockedContainerContent
	local includeScrollBinding = self.props.thumbstickScrollEnabled and self.state.scrollableViewType

	return self.withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = false,
			[Roact.Ref] = self.containerFrameRef,
			[Roact.Change.AbsoluteSize] = self.onContainerFrameAbsoluteSizeChanged,
		}, {
			DropShadowBackground = Roact.createElement("Frame", {
				ZIndex = 0,
				Visible = self.props.showDropShadow,
				[Roact.Ref] = self.shadowRef,
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Rotation = 90,
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, style.Theme.DropShadow.Color),
						ColorSequenceKeypoint.new(1, style.Theme.DropShadow.Color),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1.0),
						NumberSequenceKeypoint.new(1, 0.7),
					}),
				}),
			}),
			ClipFrame = Roact.createElement(Focusable.Frame, {
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				[Roact.Ref] = self.clipFrameRef,
				restorePreviousChildFocus = true,
				inputBindings = includeScrollBinding and {
					ScrollPeekView = RoactGamepad.Input.onStep(
						Enum.KeyCode.Thumbstick2,
						function(inputObject, deltaTime)
							self:handleThumbstickInput(inputObject, deltaTime)
						end
					),
				} or nil,
			}, {
				SwipeScrollingFrame = Roact.createElement(
					if useAutomaticSizeForPeekView then "ScrollingFrame" else FitChildren.FitScrollingFrame,
					{
						AutomaticCanvasSize = if useAutomaticSizeForPeekView then Enum.AutomaticSize.Y else nil,
						CanvasSize = if useAutomaticSizeForPeekView then UDim2.fromScale(1, 0) else nil,
						Active = true,
						BackgroundTransparency = 1,
						ZIndex = 1,
						BorderSizePixel = 0,
						fitFields = if useAutomaticSizeForPeekView
							then nil
							else {
								CanvasSize = FitChildren.FitAxis.Height,
							},
						ScrollBarThickness = 0,
						ClipsDescendants = false,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						ElasticBehavior = self.props.elasticBehavior,
						ScrollingEnabled = self.props.isScrollingEnabled,
						[Roact.Ref] = self.swipeScrollingFrameRef,
						[Roact.Change.CanvasPosition] = self.onSwipeScrollingFrameCanvasPositionChanged,
						[Roact.Change.AbsoluteWindowSize] = self.onAbsoluteWindowSizeChanged,
					},
					{
						UIListLayout = Roact.createElement("UIListLayout", {
							Padding = UDim.new(0, 0),
							SortOrder = Enum.SortOrder.LayoutOrder,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							VerticalAlignment = Enum.VerticalAlignment.Top,
						}),
						FillingArea = Roact.createElement("Frame", {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							Active = false,
							[Roact.Ref] = self.fillingAreaRef,
						}),
						BackgroundFrame = Roact.createElement("Frame", {
							LayoutOrder = 2,
							ZIndex = 1,
							-- In order not to affect SwipeScrollingFrame CanvasSize
							Size = UDim2.new(1, 0, 0, 0),
							Active = false,
						}, {
							BackgroundImage = Roact.createElement(ImageSetLabel, {
								Size = UDim2.new(1, 0, 0, 9999),
								BackgroundTransparency = 0,
								BorderSizePixel = 0,
								ScaleType = Enum.ScaleType.Slice,
								SliceCenter = BACKGROUND_SLICE_CENTER,
								BackgroundColor3 = style.Theme.BackgroundDefault.Color,
								Active = false,
							}),
						}),
						PeekHeader = Roact.createElement("TextButton", {
							Text = "",
							LayoutOrder = 3,
							ZIndex = 2,
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 0, PEEK_HEADER_HEIGHT),
							[Roact.Event.Activated] = self.onPeekHeaderActivated,
						}, {
							Dragger = Roact.createElement(ImageSetLabel, {
								BackgroundTransparency = 1,
								Size = UDim2.new(0, 36, 0, 36),
								AnchorPoint = Vector2.new(0.5, 0.5),
								Position = UDim2.new(0.5, 0, 0.5, 0),
								Image = DRAGGER_IMAGE,
								ImageColor3 = style.Theme.UIEmphasis.Color,
								ImageTransparency = style.Theme.UIEmphasis.Transparency,
								Active = false,
							}),
						}),
						ContentFrame = Roact.createElement(Focusable.Frame, {
							LayoutOrder = 4,
							ZIndex = 2,
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							ClipsDescendants = false,
							Size = UDim2.new(1, 0, 0, 0),
							AutomaticSize = Enum.AutomaticSize.Y,
							[Roact.Ref] = self.props.contentFrameRef,
							restorePreviousChildFocus = true,
							onFocusGained = function()
								-- if this component gains focus by using NextSelectionUp from the ActionBar,
								-- we want to expand the PeekView
								if self.viewType == VT_Brief and self.props.peekViewState ~= VT_Full then
									self.goTo(VT_Full)
								end
							end,
						}, children),
						BottomContainerPlaceHolder = bottomDockedContainerHeight > 0
							and Roact.createElement("Frame", {
								LayoutOrder = 5,
								BackgroundTransparency = 1,
								Size = UDim2.new(1, 0, 0, bottomDockedContainerHeight),
								Active = false,
							}),
					}
				),
				BottomContainer = bottomDockedContainerHeight > 0 and Roact.createElement("Frame", {
					Active = true,
					ZIndex = 2,
					Size = UDim2.new(1, 0, 0, bottomDockedContainerHeight),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.bottomContainerRef,
				}, bottomDockedContainerContent),
			}),
			InputBegan = Roact.createElement(ExternalEventConnection, {
				event = UserInputService.InputBegan,
				callback = self.inputBeganCallback,
			}),
			InputEnded = Roact.createElement(ExternalEventConnection, {
				event = UserInputService.InputEnded,
				callback = self.inputEndedCallback,
			}),
		})
	end)
end

function PeekView:didMount()
	self.isMounted = true

	if self.props.closeSignal then
		self.closeSignalConnection = self.props.closeSignal:connect(function()
			self.goTo(VT_Closed, true)
		end)
	end

	local hidden = self.props.hidden
	local mountAsFullView = self.props.mountAsFullView
	local mountAnimation = self.props.mountAnimation

	if not hidden then
		if mountAsFullView then
			self.goTo(VT_Full, mountAnimation)
		else
			self.goTo(VT_Brief, mountAnimation)
		end
	end

	self:setState({ lastInputGroup = getInputGroup(UserInputService:GetLastInputType()) })
	UserInputService.LastInputTypeChanged:Connect(function(lastInputType)
		self:setState({ lastInputGroup = getInputGroup(lastInputType) })
	end)
end

function PeekView:isAnimating()
	return self.goToAnimationConnection ~= nil
end

function PeekView:didUpdate(prevProps, prevState)
	if
		prevState.absoluteWindowSizeX ~= self.state.absoluteWindowSizeX
		or prevState.absoluteWindowSizeY ~= self.state.absoluteWindowSizeY
	then
		self.reconcileRbxInstances()
		-- Do not update the scrolling frame canvas position if it is being animated
		-- (this will cause the animation to visibly reset).
		-- updateSwipeScrollingFrame() will be called when the animation finishes.
		if not self:isAnimating() then
			self.updateSwipeScrollingFrame()
		end
	end

	if prevProps.bottomDockedContainerHeight ~= self.props.bottomDockedContainerHeight then
		self.onContainerFrameAbsoluteSizeChanged()
	end

	if prevProps.hidden == false and self.props.hidden == true then
		self.goTo(VT_Hidden)
	elseif prevProps.hidden == true and self.props.hidden == false then
		self.goTo(VT_Brief)
	end

	-- allow use of prop to be passed to move the PeekView (ex: useful for input bindings in ResultsList)
	local peekViewState = self.props.peekViewState
	if
		peekViewState ~= prevProps.peekViewState
		and self.viewType == prevProps.peekViewState
		and peekViewState ~= VT_Extended
	then
		self.goTo(self.props.peekViewState)
	end
end

function PeekView:willUnmount()
	self.isMounted = false

	if self.closeSignalConnection then
		self.closeSignalConnection:disconnect()
		self.closeSignalConnection = nil
	end

	if self.goToAnimationConnection then
		self.goToAnimationConnection:disconnect()
		self.goToAnimationConnection = nil
	end

	if self.selectedCoreObjectConnection then
		self.selectedCoreObjectConnection:disconnect()
		self.selectedCoreObjectConnection = nil
	end
end

local function mapStateToProps(state, props)
	return {
		topBarHeight = state.TopBar and state.TopBar.topBarHeight or 0,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(PeekView)
