local Foundation = script:FindFirstAncestor("Foundation")

local DragIntent = require(Foundation.Enums.DragIntent)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local contentLock = require(script.Parent.contentLock)
local gestureInput = require(script.Parent.gestureInput)
local swipeMath = require(script.Parent.swipeMath)

type InternalDrawerSide = InternalDrawerSide.InternalDrawerSide

type Gesture = gestureInput.Gesture

export type DismissSwipeLatest = {
	side: InternalDrawerSide,
	travel: number,
	isOpen: boolean,
	distanceFraction: number,
	velocityThreshold: number,
	onClaim: () -> (),
	setDrag: (progress: number?) -> (),
	onRelease: (dismiss: boolean) -> (),
	onCancel: () -> (),
}

export type DismissSwipeSession = {
	gesture: Gesture?,
	latest: { current: DismissSwipeLatest },
	panelRef: { current: GuiObject? },
	backdropRef: { current: GuiObject? },
	scrollingFrameRef: { current: ScrollingFrame? },
	captureRef: { current: GuiObject? },
	unlock: (() -> ())?,
}

type Latest = DismissSwipeLatest
type Session = DismissSwipeSession

local function showCapture(session: Session, visible: boolean)
	local capture = session.captureRef.current
	if capture ~= nil then
		capture.Visible = visible
	end
end

local function releaseLock(session: Session)
	local unlock = session.unlock
	session.unlock = nil
	-- Restore after the release so the capture still sinks Activated from this pointer up.
	task.defer(function()
		if unlock ~= nil then
			unlock()
		end
		showCapture(session, false)
	end)
end

local function claim(session: Session)
	local current = session.latest.current
	current.onClaim()
	session.unlock =
		contentLock.lock(session.panelRef.current, session.backdropRef.current, session.scrollingFrameRef.current)
	showCapture(session, true)
end

local function onInputBegan(session: Session, input: InputObject): boolean
	if not gestureInput.canBegin(session.gesture, input) then
		return false
	end

	local panel = session.panelRef.current
	if panel == nil then
		return false
	end
	local backdrop = session.backdropRef.current
	local position = input.Position
	local onPanel = gestureInput.isInside(panel, position)
	local onBackdrop = backdrop ~= nil and gestureInput.isInside(backdrop, position)
	if not onPanel and not onBackdrop then
		return false
	end
	if gestureInput.isForeignHit(panel, gestureInput.topGuiAt(panel, position, backdrop), backdrop) then
		return false
	end

	session.gesture = gestureInput.beginGesture(input, os.clock())
	return true
end

local function onInputChanged(session: Session, input: InputObject)
	local gesture = session.gesture
	if gesture == nil or not gestureInput.matchesMove(input, gesture.input) then
		return
	end

	local current = session.latest.current
	local justClaimed, claimed, currentX = gestureInput.move(gesture, input, swipeMath.closeSign(current.side))
	if justClaimed then
		claim(session)
	end
	if not claimed then
		return
	end

	local distance = swipeMath.distanceAlong(swipeMath.closeSign(current.side), gesture.startX, currentX)
	gestureInput.setProgressIfChanged(gesture, current.setDrag, 1 - swipeMath.progress(distance, current.travel))
end

local function onInputEnded(session: Session, input: InputObject): boolean
	local gesture = session.gesture
	if gesture == nil or not gestureInput.matchesRelease(input, gesture.input) then
		return false
	end

	session.gesture = nil
	if gesture.intent ~= DragIntent.Claim then
		return true
	end

	releaseLock(session)

	local current = session.latest.current
	if not current.isOpen then
		return true
	end

	local dismiss = swipeMath.shouldCommit(
		gesture,
		swipeMath.closeSign(current.side),
		current.travel,
		current.distanceFraction,
		current.velocityThreshold,
		os.clock()
	)
	current.onRelease(dismiss)
	return true
end

local function reset(session: Session)
	local gesture = session.gesture
	session.gesture = nil
	if gesture ~= nil and gesture.intent == DragIntent.Claim then
		releaseLock(session)
		session.latest.current.onCancel()
	end
end

return {
	onInputBegan = onInputBegan,
	onInputChanged = onInputChanged,
	onInputEnded = onInputEnded,
	reset = reset,
}
