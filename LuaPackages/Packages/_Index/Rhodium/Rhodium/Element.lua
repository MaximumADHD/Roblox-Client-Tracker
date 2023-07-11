--!strict
local Rhodium = script:FindFirstAncestor("Rhodium")
local VirtualInput = require(Rhodium.VirtualInput)
local VirtualInputUtils = require(Rhodium.VirtualInputUtils)
local XPath = require(Rhodium.XPath)
local validateInputReceived = require(Rhodium.validateInputReceived)

type XPath = XPath.XPath

type ElementPrivate = {
	rbxInstance: Instance?,
	isInScrollingFrame: boolean,
	anchor: Vector2?,
}

type ElementStatic = {
	new: (argument: string | Instance | XPath) -> Element,
}

type ElementInternal = ElementPrivate & ElementStatic & {
	path: XPath,

	getAttribute: (ElementInternal, name: string) -> any,
	getLocation: (ElementInternal) -> Vector2,
	getRect: (ElementInternal) -> Rect,
	getSize: (ElementInternal) -> Vector2,
	getCenter: (ElementInternal) -> Vector2,
	getText: (ElementInternal) -> string,
	getAnchor: (ElementInternal) -> Vector2,
	setAnchor: (ElementInternal, offsetX: number, offsetY: number) -> (),
	unsetAnchor: (ElementInternal) -> (),
	isDisplayed: (ElementInternal) -> boolean,
	isSelected: (ElementInternal) -> boolean,
	getRbxInstance: (ElementInternal) -> Instance?,
	getRbxInstanceOrThrow: (ElementInternal) -> Instance,
	assertInteractable: (ElementInternal) -> (),
	assertClickable: (ElementInternal, boolean?) -> (),
	assertVisibleWithinAncestors: (ElementInternal) -> (),
	assertFirstClickTarget: (ElementInternal) -> (),
	_getGuiObject: (ElementInternal) -> GuiObject,
	_getGuiButton: (ElementInternal) -> GuiButton,
	_getGuiBase2d: (ElementInternal) -> GuiBase2d,
	_getInstanceOfClass: (ElementInternal, className: string) -> Instance,
	waitForRbxInstance: (ElementInternal, timeout: number?, delay: number?) -> Instance?,
	centralizeInstance: (ElementInternal) -> (),
	centralize: (ElementInternal) -> (),
	_centralizeInScrollingFrame: (ElementInternal, child: GuiObject, maybeParent: Instance?) -> (),
	_scrollToFindInstance: (ElementInternal, scrollingFrame: ScrollingFrame, absPath: XPath) -> Instance?,
	_validateInput: (ElementInternal, simulateInput: () -> ()) -> (),
	centralizeWithInfiniteScrolling: (ElementInternal) -> (),
	setPluginWindow: (ElementInternal) -> (),
	click: (ElementInternal, repeatCount: number?) -> (),
	clickWithoutValidation: (ElementInternal, repeatCount: number?) -> (),
	rightClick: (ElementInternal) -> (),
	mouseWheel: (ElementInternal, num: number) -> (),
	mouseDrag: (ElementInternal, xOffset: number, yOffset: number, duration: number) -> (),
	mouseDragTo: (ElementInternal, posTo: Vector2, duration: number) -> (),
	sendKey: (ElementInternal, key: Enum.KeyCode) -> (),
	sendText: (ElementInternal, str: string) -> (),
	tap: (ElementInternal) -> (),
	tapWithoutValidation: (ElementInternal) -> (),
	touchScroll: (ElementInternal, xOffset: number, yOffset: number, duration: number, multitouchId: number?) -> (),
}

