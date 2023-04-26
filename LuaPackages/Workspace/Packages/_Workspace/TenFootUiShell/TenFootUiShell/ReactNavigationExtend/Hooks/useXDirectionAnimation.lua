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
	isVisible: boolean,
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
	local isVisible = config.isVisible
	local index = config.index
	local screenKind: ScreenKind = config.screenKind
	local setScreenPropsState = config.setScreenPropsState
	local adornee = config.adornee
	local surfaceGui = config.surfaceGui

	local prevVisible, setPrevVisible = React.useState(false)
	local prevIndex, setPrevIndex = React.useState(1)

	local viewState: ViewState, setViewState = React.useState({
		animationState = SwitchViewState.Closed :: SwitchViewState,
	})

	local groupTransparencyChangedSignal: Signal = React.useMemo(function()
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
				return next
			end)
		end
	end, { adornee, surfaceGui, viewState, groupTransparencyChangedSignal } :: { any })

	React.useEffect(function()
		-- Don't animate if there is no adornne
		if not adornee then
			return
		end

		if isVisible == prevVisible then
			setPrevIndex(index)
			return
		end

		local movingDirection: XDirection
		if index > prevIndex then
			movingDirection = XDirection.ToLeft
		elseif index < prevIndex then
			movingDirection = XDirection.ToRight
		end

		if not movingDirection and isVisible then
			setViewState({
				animationState = SwitchViewState.Opened,
			})
		elseif
			isVisible and viewState.animationState == SwitchViewState.Closed
			or viewState.animationState == SwitchViewState.Closing
		then
			setViewState({
				animationState = SwitchViewState.Opening,
				movingDirection = movingDirection,
			})
		elseif
			not isVisible and viewState.animationState == SwitchViewState.Opened
			or viewState.animationState == SwitchViewState.Opening
		then
			setViewState({
				animationState = SwitchViewState.Closing,
				movingDirection = movingDirection,
			})
		end

		setPrevVisible(isVisible)
		setPrevIndex(index)
	end, { adornee, viewState, isVisible, prevVisible, index, prevIndex } :: { any })

	local onAnimationComplete = React.useCallback(function(value)
		if value == 1 and viewState.animationState == SwitchViewState.Opening then
			setViewState({
				animationState = SwitchViewState.Opened,
			})
		elseif value == 0 and viewState.animationState == SwitchViewState.Closing then
			setViewState({
				animationState = SwitchViewState.Closed,
			})
		end
	end, { viewState.animationState })

	local stepValue, updateStepValue = React.useBinding(0)

	local updateBackgroundScenePosition = React.useCallback(function(value)
		if viewState.animationState ~= SwitchViewState.Opening then
			return
		end

		local offsetVector
		if viewState.movingDirection == XDirection.ToLeft then
			offsetVector = Vector3.new((1 - value), 0, 0)
		else
			offsetVector = Vector3.new((value - 1), 0, 0)
		end
		TenFootUiScene.updateBackgroundScenePosition(offsetVector)
	end, { viewState })

	local onStep = React.useCallback(function(value)
		updateStepValue(value)
		updateBackgroundScenePosition(value)
	end)

	local setGoal: (Goal) -> () = ReactOtter.useMotor(0, onStep, onAnimationComplete)

	React.useEffect(function()
		local goal: Goal
		if viewState.animationState == SwitchViewState.Opening then
			goal = ReactOtter.spring(1, Constants.XDirectioAnimationSpringConfig)
		elseif viewState.animationState == SwitchViewState.Closing then
			goal = ReactOtter.spring(0, Constants.XDirectioAnimationSpringConfig)
		elseif viewState.animationState == SwitchViewState.Opened then
			goal = ReactOtter.instant(1) -- reset motor
		else -- closed
			goal = ReactOtter.instant(0) -- reset motor
		end
		setGoal(goal)
	end, { viewState })

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
	end, { screenKind })

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
	end, { viewState.animationState })

	local willAnimate = adornee ~= nil and viewState.movingDirection ~= nil

	return {
		visible = if willAnimate then viewState.animationState ~= SwitchViewState.Closed else isVisible,
		cframe = if willAnimate then stepValue:map(calculateAdorneeCFrame) else getDefaultCFrame(),
		groupTransparency = if willAnimate then stepValue:map(getGroupTransparency) else 0,
	}
end

return useXDirectionAnimation
