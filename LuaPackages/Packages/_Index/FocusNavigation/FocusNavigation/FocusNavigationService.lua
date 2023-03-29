--!strict
local Packages = script.Parent.Parent
local EventPropagationService = require(Packages.EventPropagation)
local Utils = require(Packages.Utils)

local createSignal = Utils.createSignal
local shallowEqual = Utils.shallowEqual
local getAncestors = Utils.getAncestors

local types = require(script.Parent.types)
type EventMap = types.EventMap
type EventData = types.EventData
type EngineInterface = types.EngineInterface

type EventPhase = EventPropagationService.EventPhase
type Event<T> = EventPropagationService.Event<T>
type EventPropagationService<T> = EventPropagationService.EventPropagationService<T>
type EventHandlerMap = EventPropagationService.EventHandlerMap<EventData>

export type EventHandler = (Event<EventData>) -> ()
type RegisteredEvents = { [string]: boolean }

export type FocusNavigationService = {
	registerEventMap: (self: FocusNavigationService, GuiObject, EventMap) -> (),
	deregisterEventMap: (self: FocusNavigationService, GuiObject, EventMap) -> (),
	registerEventHandlers: (self: FocusNavigationService, GuiObject, EventHandlerMap) -> (),
	deregisterEventHandlers: (self: FocusNavigationService, GuiObject, EventHandlerMap) -> (),
	registerEventHandler: (self: FocusNavigationService, GuiObject, string, EventHandler, EventPhase?) -> (),
	deregisterEventHandler: (self: FocusNavigationService, GuiObject, string, EventHandler, EventPhase?) -> (),
	focusGuiObject: (self: FocusNavigationService, GuiObject?, boolean) -> (),
	teardown: (self: FocusNavigationService) -> (),

	activeEventMap: Utils.Signal<EventMap>,
	focusedGuiObject: Utils.Signal<GuiObject?>,
}

type FocusNavigationServicePrivate = {
	_eventMapByInstance: { [Instance]: EventMap },
	_eventPropagationService: EventPropagationService<EventData>,
	_engineInterface: EngineInterface,
	_engineEventConnections: { RBXScriptConnection },

	_silentFocusTarget: GuiObject?,
	_silentBlurTarget: GuiObject?,

	_fireActiveEventMapSignal: Utils.FireSignal<EventMap>,
	_fireFocusedGuiObjectSignal: Utils.FireSignal<GuiObject?>,

	_connectToInputEvents: (FocusNavigationServicePrivate) -> (),
	_fireInputEvent: (FocusNavigationServicePrivate, GuiObject, InputObject) -> (),
	_updateActiveEventMap: (FocusNavigationServicePrivate) -> (),

	registerEventMap: (self: FocusNavigationServicePrivate, GuiObject, EventMap) -> (),
	deregisterEventMap: (self: FocusNavigationServicePrivate, GuiObject, EventMap) -> (),
	registerEventHandlers: (self: FocusNavigationServicePrivate, GuiObject, EventHandlerMap) -> (),
	deregisterEventHandlers: (self: FocusNavigationServicePrivate, GuiObject, EventHandlerMap) -> (),
	registerEventHandler: (self: FocusNavigationServicePrivate, GuiObject, string, EventHandler, EventPhase?) -> (),
	deregisterEventHandler: (self: FocusNavigationServicePrivate, GuiObject, string, EventHandler, EventPhase?) -> (),
	focusGuiObject: (self: FocusNavigationServicePrivate, GuiObject?, boolean) -> (),
	teardown: (self: FocusNavigationServicePrivate) -> (),

	activeEventMap: Utils.Signal<EventMap>,
	focusedGuiObject: Utils.Signal<GuiObject?>,
}

type FocusNavigationServiceStatics = {
	new: (EngineInterface) -> FocusNavigationService,
}

local FocusNavigationService = {} :: FocusNavigationServicePrivate & FocusNavigationServiceStatics;
(FocusNavigationService :: any).__index = FocusNavigationService

function FocusNavigationService.new(engineInterface: EngineInterface)
	local activeEventMapSignal, fireActiveEventMapSignal = createSignal({})
	local focusedGuiObjectSignal, fireFocusedGuiObjectSignal = createSignal(engineInterface.getSelection())

	local self: FocusNavigationServicePrivate = setmetatable({
		_eventPropagationService = EventPropagationService.new(),
		_engineInterface = engineInterface,

		_eventMapByInstance = setmetatable({}, { __mode = "k" }),
		_engineEventConnections = {},

		_silentFocusTarget = nil,
		_silentBlurTarget = nil,

		_fireActiveEventMapSignal = fireActiveEventMapSignal,
		_fireFocusedGuiObjectSignal = fireFocusedGuiObjectSignal,

		activeEventMap = activeEventMapSignal,
		focusedGuiObject = focusedGuiObjectSignal,
	}, FocusNavigationService) :: any

	self:_connectToInputEvents()

	return self
end

function FocusNavigationService:_fireInputEvent(focusedGuiObject: GuiObject, input: InputObject)
	local event = self.activeEventMap:getValue()[input.KeyCode]

	if event then
		self._eventPropagationService:propagateEvent(focusedGuiObject, event, {
			Delta = input.Delta,
			KeyCode = input.KeyCode,
			Position = input.Position,
			-- TODO: We may need to do this differently somehow, depending on
			-- how deferred lua solutions change
			UserInputState = input.UserInputState,
			-- TODO: Should we simplify this, or provide it as is?
			UserInputType = input.UserInputType,
		}, false)
	end
end