export type Element = ElementStatic & {
	path: XPath,

	getAttribute: (Element, name: string) -> any,
	getLocation: (Element) -> Vector2,
	getRect: (Element) -> Rect,
	getSize: (Element) -> Vector2,
	getCenter: (Element) -> Vector2,
	getText: (Element) -> string,
	getAnchor: (Element) -> Vector2,
	setAnchor: (Element, offsetX: number, offsetY: number) -> (),
	unsetAnchor: (Element) -> (),
	isDisplayed: (Element) -> boolean,
	isSelected: (Element) -> boolean,
	-- TODO: return `Instance?` once downstream is ready to adopt
	getRbxInstance: (Element) -> any,
	getRbxInstanceOrThrow: (Element) -> Instance,
	assertInteractable: (Element) -> (),
	assertClickable: (Element, boolean?) -> (),
	assertVisibleWithinAncestors: (Element) -> (),
	assertFirstClickTarget: (Element) -> (),
	-- TODO: return `Instance?` once downstream is ready to adopt
	waitForRbxInstance: (Element, timeout: number?, delay: number?) -> any,
	centralizeInstance: (Element) -> (),
	centralize: (Element) -> (),
	centralizeWithInfiniteScrolling: (Element) -> (),
	setPluginWindow: (Element) -> (),
	click: (Element, repeatCount: number?) -> (),
	clickWithoutValidation: (Element, repeatCount: number?) -> (),
	rightClick: (Element) -> (),
	mouseWheel: (Element, num: number) -> (),
	mouseDrag: (Element, xOffset: number, yOffset: number, duration: number) -> (),
	mouseDragTo: (Element, posTo: Vector2, duration: number) -> (),
	sendKey: (Element, key: Enum.KeyCode) -> (),
	sendText: (Element, str: string) -> (),
	tap: (Element) -> (),
	tapWithoutValidation: (Element) -> (),
	touchScroll: (Element, xOffset: number, yOffset: number, duration: number, multitouchId: number?) -> (),
}

local INPUT_VALIDATION_PREFIX = "[Rhodium] input validation"

--[[
	Prints a short description of an instance in the format of:
		game.Workspace.Path.To.Button (TextButton)
]]
local function describeInstance(instance: Instance): string
	return string.format("%s (%s)", instance:GetFullName(), instance.ClassName)
end

local function describeBounds(instance: GuiBase2d): string
	local position = instance.AbsolutePosition
	local size = instance.AbsoluteSize
	return string.format("(%s) (%s)", tostring(position), tostring(size + position))
end

--[[
	Prints a short description of a GuiBase2d:
		game.Workspace.Path.To.Button (TextButton)
]]
local function describeGuiBase2d(instance: GuiBase2d): string
	return string.format("%s\n\telement bounds: %s", describeInstance(instance), describeBounds(instance))
end

local function isPointOutsideViewport(point: Vector2, container: GuiBase2d): (boolean, string?)
	local directions = {}
	if point.Y < container.AbsolutePosition.Y then
		table.insert(directions, "top")
	end
	if point.Y > container.AbsolutePosition.Y + container.AbsoluteSize.Y then
		table.insert(directions, "bottom")
	end
	if point.X < container.AbsolutePosition.X then
		table.insert(directions, "left")
	end
	if point.X > container.AbsolutePosition.X + container.AbsoluteSize.X then
		table.insert(directions, "right")
	end

	if #directions > 0 then
		return true, table.concat(directions, "-")
	end

	return false
end

local function isPointClippedByAncestor(target: GuiBase2d, clickLocation: Vector2)
	local ancestor = target.Parent
	while ancestor ~= nil do
		if ancestor:IsA("GuiBase2d") then
			-- Non-GuiObjects (LayerCollectors) clip descendants inherently,
			-- while GuiObjects like "Frame" default to _not_ clipping unless
			-- ClipsDescendants is true
			local ancestorClips = if ancestor:IsA("GuiObject") then ancestor.ClipsDescendants else true
			local targetIsClipped, direction = isPointOutsideViewport(clickLocation, ancestor)
			if ancestorClips and targetIsClipped then
				return true, ancestor :: GuiBase2d?, direction :: string?
			end
		end
		ancestor = ancestor.Parent
	end
	return false
end

