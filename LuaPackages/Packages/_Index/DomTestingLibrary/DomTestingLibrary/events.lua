-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/events.js
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

local dispatchEvent = require(script.Parent.jsHelpers.dispatchEvent)

local exports = {}

local getConfig = require(script.Parent.config).getConfig
local _getWindowFromNode = require(script.Parent.helpers).getWindowFromNode
local event_mapModule = require(script.Parent["event-map"])
local eventMap = event_mapModule.eventMap
local _eventAliasMap = event_mapModule.eventAliasMap

local function _fireEvent(_self, element: Instance, event: string, init: { [string]: any })
	return getConfig().eventWrapper(function()
		if not event then
			error(Error.new("Unable to fire an event - please provide an event object."))
		end
		if not element then
			error(Error.new(
				-- ROBLOX deviation START: replace "DOM node" with "Instance". Events are strings instead of objects
				('Unable to fire a "%s" event - please provide an Instance.'):format(event)
				-- ROBLOX deviation END
			))
		end
		return dispatchEvent(element, event, init)
	end)
end
local fireEvent = setmetatable({}, { __call = _fireEvent })

-- ROBLOX deviation START: not used
-- local function createEvent(eventName, node, init, ref: Object?)
-- 	if ref == nil then
-- 		ref = {}
-- 	end
-- 	local EventType, defaultInit =
-- 		if ref.EventType == nil then "Event" else ref.EventType, if ref.defaultInit == nil then {} else ref.defaultInit
-- if not node then
-- error(Error.new(('Unable to fire a "%s" event - please provide an Instance.'):format(tostring(eventName))))
-- end
-- local eventInit = Object.assign({}, defaultInit, init)

-- local ref_= if eventInit.target then eventInit.target else {}
-- local value = ref_.value
-- local _files = ref._files
-- local targetProperties = Object.assign({}, ref_, {value = Object.None, files= Object.None})

-- if value ~= nil then
-- 	setNativeValue(node, value)
-- end
-- if files ~= nil then
-- 	-- input.files is a read-only property so this is not allowed:
-- 	-- input.files = [file]
-- 	-- so we have to use this workaround to set the property
-- 	Object.defineProperty(node, "files", { configurable = true, enumerable = true, writable = true, value = files })
-- end
-- 	Object.assign(node, targetProperties)

-- 	local window = getWindowFromNode(node)
-- 	local EventConstructor = Boolean.toJSBoolean(window[EventType]) and window[EventType]
-- 		or window.Event
-- 	local event
-- 	--[[ istanbul ignore else  ]]
-- 	if typeof(EventConstructor) == "function" then
-- 		event = EventConstructor.new(eventName, eventInit)
-- 	else
-- 		-- IE11 polyfill from https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/CustomEvent#Polyfill
-- 		event = window.document:createEvent(EventType)
-- 		local bubbles, cancelable, detail, otherInit =
-- 			eventInit.bubbles,
-- 			eventInit.cancelable,
-- 			eventInit.detail,
-- 			Object.assign({}, eventInit, { bubbles = Object.None, cancelable = Object.None, detail = Object.None })
-- 		event:initEvent(eventName, bubbles, cancelable, detail)
-- 		Array.forEach(Object.keys(otherInit), function(eventKey)
-- 			event[tostring(eventKey)] = otherInit[tostring(eventKey)]
-- 		end) --[[ ROBLOX CHECK: check if 'Object.keys(otherInit)' is an Array ]]
-- 	end -- DataTransfer is not supported in jsdom: https://github.com/jsdom/jsdom/issues/1568
-- 	local dataTransferProperties = { "dataTransfer", "clipboardData" }
-- 	Array.forEach(dataTransferProperties, function(dataTransferKey)
-- 		local dataTransferValue = eventInit[tostring(dataTransferKey)]
-- 		if typeof(dataTransferValue) == "table" then
-- 			--[[ istanbul ignore if  ]]
-- 			if typeof(window.DataTransfer) == "function" then
-- 				Object.defineProperty(event, dataTransferKey, {
-- 					value = Array.reduce(Object.getOwnPropertyNames(dataTransferValue), function(acc, propName)
-- 						Object.defineProperty(acc, propName, { value = dataTransferValue[tostring(propName)] })
-- 						return acc
-- 					end, window.DataTransfer.new()), --[[ ROBLOX CHECK: check if 'Object.getOwnPropertyNames(dataTransferValue)' is an Array ]]
-- 				})
-- 			else
-- 				Object.defineProperty(event, dataTransferKey, { value = dataTransferValue })
-- 			end
-- 		end
-- 	end) --[[ ROBLOX CHECK: check if 'dataTransferProperties' is an Array ]]
-- 	return event
-- end
-- ROBLOX devation END

