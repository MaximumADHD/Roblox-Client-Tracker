-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/fire-event.js
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

local exports = {}

local dtlFireEvent = require(Packages.DomTestingLibrary).fireEvent

-- react-testing-library's version of fireEvent will call
-- dom-testing-library's version of fireEvent. The reason
-- we make this distinction however is because we have
-- a few extra events that work a bit differently
local function _fireEvent(_self, ...: any)
	return dtlFireEvent(...)
end

local fireEvent = (setmetatable({}, { __call = _fireEvent }) :: any) :: Object

Array.forEach(Object.keys(dtlFireEvent), function(key)
	fireEvent[key] = function(...: any)
		return dtlFireEvent[key](...)
	end
end)

-- React event system tracks native mouseOver/mouseOut events for
-- running onMouseEnter/onMouseLeave handlers
-- @link https://github.com/facebook/react/blob/b87aabdfe1b7461e7331abb3601d9e6bb27544bc/packages/react-dom/src/events/EnterLeaveEventPlugin.js#L24-L31
local mouseEnter = fireEvent.mouseEnter
local mouseLeave = fireEvent.mouseLeave
fireEvent.mouseEnter = function(...: any)
	mouseEnter(...)
	return fireEvent.mouseOver(...)
end
fireEvent.mouseLeave = function(...: any)
	mouseLeave(...)
	return fireEvent.mouseOut(...)
end

local pointerEnter = fireEvent.pointerEnter
local pointerLeave = fireEvent.pointerLeave
fireEvent.pointerEnter = function(...: any)
	pointerEnter(...)
	return fireEvent.pointerOver(...)
end
fireEvent.pointerLeave = function(...: any)
	pointerLeave(...)
	return fireEvent.pointerOut(...)
end

-- ROBLOX deviation START: no select event available
-- local select_ = fireEvent.select
-- fireEvent.select = function(node, init)
-- 	select_(node, init)
-- 	-- React tracks this event only on focused inputs
-- 	node.focus()

-- 	-- React creates this event when one of the following native events happens
-- 	-- - contextMenu
-- 	-- - mouseUp
-- 	-- - dragEnd
-- 	-- - keyUp
-- 	-- - keyDown
-- 	-- so we can use any here
-- 	-- @link https://github.com/facebook/react/blob/b87aabdfe1b7461e7331abb3601d9e6bb27544bc/packages/react-dom/src/events/SelectEventPlugin.js#L203-L224
-- 	fireEvent.keyUp(node, init)
-- end
-- ROBLOX deviation END

-- React event system tracks native focusout/focusin events for
-- running blur/focus handlers
-- @link https://github.com/facebook/react/pull/19186
local blur = fireEvent.blur
local focus = fireEvent.focus
fireEvent.blur = function(...: any)
	fireEvent.focusOut(...)
	return blur(...)
end
fireEvent.focus = function(...: any)
	fireEvent.focusIn(...)
	return focus(...)
end

exports.fireEvent = fireEvent

return exports
