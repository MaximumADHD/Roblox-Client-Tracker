--!strict
local Packages = script.Parent.Parent
local EventPropagationService = require(Packages.EventPropagation)
local Utils = require(Packages.FocusNavigationUtils)

local createSignal = Utils.createSignal
local shallowEqual = Utils.shallowEqual
local getAncestors = Utils.getAncestors
local warn = Utils.mockableWarn

local isValidFocusTarget = require(script.Parent.isValidFocusTarget)

local types = require(script.Parent.types)
type EventMap = types.EventMap
type EventData = types.EventData
type EngineInterface = types.EngineInterface
type ContainerFocusBehavior = types.ContainerFocusBehavior
type FocusBehaviorConnection = { behavior: ContainerFocusBehavior, connection: RBXScriptConnection }

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
	registerFocusBehavior: (self: FocusNavigationService, GuiObject, ContainerFocusBehavior) -> (),
	deregisterFocusBehavior: (self: FocusNavigationService, GuiObject, ContainerFocusBehavior) -> (),
	focusGuiObject: (self: FocusNavigationService, GuiObject?, boolean) -> (),
	teardown: (self: FocusNavigationService) -> (),

	activeEventMap: Utils.Signal<EventMap>,
	focusedGuiObject: Utils.Signal<GuiObject?>,
}