Array.forEach(Object.keys(eventMap), function(key)
	-- ROBLOX deviation START: we don't create Events
	-- 	local EventType, defaultInit
	-- 	do
	-- 		local ref = eventMap[tostring(key)]
	-- 		EventType, defaultInit = ref.EventType, ref.defaultInit
	-- 	end
	-- 	local eventName = key:toLowerCase()
	-- 	createEvent[tostring(key)] = function(_self: any, node, init)
	-- 		return createEvent(eventName, node, init, { EventType = EventType, defaultInit = defaultInit })
	-- 	end
	-- ROBLOX deviation END
	fireEvent[key] = function(node, init)
		-- ROBLOX deviation START: we don't createEvent
		return fireEvent(node, key, init)
		-- ROBLOX deviation END
	end
end)

-- function written after some investigation here:
-- https://github.com/facebook/react/issues/10135#issuecomment-401496776
-- ROBLOX deviation START: not applicable
-- local function setNativeValue(element, value)
-- 	local valueSetter = (function()
-- 		local ref = Object.getOwnPropertyDescriptor(element, "value")
-- 		return Boolean.toJSBoolean(ref) and ref or {}
-- 	end)().set
-- 	local prototype = Object.getPrototypeOf(element)
-- 	local prototypeValueSetter = (function()
-- 		local ref = Object.getOwnPropertyDescriptor(prototype, "value")
-- 		return Boolean.toJSBoolean(ref) and ref or {}
-- 	end)().set
-- 	if
-- 		Boolean.toJSBoolean(
-- 			if Boolean.toJSBoolean(prototypeValueSetter)
-- 				then valueSetter ~= prototypeValueSetter
-- 				else prototypeValueSetter
-- 		)
-- 	then
-- 		prototypeValueSetter(element, value)
-- 	else
-- 		--[[ istanbul ignore if ]]
-- 		-- eslint-disable-next-line no-lonely-if -- Can't be ignored by istanbul otherwise
-- 		if Boolean.toJSBoolean(valueSetter) then
-- 			valueSetter(element, value)
-- 		else
-- 			error(Error.new("The given element does not have a value setter"))
-- 		end
-- 	end
-- end
-- Array.forEach(Object.keys(eventAliasMap), function(aliasKey)
-- 	local key = eventAliasMap[tostring(aliasKey)]
-- 	fireEvent[tostring(aliasKey)] = function(
-- 		_self: any,
-- 		...: any --[[ ROBLOX CHECK: check correct type of elements. ]]
-- 	)
-- 		local args = { ... }
-- 		return fireEvent[tostring(key)](fireEvent, table.unpack(Array.spread(args)))
-- 	end
-- end) --[[ ROBLOX CHECK: check if 'Object.keys(eventAliasMap)' is an Array ]]
-- ROBLOX deviation END
exports.fireEvent = fireEvent
-- ROBLOX deviation START: not required
-- exports.createEvent = createEvent
-- ROBLOX deviation END
--[[ eslint complexity:["error", 9] ]]
return exports
