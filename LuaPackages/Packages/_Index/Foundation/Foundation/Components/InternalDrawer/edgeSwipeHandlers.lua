local Foundation = script:FindFirstAncestor("Foundation")

local DragIntent = require(Foundation.Enums.DragIntent)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local gestureInput = require(script.Parent.gestureInput)
local swipeMath = require(script.Parent.swipeMath)

type InternalDrawerSide = InternalDrawerSide.InternalDrawerSide

type Gesture = gestureInput.Gesture

export type EdgeSwipeLatest = {
	side: InternalDrawerSide,
	travel: number,
	isOpen: boolean,
	distanceFraction: number,
	velocityThreshold: number,
	onPress: () -> (),
	onPressEnd: () -> (),
	onClaim: () -> (),
	onDragCancel: () -> (),
	onCommit: () -> (),
	setDrag: (progress: number?) -> (),
}

export type EdgeSwipeSession = {
	gesture: Gesture?,
	latest: { current: EdgeSwipeLatest },
	edgeRef: { current: GuiObject? },
}

type Latest = EdgeSwipeLatest
type Session = EdgeSwipeSession

local function onInputBegan(session: Session, input: InputObject): boolean
	if not gestureInput.canBegin(session.gesture, input) then
		return false
	end

	local current = session.latest.current
	if current.isOpen then
		return false
	end
	local edge = session.edgeRef.current
	if edge == nil then
		return false
	end
	local position = input.Position
	if not gestureInput.isInside(edge, position) then
		return false
	end
	if gestureInput.isForeignHit(edge, gestureInput.topGuiAt(edge, position), nil) then
		return false
	end

	session.gesture = gestureInput.beginGesture(input, os.clock())
	current.onPress()
	return true
end

local function onInputChanged(session: Session, input: InputObject)
	local gesture = session.gesture
	if gesture == nil or not gestureInput.matchesMove(input, gesture.input) then
		return
	end

	local current = session.latest.current
	local justClaimed, claimed, currentX = gestureInput.move(gesture, input, swipeMath.openSign(current.side))
	if justClaimed then
		current.onClaim()
	end
	if not claimed then
		return
	end

	local distance = swipeMath.distanceAlong(swipeMath.openSign(current.side), gesture.startX, currentX)
	gestureInput.setProgressIfChanged(gesture, current.setDrag, swipeMath.progress(distance, current.travel))
end

-- The drag progress stays set on release so the overlay can animate open or closed from it.
local function onInputEnded(session: Session, input: InputObject): boolean
	local gesture = session.gesture
	if gesture == nil or not gestureInput.matchesRelease(input, gesture.input) then
		return false
	end

	session.gesture = nil
	local current = session.latest.current
	if gesture.intent ~= DragIntent.Claim then
		current.onPressEnd()
		return true
	end

	local shouldOpen = swipeMath.shouldCommit(
		gesture,
		swipeMath.openSign(current.side),
		current.travel,
		current.distanceFraction,
		current.velocityThreshold,
		os.clock()
	)
	if shouldOpen then
		current.onCommit()
	else
		current.onDragCancel()
	end
	return true
end

local function reset(session: Session)
	local gesture = session.gesture
	session.gesture = nil
	if gesture == nil then
		return
	end
	local current = session.latest.current
	if gesture.intent == DragIntent.Claim then
		current.onDragCancel()
	else
		current.onPressEnd()
	end
end

return {
	onInputBegan = onInputBegan,
	onInputChanged = onInputChanged,
	onInputEnded = onInputEnded,
	reset = reset,
}