local function isClickable(instance: GuiObject, allowInactive: boolean?): (boolean, { string })
	local notClickableReasons = {}

	if not instance.Active then
		-- Check if the element is either a kind of GuiObject that always sinks
		-- clicks _or_ an Instance that's set to Active to sink clicks anyways
		if not instance:IsA("GuiButton") and not instance:IsA("TextBox") then
			local interactiveDescendants = {}
			local instancePath = instance:GetFullName()
			for _, descendant in instance:GetDescendants() do
				if descendant:IsA("GuiButton") or descendant:IsA("TextBox") then
					local path = string.sub(describeInstance(descendant), #instancePath + 1)
					table.insert(interactiveDescendants, string.format("%s%s", instance.Name, path))
				end
			end
			table.insert(
				notClickableReasons,
				string.format(
					"target is not a GuiButton or TextBox, so it will not sink inputs unless `Active` is true.\n"
						.. "\tThe target instance has the following descendants that may be better click targets:%s\n\n"
						.. "\tIf you are intentionally simulating clicks on a GUI element that is not typically interactive\n"
						.. "\t(like a Frame or an ImageLabel), consider using `element:clickWithoutValidation` instead.",
					if #interactiveDescendants > 0
						then "\n\t\t* " .. table.concat(interactiveDescendants, "\n\t\t* ")
						else " <none>"
				)
			)
		end
		if not allowInactive then
			table.insert(notClickableReasons, "target is not Active")
		end
	end
	if not instance.Visible then
		table.insert(notClickableReasons, "target is not Visible")
	end
	if instance.AbsoluteSize.X <= 0 then
		table.insert(
			notClickableReasons,
			string.format("target has 0 width; element bounds: %s", describeBounds(instance))
		)
	end
	if instance.AbsoluteSize.Y <= 0 then
		table.insert(
			notClickableReasons,
			string.format("target has 0 height; element bounds: %s", describeBounds(instance))
		)
	end

	local layerCollector = instance:FindFirstAncestorWhichIsA("LayerCollector")
	if not layerCollector then
		table.insert(
			notClickableReasons,
			"target is not a descendant of a LayerCollector, like a ScreenGui or a SurfaceGui"
		)
	end

	return #notClickableReasons == 0, notClickableReasons
end

local function countScrollingFrames(instance: Instance?): number
	if instance and instance ~= game then
		local num = countScrollingFrames(instance.Parent)

		if instance:IsA("ScrollingFrame") then
			num += 1
		end

		return num
	else
		return 0
	end
end

local Element: ElementInternal = {} :: any;
(Element :: any).__index = Element

function Element.new(argument: string | Instance | XPath): Element
	local path = nil
	local rbxInstance = nil

	if type(argument) == "string" then
		path = XPath.new(argument)
	elseif type(argument) == "table" and (argument :: any).__type == "XPath" then
		-- Luau FIXME: something's being lost across module boundaries here; we
		-- can't even recast to XPath successfully
		path = argument :: any
	elseif type(argument) == "userdata" then
		path = XPath.new(argument)
		rbxInstance = argument
	else
		error(string.format("invalid parameter for element: %s", typeof(argument)))
	end

	return setmetatable({
		path = path,
		rbxInstance = rbxInstance,
		isInScrollingFrame = countScrollingFrames(rbxInstance) ~= 0,
		anchor = nil,
	}, Element) :: any
end

function Element:assertInteractable()
	local instance = self:getRbxInstance()
	if instance == nil then
		error(
			string.format(
				"%s: element with XPath %s does not describe any existing Instance",
				INPUT_VALIDATION_PREFIX,
				self.path:toString()
			)
		)
	end
	if not (instance :: Instance):IsA("GuiObject") then
		error(
			string.format("%s: %s is not a GuiObject", INPUT_VALIDATION_PREFIX, describeInstance(instance :: Instance))
		)
	end
	if not (instance :: GuiObject):FindFirstAncestorOfClass("DataModel") then
		error(
			string.format(
				"%s: %s is not mounted into the DataModel",
				INPUT_VALIDATION_PREFIX,
				describeInstance(instance :: Instance)
			)
		)
	end
end

function Element:assertClickable(allowInactive: boolean?)
	local instance = self:_getGuiObject()

	local clickable, messages = isClickable(instance, allowInactive)
	if not clickable then
		error(
			string.format(
				"%s: %s was not clickable for the following reason(s):\n* %s",
				INPUT_VALIDATION_PREFIX,
				describeInstance(instance),
				table.concat(messages, "\n* ")
			)
		)
	end
end

function Element:assertVisibleWithinAncestors()
	local instance = self:_getGuiObject()
	local anchor = self:getAnchor()

	local isClipped, ancestor, direction = isPointClippedByAncestor(instance, anchor)
	if isClipped then
		error(
			string.format(
				"%s: %s is outside bounds of ancestor %s (%s)\n\nclick at: (%s)\ntarget:   %s\nancestor: %s",
				INPUT_VALIDATION_PREFIX,
				instance.Name,
				(ancestor :: GuiBase2d).Name,
				direction :: string,
				tostring(anchor),
				describeGuiBase2d(instance),
				describeGuiBase2d(ancestor :: GuiBase2d)
			)
		)
	end
end

function Element:assertFirstClickTarget()
	local instance = self:_getGuiObject()
	local anchor = self:getAnchor()

	-- Assert that the target is the _first_ target at the given location
	local baseGui = instance:FindFirstAncestorWhichIsA("BasePlayerGui")
	if not baseGui then
		error(
			string.format(
				"%s: %s is not a descendant of a BasePlayerGui (like CoreGui or LocalPlayer.PlayerGui)",
				INPUT_VALIDATION_PREFIX,
				describeGuiBase2d(instance)
			)
		)
	end

	-- FIXME: UISYS-2261 Each ScreenGui has a quadtree that's used to detect
	-- point intersections, but it's only generated once some input is received;
	-- calling `GetGuiObjectsAtPosition` should also force quadtree generation
	VirtualInput.Mouse.SendMouseMoveEvent(anchor.X, anchor.Y)
	VirtualInputUtils.waitForInputEventsProcessed()
	local atClickLocation: { GuiObject } = (baseGui :: BasePlayerGui):GetGuiObjectsAtPosition(anchor.X, anchor.Y) :: any

	for _, descendant in atClickLocation do
		if descendant == instance then
			-- The first clickable instance in the list is our target; this
			-- is the happy path!
			break
		end

		local descendantIsClickable = isClickable(descendant :: GuiObject, true)
		if not descendantIsClickable then
			continue
		end
		-- There's a possibility that the obscuring element is not _actually_
		-- obscuring it because it's being clipped; check this before we throw
		local descendantIsClipped = isPointClippedByAncestor(descendant :: GuiBase2d, anchor)
		if descendantIsClipped then
			continue
		end

		error(
			string.format(
				"%s: element is obscured by another clickable GuiObject at the target click location\n\n click at: (%s)\n   target: %s\nobscuring: %s",
				INPUT_VALIDATION_PREFIX,
				tostring(anchor),
				describeGuiBase2d(instance :: GuiBase2d),
				describeGuiBase2d(descendant :: GuiBase2d)
			)
		)
	end
end

function Element:getAttribute(name: string)
	return (self:getRbxInstance() :: any)[name]
end

function Element:getLocation(): Vector2
	return self:_getGuiBase2d().AbsolutePosition
end

function Element:getRect(): Rect
	local size: Vector2 = self:getSize()
	local topLeft: Vector2 = self:getLocation()
	local bottomRight = size + topLeft
	return Rect.new(topLeft.X, topLeft.Y, bottomRight.X, bottomRight.Y)
end

function Element:getSize(): Vector2
	return self:_getGuiBase2d().AbsoluteSize
end

function Element:getCenter(): Vector2
	local location: Vector2 = self:getLocation()
	local size: Vector2 = self:getSize()
	return location + (size / 2)
end

function Element:getText(): string
	local instance = self:getRbxInstanceOrThrow()
	if instance:IsA("TextLabel") or instance:IsA("TextButton") or instance:IsA("TextBox") then
		return instance.Text
	end
	error(("expected element to have text, but got `%s`"):format(instance.ClassName))
end

function Element:getAnchor(): Vector2
	if self.anchor ~= nil then
		local location: Vector2 = self:getLocation()
		return location + self.anchor
	else
		return self:getCenter()
	end
end

-- Set anchor at offset from absolute position
function Element:setAnchor(offsetX: number, offsetY: number)
	local size = self:getSize()
	if offsetX > size.X or offsetY > size.Y or offsetX < 0 or offsetY < 0 then
		error("Attempt to set anchor beyond element's bounds")
	else
		self.anchor = Vector2.new(offsetX, offsetY)
	end
end

-- Set anchor at offset from absolute position
function Element:unsetAnchor()
	self.anchor = nil
end

function Element:isDisplayed(): boolean
	return self:_getGuiObject().Visible
end

function Element:isSelected(): boolean
	return self:_getGuiButton().Selected
end

function Element:getRbxInstance(): Instance?
	return self:waitForRbxInstance(self.path.waitDelay, self.path.waitTimeOut)
end

function Element:getRbxInstanceOrThrow()
	local instance = self:getRbxInstance()
	if instance == nil then
		error(string.format("Failed to get instance for element with path %s", self.path:toString()))
	end
	return instance :: Instance
end

function Element:_getGuiObject(): GuiObject
	return self:_getInstanceOfClass("GuiObject") :: GuiObject
end

function Element:_getGuiButton(): GuiButton
	return self:_getInstanceOfClass("GuiButton") :: GuiButton
end

function Element:_getGuiBase2d(): GuiBase2d
	return self:_getInstanceOfClass("GuiBase2d") :: GuiBase2d
end

function Element:_getInstanceOfClass(className: string): Instance
	local instance = self:getRbxInstanceOrThrow()
	if instance:IsA(className) then
		return instance
	end
	error(("expected element to be a %s, but got `%s`"):format(className, instance.ClassName))
end

function Element:waitForRbxInstance(timeout: number?, delay: number?): Instance?
	local instance: Instance? = self.rbxInstance
	if instance == nil and self.path ~= nil then
		self.path:setWait(timeout, delay)
		instance = self.path:waitForFirstInstance()
		self.rbxInstance = instance
	end

	return instance
end

function Element:centralizeInstance()
	self:_centralizeInScrollingFrame(self:_getInstanceOfClass("GuiObject") :: GuiObject)
end

function Element:centralize()
	local instance = self:getRbxInstance()
	if instance then
		self:centralizeInstance()
	else
		self:centralizeWithInfiniteScrolling()
	end
end

function Element:_centralizeInScrollingFrame(child: GuiObject, maybeParent: Instance?)
	if (child :: any) == game then
		return
	end
	local parent = if maybeParent then maybeParent else child.Parent :: Instance
	if parent == game then
		return
	end

	if parent:IsA("ScrollingFrame") then
		self:_centralizeInScrollingFrame(parent, parent.Parent)
		-- this is computational error tolerate.
		local threshold = 2

		--first scroll down to make child appears neas screen,
		--so that we can access child.AbsolutPosition property
		local isChildInScreen = false
		while not isChildInScreen do
			local prevChildPosition = child.AbsolutePosition
			local prevCanvasPosition = parent.CanvasPosition
			-- when scroll too much at one time, the element may move out side of screen immediately
			-- its AbsoluteSize will not update. limit to 300
			local scrollDistance =
				Vector2.new(math.min(300, parent.AbsoluteSize.X), math.min(300, parent.AbsoluteSize.Y))
			parent.CanvasPosition = parent.CanvasPosition + scrollDistance
			task.wait()
			local deltaCanvas = (parent.CanvasPosition - prevCanvasPosition)
			local isBottom = deltaCanvas.Magnitude <= threshold
			local deltaChild = child.AbsolutePosition - prevChildPosition
			isChildInScreen = isBottom or deltaChild.Magnitude > threshold
		end
		--second scroll to centerize the child, at most twice.
		for _ = 1, 2 do
			local frameCenter = parent.AbsolutePosition + parent.AbsoluteSize / 2
			local childCenter = child.AbsolutePosition + child.AbsoluteSize / 2
			local delta = childCenter - frameCenter
			if delta.Magnitude <= threshold then
				break
			end
			parent.CanvasPosition = parent.CanvasPosition + delta
			task.wait()
		end
	else
		self:_centralizeInScrollingFrame(child, parent.Parent)
	end
end

function Element:_scrollToFindInstance(scrollingFrame: ScrollingFrame, absPath: XPath): Instance?
	--	first reset scrollingFrame to zero position
	scrollingFrame.CanvasPosition = Vector2.new(0, 0)
	local width = scrollingFrame.AbsoluteSize.X
	local height = scrollingFrame.AbsoluteSize.Y

	local isBottom = false
	local instance
	local threshold = 2
	while not isBottom do
		task.wait(0.1)
		-- Luau FIXME: something's being lost across module boundaries here; we
		-- can't even recast to XPath successfully
		instance = (absPath :: any):getFirstInstance()
		--if find the element then return
		if instance then
			return instance
		end
		--scroll
		local oldPosition = scrollingFrame.CanvasPosition
		scrollingFrame.CanvasPosition = scrollingFrame.CanvasPosition
			+ Vector2.new(math.min(width, 300), math.min(height, 300))
		--wait for content to refresh
		local delta = scrollingFrame.CanvasPosition - oldPosition
		isBottom = delta.Magnitude < threshold
		--if it is the bottom, then return not found
	end
	return nil
end

function Element:centralizeWithInfiniteScrolling()
	local instances, lastSeenIndex = self.path:getInstances()
	if #instances > 0 then
		self:centralizeInstance()
	end

	local lastSeenPath = self.path:copy()
	while lastSeenPath:size() > lastSeenIndex do
		lastSeenPath = lastSeenPath:parent() :: XPath
	end

	local lastSeenInstance: Instance? = lastSeenPath:getFirstInstance()
	local lastScrollingFrame = nil :: ScrollingFrame?
	while true do
		assert(lastSeenInstance ~= nil, "Rhodium encountered an internal error")

		if lastSeenInstance:IsA("ScrollingFrame") then
			lastScrollingFrame = lastSeenInstance
			break
		end
		lastSeenInstance = lastSeenInstance.Parent
		if lastSeenInstance == game then
			break
		end
	end
	if lastScrollingFrame == nil then
		return
	end
	if self:_scrollToFindInstance(lastScrollingFrame :: ScrollingFrame, self.path) == nil then
		return
	end
	self:_centralizeInScrollingFrame(self:_getInstanceOfClass("GuiObject") :: GuiObject)
end

function Element:setPluginWindow()
	local window = self:getRbxInstanceOrThrow():FindFirstAncestorWhichIsA("PluginGui")
	VirtualInput.setCurrentWindow(window)
end

function Element:_validateInput(simulateInput)
	-- Before we can try processing clicks, make sure we have a valid GuiObject
	-- that will receive them
	self:assertInteractable()

	local instance = self:_getGuiObject()

	-- Waiting for events will also allow a re-layout to complete, which should
	-- resolve any impending size and position changes
	VirtualInputUtils.waitForInputEventsProcessed()

	local didReceiveInput = validateInputReceived(instance, simulateInput)
	if not didReceiveInput then
		self:assertClickable()
		self:assertVisibleWithinAncestors()
		self:assertFirstClickTarget()

		error(
			string.format(
				"%s: failed to click %s - reason unknown\n%s",
				INPUT_VALIDATION_PREFIX,
				instance.Name,
				describeGuiBase2d(instance)
			)
		)
	end
end

function Element:clickWithoutValidation(repeatCount: number?)
	self:centralize()
	self:setPluginWindow()

	repeatCount = if repeatCount then repeatCount else 1
	VirtualInput.Mouse.multiClick(self:getAnchor(), repeatCount :: number)
end

function Element:click(repeatCount: number?)
	self:_validateInput(function()
		self:clickWithoutValidation(repeatCount)
	end)
end

function Element:rightClick()
	self:centralize()
	self:setPluginWindow()

	VirtualInput.Mouse.rightClick(self:getAnchor())
end

function Element:mouseWheel(num: number)
	self:centralize()
	VirtualInput.Mouse.mouseWheel(self:getAnchor(), num)
end

function Element:mouseDrag(xOffset: number, yOffset: number, duration: number)
	self:centralize()
	local anchor = self:getAnchor() :: Vector2
	local posTo = anchor + Vector2.new(xOffset, yOffset)
	VirtualInput.Mouse.mouseDrag(self:getAnchor(), posTo, duration)
end

function Element:mouseDragTo(posTo: Vector2, duration: number)
	self:centralize()
	VirtualInput.Mouse.mouseDrag(self:getAnchor(), posTo, duration)
end

function Element:sendKey(key: Enum.KeyCode)
	self:setPluginWindow()
	VirtualInput.Keyboard.hitKey(key)
end

function Element:sendText(str: string)
	-- TODO: only click if TextBox not selected
	self:clickWithoutValidation()
	task.wait(0)
	VirtualInput.Text.sendText(str)
end

function Element:tapWithoutValidation()
	self:centralize()
	VirtualInput.Touch.tap(self:getAnchor())
end

function Element:tap()
	self:_validateInput(function()
		self:tapWithoutValidation()
	end)
end

function Element:touchScroll(xOffset: number, yOffset: number, duration: number, multitouchId: number?)
	self:centralize()
	VirtualInput.Touch.touchScroll(self:getAnchor(), xOffset, yOffset, duration, true, multitouchId)
end

return Element