function FocusNavigationService:_connectToInputEvents()
	-- Connect to UserInputService.InputBegan/Changed/Ended
	local function forwardInputEvent(input, wasProcessed)
		-- TODO: I don't think we want to be listening to any already-captured
		-- events (like the left click from clicking a button with a mouse), but
		-- maybe the user needs more control?
		local currentFocus = self._engineInterface.getSelection()
		if currentFocus and not wasProcessed then
			self:_fireInputEvent(currentFocus, input)
		end
	end
	table.insert(self._engineEventConnections, self._engineInterface.InputBegan:Connect(forwardInputEvent))
	table.insert(self._engineEventConnections, self._engineInterface.InputChanged:Connect(forwardInputEvent))
	table.insert(self._engineEventConnections, self._engineInterface.InputEnded:Connect(forwardInputEvent))

	-- Connect to change signal for GuiService.Selected[Core]Object
	local function onFocusChanged()
		local previousFocus = self.focusedGuiObject:getValue()
		local nextFocus = self._engineInterface.getSelection()

		-- TODO: what happens if a selection change happens in response to a blur event?
		if previousFocus then
			local silent = self._silentBlurTarget == previousFocus
			self._eventPropagationService:propagateEvent(previousFocus, "blur", nil, silent)
			self._silentBlurTarget = nil
		end
		self._fireFocusedGuiObjectSignal(nextFocus)
		self:_updateActiveEventMap()
		if nextFocus then
			local silent = nextFocus == self._silentFocusTarget
			self._eventPropagationService:propagateEvent(nextFocus, "focus", nil, silent)
			self._silentFocusTarget = nil
		end
	end
	table.insert(self._engineEventConnections, self._engineInterface.SelectionChanged:Connect(onFocusChanged))
end

function FocusNavigationService:_updateActiveEventMap()
	local activeEventMap = {}
	local focused = self._engineInterface.getSelection()
	if focused then
		local ancestorList = getAncestors(focused)

		local mappedEvents = {}
		for i = #ancestorList, 1, -1 do
			local ancestor = ancestorList[i]
			local ancestorEventMap = self._eventMapByInstance[ancestor] :: EventMap?
			if ancestorEventMap then
				for keyCode, eventName in ancestorEventMap do
					mappedEvents[keyCode] = eventName
					-- invalidate any already-mapped event handlers when we bind
					-- over them
					activeEventMap[keyCode] = nil
				end
			end
			local handlers = self._eventPropagationService:getRegisteredEventHandlers(ancestor)
			if handlers then
				for keyCode, eventName in mappedEvents do
					if handlers[eventName] then
						activeEventMap[keyCode] = eventName
					end
				end
			end
		end
	end

	local lastEventMap = self.activeEventMap:getValue()
	if not shallowEqual(lastEventMap, activeEventMap) then
		self._fireActiveEventMapSignal(activeEventMap)
	end
end

function FocusNavigationService:registerEventMap(guiObject: GuiObject, eventMap: EventMap)
	local updatedEventMap: EventMap = self._eventMapByInstance[guiObject] or {}
	for keyCode, name in eventMap do
		-- TODO: Warnings
		-- if updatedEventMap[keyCode] and updatedEventMap[keyCode] ~= name then
		-- end
		updatedEventMap[keyCode] = name
	end
	self._eventMapByInstance[guiObject] = updatedEventMap
	self:_updateActiveEventMap()
end

function FocusNavigationService:deregisterEventMap(guiObject: GuiObject, eventMap: EventMap)
	local updatedEventMap: EventMap = self._eventMapByInstance[guiObject] or {}
	for keyCode, name in eventMap do
		if updatedEventMap[keyCode] == name then
			updatedEventMap[keyCode] = nil
			-- TODO: warnings
			-- else
			-- warn("cannot deregister non-matching event...")
		end
	end
	self._eventMapByInstance[guiObject] = updatedEventMap
	self:_updateActiveEventMap()
end

function FocusNavigationService:registerEventHandler(
	guiObject: GuiObject,
	eventName: string,
	eventHandler: EventHandler,
	phase: EventPhase?
)
	self._eventPropagationService:registerEventHandler(guiObject, eventName, eventHandler, phase)
	self:_updateActiveEventMap()
end

function FocusNavigationService:deregisterEventHandler(
	guiObject: GuiObject,
	eventName: string,
	eventHandler: EventHandler,
	phase: EventPhase?
)
	self._eventPropagationService:deregisterEventHandler(guiObject, eventName, eventHandler, phase)
	self:_updateActiveEventMap()
end

function FocusNavigationService:registerEventHandlers(guiObject: GuiObject, eventHandlers: EventHandlerMap)
	self._eventPropagationService:registerEventHandlers(guiObject, eventHandlers)
	self:_updateActiveEventMap()
end

function FocusNavigationService:deregisterEventHandlers(guiObject: GuiObject, eventHandlers: EventHandlerMap)
	self._eventPropagationService:deregisterEventHandlers(guiObject, eventHandlers)
	self:_updateActiveEventMap()
end

function FocusNavigationService:focusGuiObject(guiObject: GuiObject?, silent: boolean)
	-- TODO: Should we warn if trying to focus something that's not under the
	-- correct gui target? e.g. warn/error when trying to focus something under
	-- PlayerGui if core ui is enabled?
	if silent then
		-- If we've silenced the event, we need to identify which guiObjects
		-- we're going to and from so that we can respond accordingly
		self._silentBlurTarget = self._engineInterface.getSelection()
		self._silentFocusTarget = guiObject
	else
		-- Otherwise, clear the state to make sure we're somewhat resilient to
		-- weird interaction sequences or attempts to refocus during callbacks
		self._silentBlurTarget = nil
		self._silentFocusTarget = nil
	end
	self._engineInterface.setSelection(guiObject)
end

function FocusNavigationService:teardown()
	for _, connection in self._engineEventConnections do
		connection:Disconnect()
	end
end

return FocusNavigationService
