local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local RoactNavigation = require(Packages.RoactNavigation)

local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local RouteViewState = require(ReactNavigationExtend.Views.RouteViewState)
local Constants = require(ReactNavigationExtend.Views.Constants)
local Events = RoactNavigation.Events
local TenFootUiScene = require(TenFootUiShell.Hooks.TenFootUiScene)

type Goal = ReactOtter.Goal
type ViewState = RouteViewState.ViewState
type Descriptor = TenFootUiCommon.Descriptor

type EventState = "WillBlur" | "WillFocus" | "DidBlur" | "DidFocus" | "None"
local EventState = {
	WillBlur = "WillBlur" :: "WillBlur",
	WillFocus = "WillFocus" :: "WillFocus",
	DidBlur = "DidBlur" :: "DidBlur",
	DidFocus = "DidFocus" :: "DidFocus",
	None = "None" :: "None",
}

type Ref<T> = { current: T }

export type Config = {
	willAnimate: boolean,
	isScreenAboveOverlay: boolean,
	viewState: ViewState,
	setOpened: (any) -> (),
	setClosed: (any) -> (),
	descriptor: Descriptor,
	attachmentRef: Ref<Attachment?>,
}

local function useZDirectionAnimation(config: Config)
	local willAnimate = config.willAnimate
	local isScreenAboveOverlay = config.isScreenAboveOverlay
	local viewState = config.viewState
	local setOpened = config.setOpened
	local setClosed = config.setClosed
	local descriptor = config.descriptor
	local attachmentRef = config.attachmentRef

	local eventState: EventState, setEventState = React.useState(EventState.None :: EventState)
	local backgroundZ: number, setBackgroundZ = React.useState(-Constants.DEFAULT_BACKGROUND_DISTANCE_TO_CAMERA)

	local stepValue, updateStepValue = React.useBinding(0)

	local onAnimationComplete = React.useCallback(function(value)
		if value == 1 and viewState == "Opening" then
			setOpened()
		elseif value == 0 and viewState == "Closing" then
			setClosed()
		end
	end, { setOpened, setClosed, viewState } :: { any })

	local animate = React.useCallback(function(value)
		local attachment = attachmentRef.current

		if not attachment then
			return
		else
			local nextAdorneeZ
			local offset = Constants.DEFAULT_SCREEN_DISTANCE_TO_CAMERA * Constants.Z_DIRECTION_ZOOM_FACTOR
			if viewState == "Opening" then
				local startZ = offset
				local targetZ = 0
				nextAdorneeZ = startZ + (targetZ - startZ) * value

				local startBgZ = backgroundZ
				local targetBgZ = backgroundZ - offset
				local bgZOffset = (targetBgZ - startBgZ) * value
				TenFootUiScene.updateZPosition(startBgZ + bgZOffset)
			elseif viewState == "Closing" then
				local startZ = 0
				local targetZ = offset
				nextAdorneeZ = startZ + (targetZ - startZ) * (1 - value)

				local startBgZ = backgroundZ
				local targetBgZ = backgroundZ + offset
				local bgZOffset = (targetBgZ - startBgZ) * (1 - value)
				TenFootUiScene.updateZPosition(startBgZ + bgZOffset)
			elseif eventState == EventState.WillFocus then
				local startZ = -offset
				local targetZ = 0
				nextAdorneeZ = startZ + (targetZ - startZ) * value
			elseif eventState == EventState.WillBlur then
				local startZ = 0
				local targetZ = -offset
				nextAdorneeZ = startZ + (targetZ - startZ) * (1 - value)
			end
			attachment.Position = Vector3.new(attachment.Position.X, attachment.Position.Y, nextAdorneeZ)
		end
	end, { attachmentRef, viewState, eventState, backgroundZ } :: { any })

	local onStep = React.useCallback(function(value)
		if willAnimate then
			if not isScreenAboveOverlay or viewState ~= "Opened" then
				updateStepValue(value)
			end

			animate(value)
		end
	end, { willAnimate, isScreenAboveOverlay, viewState, updateStepValue, animate } :: { any })

	local setGoal: (Goal) -> () = ReactOtter.useMotor(0, onStep, onAnimationComplete)

	React.useEffect(function()
		if viewState ~= "Opened" then
			return
		end

		local navigation = descriptor.navigation

		local willFocusConn = navigation.addListener(Events.WillFocus, function(...)
			if eventState ~= EventState.WillFocus then
				setEventState(EventState.WillFocus)
			end
		end)

		local didFocusConn = navigation.addListener(Events.DidFocus, function(...)
			if eventState ~= EventState.DidFocus then
				setEventState(EventState.DidFocus)
			end
		end)

		local willBlurConn = navigation.addListener(Events.WillBlur, function(...)
			if eventState ~= EventState.WillBlur then
				setEventState(EventState.WillBlur)
			end
		end)

		local didBlurConn = navigation.addListener(Events.DidBlur, function(...)
			if eventState ~= EventState.DidBlur then
				setEventState(EventState.DidBlur)
			end
		end)

		return function()
			if willFocusConn and willFocusConn.remove then
				willFocusConn.remove()
			end
			if didFocusConn and didFocusConn.remove then
				didFocusConn.remove()
			end
			if willBlurConn and willBlurConn.remove then
				willBlurConn.remove()
			end
			if didBlurConn and didBlurConn.remove then
				didBlurConn.remove()
			end
		end
	end, { eventState, viewState, willAnimate, descriptor.navigation } :: { any })

	local resetBackgroundZ = React.useCallback(function()
		local backgroundInstance = TenFootUiScene.getBackgroundInstance()
		if backgroundInstance then
			setBackgroundZ((backgroundInstance :: PVInstance):GetPivot().Position.Z)
		else
			warn("BackgroundInstance not exist.")
		end
	end, {})

	React.useEffect(function()
		if not willAnimate then
			return
		end

		resetBackgroundZ()
		if viewState == "Opening" or eventState == EventState.WillFocus then
			setGoal(ReactOtter.spring(1, Constants.Z_DIRECTION_ANIMATION_SPRING_CONFIG))
		elseif viewState == "Closing" or eventState == EventState.WillBlur then
			setGoal(ReactOtter.spring(0, Constants.Z_DIRECTION_ANIMATION_SPRING_CONFIG))
		elseif eventState == EventState.DidBlur then
			-- don't reset to 0 if the screen above is an overlay
			if not isScreenAboveOverlay or viewState ~= "Opened" then
				setGoal(ReactOtter.instant(0))
			end
		else -- eventState == EventState.DidFocus or viewState == "Opened"
			setGoal(ReactOtter.instant(1))
		end
	end, { viewState, eventState, willAnimate, isScreenAboveOverlay } :: { any })

	return {
		groupTransparency = stepValue:map(function(value)
			return 1 - value
		end),
	}
end

return useZDirectionAnimation
