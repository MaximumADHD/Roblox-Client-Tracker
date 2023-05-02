local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local AppCommonLib = require(Packages.AppCommonLib)

local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local Constants = require(ReactNavigationExtend.Views.Constants)
local Signal = AppCommonLib.Signal
local TenFootUiScene = require(TenFootUiShell.Hooks.TenFootUiScene)

type ScreenKind = TenFootUiCommon.ScreenKind
type Signal = AppCommonLib.Signal
type Goal = ReactOtter.Goal

export type SwitchViewState = "Opened" | "Opening" | "Closing" | "Closed"

local SwitchViewState = {
	Opening = "Opening" :: "Opening",
	Opened = "Opened" :: "Opened",
	Closing = "Closing" :: "Closing",
	Closed = "Closed" :: "Closed",
}

export type XDirection = "ToLeft" | "ToRight"

local XDirection = {
	ToLeft = "ToLeft" :: "ToLeft",
	ToRight = "ToRight" :: "ToRight",
}

type ViewState = {
	animationState: SwitchViewState,
	movingDirection: XDirection?,
}

export type Config = {
	isActiveKey: boolean,
	index: number,
	screenKind: ScreenKind,
	setScreenPropsState: (any) -> (),
	adornee: Instance?,
	surfaceGui: Instance?,
}

export type XDirectionAnimationConfig = {
	visible: boolean,
	cframe: React.Binding<CFrame> | CFrame,
	groupTransparency: React.Binding<number> | number,
}