type FocusNavigationServicePrivate = {
	_eventMapByInstance: { [Instance]: EventMap },
	_focusBehaviorByInstance: { [Instance]: FocusBehaviorConnection },
	_eventPropagationService: EventPropagationService<EventData>,
	_engineInterface: EngineInterface,
	_engineEventConnections: { RBXScriptConnection },

	_silentFocusTarget: GuiObject?,
	_silentBlurTarget: GuiObject?,

	_fireActiveEventMapSignal: Utils.FireSignal<EventMap>,
	_fireFocusedGuiObjectSignal: Utils.FireSignal<GuiObject?>,

	_connectToInputEvents: (FocusNavigationServicePrivate) -> (),
	_fireInputEvent: (FocusNavigationServicePrivate, GuiObject, InputObject, boolean?) -> (),
	_updateActiveEventMap: (FocusNavigationServicePrivate, GuiObject?) -> (),
	_cancelHandler: (FocusNavigationServicePrivate, GuiObject, string) -> (),

	registerEventMap: (self: FocusNavigationServicePrivate, GuiObject, EventMap) -> (),
	deregisterEventMap: (self: FocusNavigationServicePrivate, GuiObject, EventMap) -> (),
	registerEventHandlers: (self: FocusNavigationServicePrivate, GuiObject, EventHandlerMap) -> (),
	deregisterEventHandlers: (self: FocusNavigationServicePrivate, GuiObject, EventHandlerMap) -> (),
	registerEventHandler: (self: FocusNavigationServicePrivate, GuiObject, string, EventHandler, EventPhase?) -> (),
	deregisterEventHandler: (self: FocusNavigationServicePrivate, GuiObject, string, EventHandler, EventPhase?) -> (),
	registerFocusBehavior: (self: FocusNavigationServicePrivate, GuiObject, ContainerFocusBehavior) -> (),
	deregisterFocusBehavior: (self: FocusNavigationServicePrivate, GuiObject, ContainerFocusBehavior) -> (),
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
		_focusBehaviorByInstance = setmetatable({}, { __mode = "k" }),
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

function FocusNavigationService:_fireInputEvent(focusedGuiObject: GuiObject, input: InputObject, wasProcessed: boolean?)
	local event = self.activeEventMap:getValue()[input.KeyCode]

	if event then
		self._eventPropagationService:propagateEvent(focusedGuiObject, event, {
			Delta = input.Delta,
			KeyCode = input.KeyCode,
			Position = input.Position,
			UserInputState = input.UserInputState,
			UserInputType = input.UserInputType,
			wasProcessed = wasProcessed,
		} :: EventData, false)
	end
end

function FocusNavigationService:_connectToInputEvents()
	-- Connect to UserInputService.InputBegan/Changed/Ended
	local function forwardInputEvent(input, wasProcessed)
		local currentFocus = self._engineInterface.getSelection()
		if currentFocus then
			self:_fireInputEvent(currentFocus, input, wasProcessed)
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
		if nextFocus then
			local silent = nextFocus == self._silentFocusTarget
			self._eventPropagationService:propagateEvent(nextFocus, "focus", nil, silent)
			self._silentFocusTarget = nil
		end
		self:_updateActiveEventMap(previousFocus)
	end
	table.insert(self._engineEventConnections, self._engineInterface.SelectionChanged:Connect(onFocusChanged))
end

function FocusNavigationService:_cancelHandler(target, eventName)
	if eventName ~= "blur" and eventName ~= "focus" then
		self._eventPropagationService:propagateEvent(target, eventName, {
			KeyCode = Enum.KeyCode.Unknown,
			UserInputType = Enum.UserInputType.None,
			UserInputState = Enum.UserInputState.Cancel,
		}, false)
	end
end

function FocusNavigationService:_updateActiveEventMap(previousFocus: GuiObject?)
	local activeEventMap = {}
	local currentFocus = self._engineInterface.getSelection()
	if currentFocus then
		local ancestorList = getAncestors(currentFocus)

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
		-- trigger "cancel" callbacks on deactivated event handlers that still
		-- exist, including events registered on unfocused GuiObjects
		if previousFocus then
			for key, eventName in lastEventMap do
				if not activeEventMap[key] then
					self:_cancelHandler(previousFocus, eventName)
				end
			end
		end
		self._fireActiveEventMapSignal(activeEventMap)
	end
end

function FocusNavigationService:registerEventMap(guiObject: GuiObject, eventMap: EventMap)
	local updatedEventMap: EventMap = self._eventMapByInstance[guiObject] or {}
	for keyCode, name in eventMap do
		if updatedEventMap[keyCode] and updatedEventMap[keyCode] ~= name then
			if _G.__DEV__ then
				warn(
					string.format(
						"New event will replace existing registered event mapped to %s:"
							.. "\n\t     new event: %s\n\texisting event: %s",
						tostring(keyCode),
						name,
						updatedEventMap[keyCode]
					)
				)
			end
		end
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
		else
			if _G.__DEV__ then
				warn(
					string.format(
						"Cannot deregister non-matching event input %s:"
							.. "\n\t  provided event: %s\n\tregistered event: %s",
						tostring(keyCode),
						name,
						updatedEventMap[keyCode]
					)
				)
			end
		end
	end
	self._eventMapByInstance[guiObject] = updatedEventMap
	self:_updateActiveEventMap(self.focusedGuiObject:getValue())
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
	-- Send cancel event preemptively, otherwise it won't be in the event map
	-- when we want to call it
	self:_cancelHandler(guiObject, eventName)
	self._eventPropagationService:deregisterEventHandler(guiObject, eventName, eventHandler, phase)
	self:_updateActiveEventMap(self.focusedGuiObject:getValue())
end

function FocusNavigationService:registerEventHandlers(guiObject: GuiObject, eventHandlers: EventHandlerMap)
	self._eventPropagationService:registerEventHandlers(guiObject, eventHandlers)
	self:_updateActiveEventMap()
end

function FocusNavigationService:deregisterEventHandlers(guiObject: GuiObject, eventHandlers: EventHandlerMap)
	-- Send cancel event preemptively, otherwise it won't be in the event map
	-- when we want to call it
	for eventName, _ in eventHandlers do
		self:_cancelHandler(guiObject, eventName)
	end

	self._eventPropagationService:deregisterEventHandlers(guiObject, eventHandlers)
	self:_updateActiveEventMap(self.focusedGuiObject:getValue())
end

function FocusNavigationService:registerFocusBehavior(guiObject: GuiObject, behavior: ContainerFocusBehavior)
	if _G.__DEV__ then
		local registered = self._focusBehaviorByInstance[guiObject]
		if registered ~= nil then
			warn(
				string.format(
					"New focus behavior will replace existing registered focus behavior:"
						.. "\n\t     new behavior: %s\n\texisting behavior: %s",
					tostring(behavior),
					tostring(registered.behavior)
				)
			)
		end
	end
	local containerFocusBehaviorConnection = {
		behavior = behavior,
		connection = guiObject.SelectionChanged:Connect(function(amI, old, new)
			if new and (amI or new:IsDescendantOf(guiObject)) then
				if not old or not old:IsDescendantOf(guiObject) then
					-- If the new focus is within our subtree and the old focus was
					-- nil or outside, our container is gaining focus from outside
					-- and we want to trigger our focus behavior
					local didRefocus = false
					for _, target in behavior.getTargets() do
						-- target validity check
						if isValidFocusTarget(target) then
							self:focusGuiObject(target, false)
							didRefocus = true
							break
						end
					end
					if not didRefocus then
						-- If we did not redirect focus just now, we trigger
						-- callbacks on the behavior so that it can track focus
						-- changes within the container; redirects will already
						-- be accounted for, since the subsequent event from a
						-- redirect will be handled here
						if behavior.onDescendantFocusChanged then
							behavior.onDescendantFocusChanged(new)
						end
					end
				else
					-- When focus moves within the container, tell the behavior
					-- about it so that it can track things like focus history
					if behavior.onDescendantFocusChanged then
						behavior.onDescendantFocusChanged(new)
					end
				end
			end
		end),
	}
	self._focusBehaviorByInstance[guiObject] = containerFocusBehaviorConnection
end

function FocusNavigationService:deregisterFocusBehavior(guiObject: GuiObject, behavior: ContainerFocusBehavior)
	local registered = self._focusBehaviorByInstance[guiObject]
	if _G.__DEV__ then
		if not registered then
			warn(
				string.format(
					"Cannot deregister an unregistered focus behavior:" .. "\n\t  provided behavior: %s",
					tostring(behavior)
				)
			)
		end
		if registered and registered.behavior ~= behavior then
			warn(
				string.format(
					"Cannot deregister non-matching focus behavior:"
						.. "\n\t  provided behavior: %s\n\tregistered behavior: %s",
					tostring(behavior),
					tostring(registered.behavior)
				)
			)
		end
	end

	if registered then
		registered.connection:Disconnect()
		self._focusBehaviorByInstance[guiObject] = nil
	end
end

function FocusNavigationService:focusGuiObject(guiObject: GuiObject?, silent: boolean)
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
	for _, behaviorConnection in self._focusBehaviorByInstance do
		behaviorConnection.connection:Disconnect()
	end
end

return FocusNavigationService
