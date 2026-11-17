local Foundation = script:FindFirstAncestor("Foundation")

local Connection = require(Foundation.Utility.Wrappers.Connection)
local DragIntent = require(Foundation.Enums.DragIntent)
local Services = require(Foundation.Utility.Wrappers.Services)
local Signal = require(Foundation.Utility.Wrappers.Signal)
local swipeMath = require(script.Parent.swipeMath)

local UserInputService = Services.UserInputService

type DragIntent = DragIntent.DragIntent

export type Gesture = {
	input: InputObject,
	startX: number,
	startY: number,
	lastX: number,
	lastTime: number,
	velocityX: number,
	intent: DragIntent,
	lastProgress: number?,
}

type PointerHandlers = {
	-- Returns true when the press starts a gesture.
	onBegan: (InputObject) -> boolean,
	onChanged: (InputObject) -> (),
	-- Returns true when the release ends the gesture.
	onEnded: (InputObject) -> boolean,
}

local DRAG_SLOP = 8

local function isInside(gui: GuiObject, position: Vector3): boolean
	local origin = gui.AbsolutePosition
	local size = gui.AbsoluteSize
	return position.X >= origin.X
		and position.Y >= origin.Y
		and position.X <= origin.X + size.X
		and position.Y <= origin.Y + size.Y
end

local function isPointerDown(input: InputObject): boolean
	return input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch
end

local function matchesMove(input: InputObject, tracked: InputObject): boolean
	if tracked.UserInputType == Enum.UserInputType.Touch then
		return input == tracked
	end
	return input.UserInputType == Enum.UserInputType.MouseMovement
end

local function matchesRelease(input: InputObject, tracked: InputObject): boolean
	if tracked.UserInputType == Enum.UserInputType.Touch then
		return input == tracked
	end
	return input.UserInputType == Enum.UserInputType.MouseButton1
end

local function canBegin(gesture: Gesture?, input: InputObject): boolean
	return gesture == nil and isPointerDown(input) and UserInputService:GetFocusedTextBox() == nil
end

local function beginGesture(input: InputObject, now: number): Gesture
	return {
		input = input,
		startX = input.Position.X,
		startY = input.Position.Y,
		lastX = input.Position.X,
		lastTime = now,
		velocityX = 0,
		intent = DragIntent.Pending,
		lastProgress = nil,
	}
end

-- Returns true only on the move that claims the gesture.
local function updateClaim(gesture: Gesture, dx: number, dy: number, requiredSign: number?): boolean
	if gesture.intent ~= DragIntent.Pending then
		return false
	end

	local intent = swipeMath.classifyDrag(dx, dy, DRAG_SLOP, requiredSign)
	if intent == DragIntent.Claim then
		gesture.intent = DragIntent.Claim
		return true
	end
	if intent == DragIntent.Ignore then
		gesture.intent = DragIntent.Ignore
	end
	return false
end

local function sampleVelocity(gesture: Gesture, currentX: number, now: number)
	local dt = now - gesture.lastTime
	if dt > 0 then
		gesture.velocityX = (currentX - gesture.lastX) / dt
	end
	gesture.lastX = currentX
	gesture.lastTime = now
end

-- Reads Position once, updates claim, and samples velocity once claimed.
-- Returns justClaimed, claimed, currentX.
local function move(gesture: Gesture, input: InputObject, requiredSign: number?): (boolean, boolean, number)
	local position = input.Position
	local currentX = position.X
	local dx = currentX - gesture.startX
	local dy = position.Y - gesture.startY
	local justClaimed = updateClaim(gesture, dx, dy, requiredSign)
	local claimed = gesture.intent == DragIntent.Claim
	if claimed then
		sampleVelocity(gesture, currentX, os.clock())
	end
	return justClaimed, claimed, currentX
end

local function setProgressIfChanged(gesture: Gesture, setProgress: (number?) -> (), progress: number)
	if gesture.lastProgress == progress then
		return
	end
	gesture.lastProgress = progress
	setProgress(progress)
end

local function isOwnHit(panel: GuiObject, hit: GuiObject, backdrop: GuiObject?): boolean
	if hit == panel or hit:IsDescendantOf(panel) then
		return true
	end
	return backdrop ~= nil and (hit == backdrop or hit:IsDescendantOf(backdrop))
end

-- Hits are ordered top-down, so the first owned or Active hit decides. Inactive GuiObjects let input
-- through and cannot cover the drawer, and anything after an owned hit renders below it.
local function topGuiAt(panel: GuiObject, position: Vector3, backdrop: GuiObject?): GuiObject?
	local root: Instance? = panel:FindFirstAncestorWhichIsA("PlayerGui")
	if root == nil then
		root = panel:FindFirstAncestorWhichIsA("CoreGui")
	end
	if root == nil then
		return nil
	end
	for _, hit in (root :: BasePlayerGui):GetGuiObjectsAtPosition(position.X, position.Y) do
		if typeof(hit) == "Instance" and hit:IsA("GuiObject") and (hit.Active or isOwnHit(panel, hit, backdrop)) then
			return hit
		end
	end
	return nil
end

local function isForeignHit(panel: GuiObject, top: GuiObject?, backdrop: GuiObject?): boolean
	if top == nil then
		return false
	end
	return not isOwnHit(panel, top, backdrop)
end

-- InputChanged fires on every pointer move app-wide, so it is connected only while a gesture is tracked.
-- InputEnded stays connected: with deferred signals a quick tap can end before a connection made in InputBegan.
local function connectPointer(handlers: PointerHandlers): () -> ()
	local changed: RBXScriptConnection? = nil

	local function stopTracking()
		if changed ~= nil then
			Connection.Disconnect(changed)
			changed = nil
		end
	end

	local began = Signal.Connect(UserInputService.InputBegan, function(input: InputObject)
		if handlers.onBegan(input) and changed == nil then
			changed = Signal.Connect(UserInputService.InputChanged, handlers.onChanged)
		end
	end)
	local ended = Signal.Connect(UserInputService.InputEnded, function(input: InputObject)
		if handlers.onEnded(input) then
			stopTracking()
		end
	end)

	return function()
		Connection.Disconnect(began)
		Connection.Disconnect(ended)
		stopTracking()
	end
end

return {
	beginGesture = beginGesture,
	canBegin = canBegin,
	connectPointer = connectPointer,
	isForeignHit = isForeignHit,
	isInside = isInside,
	matchesMove = matchesMove,
	matchesRelease = matchesRelease,
	move = move,
	sampleVelocity = sampleVelocity,
	setProgressIfChanged = setProgressIfChanged,
	topGuiAt = topGuiAt,
	updateClaim = updateClaim,
}
