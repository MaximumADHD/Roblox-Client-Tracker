-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/__tests__/events.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local describe = JestGlobals.describe
local jest = JestGlobals.jest

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local React = require(Packages.React)

local ParentModule = require(script.Parent.Parent)
local render = ParentModule.render
local fireEvent = ParentModule.fireEvent

-- ROBLOX deviation START: subset with currently handled events
local eventTypes = {
	{
		type = "Mouse",
		events = {
			{ fireEventName = "click", instanceEventName = "Activated" },
		},
		elementType = "TextButton",
	},
	{
		type = "Keyboard",
		events = {
			{ fireEventName = "keyDown", instanceEventName = "InputBegan" },
			{ fireEventName = "keyUp", instanceEventName = "InputEnded" },
		},
		elementType = "TextBox",
		init = { key = Enum.KeyCode.Return },
	},
}
-- ROBLOX deviation END

-- ROBLOX deviation START: subset with implemented methods in RTL, but not implemented in DTL
local unhandledEventTypes = {
	{
		type = "Mouse",
		events = {
			{ fireEventName = "mouseEnter" },
			{ fireEventName = "mouseLeave" },
		},
		elementType = "TextButton",
	},
	{
		type = "Pointer",
		events = {
			{ fireEventName = "pointerEnter" },
			{ fireEventName = "pointerLeave" },
		},
		elementType = "TextButton",
	},
}
-- ROBLOX deviation END

Array.forEach(eventTypes, function(ref)
	local type_, events, elementType, init = ref.type, ref.events, ref.elementType, ref.init
	describe(("%s Events"):format(type_), function()
		Array.forEach(events, function(event: { fireEventName: string, instanceEventName: string })
			local propName = ("on%s%s"):format(event.fireEventName:sub(1, 1):upper(), event.fireEventName:sub(2))
			test(("triggers %s"):format(propName), function()
				local ref = React.createRef()
				local spy = jest.fn()
				render(React.createElement(elementType, { [React.Event[event.instanceEventName]] = spy, ref = ref }))
				fireEvent[event.fireEventName](ref.current, init)
				expect(spy).toHaveBeenCalledTimes(1)
			end)
		end)
	end)
end)

Array.forEach(eventTypes, function(ref)
	local type_, events, elementType, init = ref.type, ref.events, ref.elementType, ref.init
	describe(("Native %s Events"):format(type_), function()
		Array.forEach(events, function(eventName)
			local nativeEventName = eventName.fireEventName:lower() -- The doubleClick synthetic event maps to the dblclick native event
			if nativeEventName == "doubleclick" then
				nativeEventName = "dblclick"
			end
			test(("triggers native %s"):format(tostring(nativeEventName)), function()
				local ref = React.createRef()
				local spy = jest.fn()
				local Element = elementType
				local function NativeEventElement()
					React.useEffect(function()
						local element = ref.current
						local connection = element[eventName.instanceEventName]:Connect(function()
							spy()
						end)
						return function()
							connection:Disconnect()
						end
					end)
					return React.createElement(Element, { ref = ref })
				end
				render(React.createElement(NativeEventElement, nil))
				fireEvent[eventName.fireEventName](ref.current, init)
				expect(spy).toHaveBeenCalledTimes(1)
			end)
		end)
	end)
end)

test("onChange works", function()
	local handleChange = jest.fn()
	-- ROBLOX deviation START: wrap spy to filter Changed Event
	local wrappedHandleChange = function(_instance, property)
		if property == "Text" then
			handleChange()
		end
	end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: replace firstChild with Instance equivalent
	local input =
		render(React.createElement("TextBox", { [React.Event.Changed] = wrappedHandleChange })).container:GetChildren()[1]
	-- ROBLOX deviation END
	fireEvent.change(input, { target = { Text = "a" } })
	expect(handleChange).toHaveBeenCalledTimes(1)
end)

test("calling `fireEvent` directly works too", function()
	local handleEvent = jest.fn()
	-- ROBLOX deviation START: replace firstChild with Instance equivalent
	local button =
		render(React.createElement("TextButton", { [React.Event.Activated] = handleEvent })).container:GetChildren()[1]
	-- ROBLOX deviation END
	fireEvent(button, "click")
end)

-- ROBLOX deviation START: not handled
-- itSKIP("blur/focus bubbles in react", function()
-- 	local handleBlur = jest.fn()
-- 	local handleBubbledBlur = jest.fn()
-- 	local handleFocus = jest.fn()
-- 	local handleBubbledFocus = jest.fn()
-- 	local container = render(
-- 		React.createElement(
-- 			"Frame",
-- 			{ onBlur = handleBubbledBlur, onFocus = handleBubbledFocus },
-- 			React.createElement("TextButton", { onBlur = handleBlur, onFocus = handleFocus })
-- 		)
-- 	).container
-- 	local button = container:GetChildren()[1]:GetChildren()[1]
-- 	fireEvent.focus(button)
-- 	expect(handleBlur).toHaveBeenCalledTimes(0)
-- 	expect(handleBubbledBlur).toHaveBeenCalledTimes(0)
-- 	expect(handleFocus).toHaveBeenCalledTimes(1)
-- 	expect(handleBubbledFocus).toHaveBeenCalledTimes(1)
-- 	fireEvent.blur(button)
-- 	expect(handleBlur).toHaveBeenCalledTimes(1)
-- 	expect(handleBubbledBlur).toHaveBeenCalledTimes(1)
-- 	expect(handleFocus).toHaveBeenCalledTimes(1)
-- 	expect(handleBubbledFocus).toHaveBeenCalledTimes(1)
-- end)
-- ROBLOX deviation END

-- ROBLOX deviation START: No upstream equivalent

Array.forEach(unhandledEventTypes, function(ref)
	local type_, events, elementType, init = ref.type, ref.events, ref.elementType, ref.init
	describe(("Unhandled %s Events"):format(type_), function()
		Array.forEach(events, function(event: { fireEventName: string })
			local propName = ("on%s%s"):format(event.fireEventName:sub(1, 1):upper(), event.fireEventName:sub(2))
			test(("triggers %s"):format(propName), function()
				local ref = React.createRef()
				render(React.createElement(elementType, { ref = ref }))
				expect(function()
					fireEvent[event.fireEventName](ref.current, init)
				end).toThrowError("Event not found")
			end)
		end)
	end)
end)
-- ROBLOX deviation END
return {}
