local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Otter = require(Packages.Otter)
local React = require(Packages.React)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

export type SetGoal = (goal: typeof(Otter.instant(0)) | typeof(Otter.ease(0))) -> ()

export type SetDrag = (progress: number?) -> ()

-- `drag` is panel progress while a pointer is held. While non-nil it overrides the animated panel and backdrop values.
export type DrawerMotion = {
	panelProgress: React.Binding<number>,
	backdropTransparency: React.Binding<number>,
	setPanelGoal: SetGoal,
	setBackdropGoal: SetGoal,
	drag: React.Binding<number?>,
	setDrag: SetDrag,
}

local function useDrag(): (React.Binding<number?>, SetDrag)
	local pair = React.useState(function()
		local drag, setDrag = React.createBinding(nil :: number?)
		return { drag = drag, setDrag = setDrag }
	end)
	return pair.drag, pair.setDrag
end

-- An ease only starts from its startingValue when the motor is idle, so stop any in-flight animation when a drag begins.
local function hold(motion: DrawerMotion)
	motion.setPanelGoal(Otter.instant(motion.panelProgress:getValue()))
	motion.setBackdropGoal(Otter.instant(motion.backdropTransparency:getValue()))
end

local function animate(motion: DrawerMotion, isOpen: boolean, tokens: Tokens, reducedMotion: boolean)
	local dragged = motion.drag:getValue()
	local backdropFrom = if dragged ~= nil then 1 - dragged else nil

	if reducedMotion then
		motion.setPanelGoal(Otter.instant(if isOpen then 1 else 0))
		motion.setBackdropGoal(Otter.instant(if isOpen then 0 else 1))
	elseif isOpen then
		motion.setPanelGoal(Otter.ease(1, {
			easingStyle = tokens.Ease.StandardOut,
			duration = tokens.Time.Time_300,
			startingValue = dragged,
		}))
		motion.setBackdropGoal(Otter.ease(0, {
			duration = tokens.Time.Time_100,
			startingValue = backdropFrom,
		}))
	else
		motion.setPanelGoal(Otter.ease(0, {
			easingStyle = tokens.Ease.StandardIn,
			duration = tokens.Time.Time_100,
			startingValue = dragged,
		}))
		motion.setBackdropGoal(Otter.ease(1, {
			duration = tokens.Time.Time_100,
			startingValue = backdropFrom,
		}))
	end

	if dragged ~= nil then
		motion.setDrag(nil)
	end
end

return {
	animate = animate,
	hold = hold,
	useDrag = useDrag,
}
