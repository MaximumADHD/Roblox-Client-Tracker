local CorePackages = game:GetService("CorePackages")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local Motion = require(CorePackages.Packages.Motion)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)

-- Foundation's snackbar guideline exits over 150ms, which has no Time token.
local EXIT_DURATION_SECONDS = 0.15

export type SnackbarSlideMotion = {
	anchorPoint: React.Binding<Vector2>,
	position: React.Binding<UDim2>,
	enter: () -> (),
	exit: (onExited: () -> ()) -> (),
}

--[[
	Motion for a bottom-center snackbar, following Foundation's snackbar guideline. On
	mount it slides up from below the screen's bottom edge; `exit` slides it back down and
	calls `onExited` once it is off-screen. `enter` reverses an exit in progress, dropping
	its `onExited`; it leaves an entering or resting snackbar alone. With reduced motion,
	all moves are instant.

	Bind `anchorPoint` and `position` to the snackbar itself. A wrapper Frame without a
	zero `Size` keeps its 100px minimum and lifts the snackbar. The snackbar must sit
	in a ScreenGui that spans the full screen (`ScreenInsets.None`, `ClipToDeviceSafeArea`
	off), so the snackbar starts fully off-screen and the margin is measured from the
	physical bottom edge.

	`minBottomMargin` is the gap between the snackbar's bottom edge and the screen's bottom
	edge. It defaults to the guideline's 20px minimum viewport margin (`Padding.XLarge`).
	It grows to the device's bottom safe-area inset when that is larger, which keeps the
	snackbar clear of the home indicator and the console TV-safe area.
]]
local function useSnackbarSlideMotionFromBottom(minBottomMargin: number?): SnackbarSlideMotion
	local tokens = Foundation.Hooks.useTokens()
	local deviceInsets = Responsive.useDeviceInsets()
	local reducedMotion = React.useRef(UserGameSettings.ReducedMotion).current
	local bottomMargin = math.max(minBottomMargin or tokens.Padding.XLarge, deviceInsets.bottom)

	local hiddenState = React.useMemo(function()
		-- Top edge on the screen's bottom edge, so it's off-screen at any height.
		return Motion.createState({
			anchorPoint = Vector2.new(0.5, 0),
			position = UDim2.fromScale(0.5, 1),
		}, {
			default = {
				duration = if reducedMotion then 0 else EXIT_DURATION_SECONDS,
				easingStyle = tokens.Ease.StandardIn,
			},
		})
	end, { tokens :: unknown, reducedMotion })

	local shownState = React.useMemo(function()
		return Motion.createState({
			anchorPoint = Vector2.new(0.5, 1),
			position = UDim2.new(0.5, 0, 1, -bottomMargin),
		}, {
			default = {
				duration = if reducedMotion then 0 else tokens.Time.Time_200,
				easingStyle = tokens.Ease.StandardOut,
			},
		})
	end, { tokens :: unknown, reducedMotion, bottomMargin })

	local values, animate = Motion.useMotion(if reducedMotion then shownState else hiddenState)
	-- useMotion returns a new animate each render; keep it out of deps so a re-render
	-- doesn't restart the slide.
	local animateRef = React.useRef(animate)
	animateRef.current = animate
	local isExitingRef = React.useRef(false)
	-- Lets `enter` stay stable across safe-area changes.
	local shownStateRef = React.useRef(shownState)
	shownStateRef.current = shownState

	-- Also follows a safe-area change, such as a rotation, while shown. An exit in progress
	-- wins, or its onExited would never run.
	React.useEffect(function()
		if not isExitingRef.current then
			animateRef.current(shownState)
		end
	end, { shownState })

	local exit = React.useCallback(function(onExited: () -> ())
		isExitingRef.current = true
		animateRef.current(hiddenState, {
			onAnimationComplete = function(completed)
				if completed == true then
					onExited()
				end
			end,
		})
	end, { hiddenState })

	local enter = React.useCallback(function()
		if isExitingRef.current then
			isExitingRef.current = false
			-- Motion replaces each property's completion callback, so the exit's
			-- onExited never runs.
			animateRef.current(shownStateRef.current)
		end
	end, {})

	return {
		anchorPoint = values.anchorPoint,
		position = values.position,
		enter = enter,
		exit = exit,
	}
end

return useSnackbarSlideMotionFromBottom
