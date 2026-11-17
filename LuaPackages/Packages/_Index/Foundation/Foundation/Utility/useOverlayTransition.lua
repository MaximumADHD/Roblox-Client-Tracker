local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local useAnimatedBinding = ReactOtter.useAnimatedBinding

local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local useTokens = require(Foundation.Providers.Style.useTokens)

export type OverlayTransitionOptions = {
	-- Whether the overlay should be shown. Switching to false plays the exit transition before unmounting.
	isOpen: boolean,
	-- Called once the exit transition finishes.
	onExited: (() -> ())?,
}

export type OverlayTransition = {
	-- True while the overlay is open or still playing its exit transition. Render nothing when false.
	isMounted: boolean,
	-- True while entering or exiting. Apply GroupTransparency only then so settled content is not drawn through a CanvasGroup.
	isAnimating: boolean,
	-- 0 when fully hidden, 1 when fully shown.
	progress: React.Binding<number>,
}

local HIDDEN = 0
local SHOWN = 1

local function useOverlayTransition(options: OverlayTransitionOptions): OverlayTransition
	local tokens = useTokens()
	local reducedMotion = usePreferences().reducedMotion
	local isOpen = options.isOpen
	local onExited = options.onExited

	local isMounted, setIsMounted = React.useState(isOpen)
	-- Set whenever a new goal starts and cleared when one is reached. A goal replaced partway never completes, so
	-- comparing the target with the last reached value would miss an interrupted transition. Content mounted open
	-- starts animating, so its first frame already fades in.
	local isAnimating, setIsAnimating = React.useState(isOpen)
	local target = if isOpen then SHOWN else HIDDEN

	local progress, setProgressGoal = useAnimatedBinding(HIDDEN, function(value: number)
		setIsAnimating(false)
		if value == HIDDEN and not isOpen and isMounted then
			setIsMounted(false)
			if onExited then
				onExited()
			end
		end
	end)

	React.useEffect(function()
		if isOpen then
			setIsMounted(true)
		end

		if reducedMotion then
			setProgressGoal(Otter.instant(target) :: Otter.Goal<any>)
		else
			setIsAnimating(progress:getValue() ~= target)
			setProgressGoal(Otter.ease(target, {
				easingStyle = if isOpen then tokens.Ease.StandardOut else tokens.Ease.StandardIn,
				duration = if isOpen then tokens.Time.Time_300 else tokens.Time.Time_200,
			}))
		end
	end, { isOpen, target, reducedMotion, tokens, progress, setProgressGoal } :: { unknown })

	return {
		isMounted = isOpen or isMounted,
		isAnimating = isAnimating,
		progress = progress,
	}
end

return useOverlayTransition