local function useXDirectionAnimation(config: Config): XDirectionAnimationConfig
	local isActiveKey = config.isActiveKey
	local index = config.index
	local screenKind: ScreenKind = config.screenKind
	local setScreenPropsState = config.setScreenPropsState
	local adornee = config.adornee
	local surfaceGui = config.surfaceGui

	local prevActiveKey: boolean, setPrevActiveKey = React.useState(false)
	local prevIndex: number, setPrevIndex = React.useState(1)
	local backgroundX: number, setBackgroundX = React.useState(0)

	local viewState: ViewState, setViewState = React.useState({
		animationState = SwitchViewState.Closed :: SwitchViewState,
	})

	local groupTransparencyChangedSignal: Signal = React.useMemo(function()
		return Signal.new()
	end, {})

	local closedSignal: Signal = React.useMemo(function()
		return Signal.new()
	end, {})

	React.useEffect(function()
		if adornee then
			setScreenPropsState(function(prev)
				local next = table.clone(prev)
				next.adorneeParent = adornee
				next.surfaceGuiParent = surfaceGui
				next.isVisible = viewState.animationState ~= SwitchViewState.Closed
				next.groupTransparencyChangedSignal = groupTransparencyChangedSignal
				next.closedSignal = closedSignal
				return next
			end)
		end
	end, { adornee, surfaceGui, viewState, groupTransparencyChangedSignal, closedSignal } :: { any })

	local resetBackgroundX = React.useCallback(function()
		local backgroundInstance = TenFootUiScene.getBackgroundInstance()
		if backgroundInstance then
			setBackgroundX((backgroundInstance :: PVInstance):GetPivot().Position.X)
		else
			warn("BackgroundInstance not exist.")
		end
	end, {})

	React.useEffect(function()
		-- Don't animate if there is no adornne
		if not adornee then
			return
		end

		if isActiveKey == prevActiveKey then
			setPrevIndex(index)
			return
		end

		local movingDirection: XDirection
		if index > prevIndex then
			movingDirection = XDirection.ToLeft
		elseif index < prevIndex then
			movingDirection = XDirection.ToRight
		end

		if not movingDirection and isActiveKey then
			setViewState({
				animationState = SwitchViewState.Opened,
			})
		elseif
			isActiveKey and viewState.animationState == SwitchViewState.Closed
			or viewState.animationState == SwitchViewState.Closing
		then
			resetBackgroundX()
			setViewState({
				animationState = SwitchViewState.Opening,
				movingDirection = movingDirection,
			})
		elseif
			not isActiveKey and viewState.animationState == SwitchViewState.Opened
			or viewState.animationState == SwitchViewState.Opening
		then
			setViewState({
				animationState = SwitchViewState.Closing,
				movingDirection = movingDirection,
			})
		end

		setPrevActiveKey(isActiveKey)
		setPrevIndex(index)
	end, { adornee, viewState, isActiveKey, prevActiveKey, index, prevIndex } :: { any })

	local onAnimationComplete = React.useCallback(function(value)
		if value == 1 and viewState.animationState == SwitchViewState.Opening then
			setViewState({
				animationState = SwitchViewState.Opened,
			})
		elseif value == 0 and viewState.animationState == SwitchViewState.Closing then
			setViewState({
				animationState = SwitchViewState.Closed,
			})
			closedSignal:fire()
		end
	end, { viewState.animationState, closedSignal } :: { any })

	local stepValue, updateStepValue = React.useBinding(0)

	local updateBackgroundScenePosition = React.useCallback(function(value)
		if viewState.animationState ~= SwitchViewState.Opening then
			return
		end

		if viewState.movingDirection == XDirection.ToLeft then
			TenFootUiScene.updateXPosition(backgroundX + value)
		else
			TenFootUiScene.updateXPosition(backgroundX - value)
		end
	end, { viewState, backgroundX } :: { any })

	local onStep = React.useCallback(function(value)
		updateStepValue(value)
		updateBackgroundScenePosition(value)
	end, { updateStepValue, updateBackgroundScenePosition } :: { any })

	local setGoal: (Goal) -> () = ReactOtter.useMotor(0, onStep, onAnimationComplete)

	React.useEffect(function()
		local goal: Goal
		if viewState.animationState == SwitchViewState.Opening then
			goal = ReactOtter.spring(1, Constants.X_DIRECTION_ANIMATION_SPRING_CONFIG)
		elseif viewState.animationState == SwitchViewState.Closing then
			goal = ReactOtter.spring(0, Constants.X_DIRECTION_ANIMATION_SPRING_CONFIG)
		elseif viewState.animationState == SwitchViewState.Opened then
			goal = ReactOtter.instant(1) -- reset motor
		else -- closed
			goal = ReactOtter.instant(0) -- reset motor
		end
		setGoal(goal)
	end, { viewState } :: { any })

	local calculateAnimationConfig = React.useCallback(function(screenWidth: number, centerX: number): (number, number)
		local startX, targetX

		if viewState.animationState == SwitchViewState.Opening then
			if viewState.movingDirection == XDirection.ToLeft then
				startX = centerX + screenWidth / 3
			else
				startX = centerX - screenWidth / 3
			end
			targetX = centerX
		elseif viewState.animationState == SwitchViewState.Closing then
			if viewState.movingDirection == XDirection.ToLeft then
				targetX = centerX - screenWidth / 3
			else
				targetX = centerX + screenWidth / 3
			end
			startX = centerX
		else
			startX = centerX
			targetX = centerX
			assert(false, "Should only calculateAdorneeCFrame when animating!!!")
		end
		return startX, targetX
	end, { screenKind, viewState } :: { any })

	local getScreenSizeAndCFrame = React.useCallback(function(): (Vector3, CFrame)
		if screenKind == "FullScreen" :: ScreenKind then
			return Constants.GetFullScreenDims()
		else
			return Constants.GetPageContentDims()
		end
	end, { screenKind })

	local getDefaultCFrame = React.useCallback(function(): CFrame
		local _, cframe = getScreenSizeAndCFrame()
		return cframe
	end, { getScreenSizeAndCFrame })

	local calculateAdorneeCFrame = React.useCallback(function(stepValue: number): CFrame
		local dims: Vector3, centerCframe: CFrame = getScreenSizeAndCFrame()
		local rotation = centerCframe - centerCframe.Position
		local centerX = centerCframe.Position.X
		local centerY = centerCframe.Position.Y
		local centerZ = centerCframe.Position.Z

		local startX, targetX = calculateAnimationConfig(dims.X, centerX)

		local step
		if viewState.animationState == SwitchViewState.Opening then
			step = stepValue
		elseif viewState.animationState == SwitchViewState.Closing then
			step = 1 - stepValue
		end
		local offsetX = (targetX - startX) * step

		return CFrame.new(startX, centerY, centerZ) * CFrame.new(offsetX, 0, 0) * rotation
	end, { viewState.animationState })

	local getGroupTransparency = React.useCallback(function(stepValue: number): number
		local groupTransparency = 0
		if
			viewState.animationState == SwitchViewState.Opening
			or viewState.animationState == SwitchViewState.Closing
		then
			groupTransparency = 1 - stepValue
			if groupTransparencyChangedSignal then
				groupTransparencyChangedSignal:fire(groupTransparency)
			end
		end

		return groupTransparency
	end, { viewState.animationState, groupTransparencyChangedSignal } :: { any })

	local willAnimate = adornee ~= nil and viewState.movingDirection ~= nil

	return {
		visible = if willAnimate then viewState.animationState ~= SwitchViewState.Closed else isActiveKey,
		cframe = if willAnimate then stepValue:map(calculateAdorneeCFrame) else getDefaultCFrame(),
		groupTransparency = if willAnimate then stepValue:map(getGroupTransparency) else 0,
	}
end

return useXDirectionAnimation
