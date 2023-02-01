-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/events.js
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local describe = JestGlobals.describe
local jest = JestGlobals.jest

local document = require(script.Parent.Parent.jsHelpers.document)

local event_mapModule = require(script.Parent.Parent["event-map"])
local _eventMap = event_mapModule.eventMap
local _eventAliasMap = event_mapModule.eventAliasMap
local ParentModule = require(script.Parent.Parent)
local fireEvent = ParentModule.fireEvent
local _createEvent = ParentModule.createEvent

-- ROBLOX deviation START: events behave different in Roblox, replacing object and logic
local eventTypes = {
	{
		type = "Mouse",
		events = {
			{
				name = "click",
				tests = {
					{
						element = "TextButton",
						props = { Size = UDim2.new(0, 100, 0, 100) },
						listener = "Activated",
					},
					{
						element = "Frame",
						props = { Size = UDim2.new(0, 100, 0, 100) },
						listener = "InputBegan",
					},
				},
			},
		},
	},
	{
		type = "Keyboard",
		events = {
			{
				name = "keyDown",
				tests = {
					{
						element = "Frame",
						props = { Size = UDim2.new(0, 100, 0, 100) },
						eventProps = { key = Enum.KeyCode.Escape },
						listener = "InputBegan",
					},
				},
			},
			{
				name = "keyUp",
				tests = {
					{
						element = "Frame",
						props = { Size = UDim2.new(0, 100, 0, 100) },
						eventProps = { key = Enum.KeyCode.Escape },
						listener = "InputEnded",
					},
				},
			},
		},
	},
	{
		type = "Input",
		events = {
			{
				name = "change",
				tests = {
					{
						element = "TextBox",
						props = { Size = UDim2.new(0, 100, 0, 100), Text = "" },
						eventProps = { target = { Text = "NewText" } },
						listener = "Changed",
						listenTo = "Text",
					},
				},
			},
		},
	},
}
-- ROBLOX deviation END

-- ROBLOX deviation START: not applicable
-- local _allEvents = Object.keys(eventMap)
-- local bubblingEvents = Array.filter(allEvents, function(eventName)
-- 	return eventMap[eventName].defaultInit.bubbles
-- end)

-- local composedEvents = Array.filter(allEvents, function(eventName)
-- 	return eventMap[eventName].defaultInit.composed
-- end)

-- local nonBubblingEvents = Array.filter(allEvents, function(eventName)
-- 	return not Boolean.toJSBoolean(
-- 		Array.includes(bubblingEvents, eventName)
-- 	)
-- end)

-- local nonComposedEvents = Array.filter(allEvents, function(eventName)
-- 	return not Boolean.toJSBoolean(
-- 		Array.includes(composedEvents, eventName)
-- 	)
-- end)
-- ROBLOX deviation END

Array.forEach(eventTypes, function(ref)
	local type_, events = ref.type, ref.events
	describe(("%s Events"):format(type_), function()
		Array.forEach(events, function(event)
			-- ROBLOX deviation START: adjust to deviated events
			test(("fires %s"):format(event.name), function()
				Array.forEach(event.tests, function(test)
					local node = Instance.new(test.element)
					local connection
					Array.forEach(test.props, function(prop)
						node[prop] = test.props[prop]
					end)
					local spy = jest.fn()
					connection = node[test.listener]:Connect(function(...)
						local args = { ... }
						if args[1] and (test.listenTo == args[1] or not test.listenTo) then
							spy()
						end
					end)
					fireEvent[event.name](node, test.eventProps)
					expect(spy).toHaveBeenCalledTimes(1)
					connection:Disconnect()
				end)
			end)
			-- ROBLOX deviation END
		end)
	end)
end)
test("fires resize", function()
	-- ROBLOX deviation START: using Frame instead of document.defaultView
	local node = Instance.new("Frame")
	node.Size = UDim2.new(0, 100, 0, 100)
	-- ROBLOX deviation END
	local spy = jest.fn()
	local connection
	connection = node.Changed:Connect(function(property: string)
		if property == "Size" then
			spy()
			connection:Disconnect()
		end
	end)
	fireEvent.resize(node, { value = UDim2.new(0, 200, 0, 200) })
	expect(spy).toHaveBeenCalledTimes(1)
end)

-- ROBLOX deviation START: events don't bubble
-- describe("Bubbling Events", function()
-- Array.forEach(bubblingEvents, function(event)
-- 	return it(("bubbles %s"):format(tostring(event)), function()
-- 		local node = document:createElement("div")
-- 		local spy = jest.fn()
-- 		node:addEventListener(event:toLowerCase(), spy)
-- 		local innerNode = document:createElement("div")
-- 		node:appendChild(innerNode)
-- 		fireEvent[tostring(event)](fireEvent, innerNode)
-- 		expect(spy).toHaveBeenCalledTimes(1)
-- 	end)
-- end)

-- Array.forEach(nonBubblingEvents, function(event)
-- 	return it(("doesn't bubble %s"):format(tostring(event)), function()
-- 		local node = document:createElement("div")
-- 		local spy = jest.fn()
-- 		node:addEventListener(event:toLowerCase(), spy)
-- 		local innerNode = document:createElement("div")
-- 		node:appendChild(innerNode)
-- 		fireEvent[event](fireEvent, innerNode)
-- 		expect(spy)["not"].toHaveBeenCalled()
-- 	end)
-- end)
-- end)
-- ROBLOX deviation END

-- ROBLOX deviation START: Shadow DOM not available, composed does not make sense
-- describe("Composed Events", function()
-- Array.forEach(composedEvents, function(event)
-- 	return it(("%s crosses shadow DOM boundary"):format(tostring(event)), function()
-- 		local node = document:createElement("div")
-- 		local spy = jest.fn()
-- 		node:addEventListener(event:toLowerCase(), spy)
-- 		local shadowRoot = node:attachShadow({ mode = "closed" })
-- 		local innerNode = document:createElement("div")
-- 		shadowRoot:appendChild(innerNode)
-- 		fireEvent[tostring(event)](fireEvent, innerNode)
-- 		expect(spy).toHaveBeenCalledTimes(1)
-- 	end)
-- end)

-- Array.forEach(nonComposedEvents, function(event)
-- 	return it(("%s does not cross shadow DOM boundary"):format(tostring(event)), function()
-- 		local node = document:createElement("div")
-- 		local spy = jest.fn()
-- 		node:addEventListener(event:toLowerCase(), spy)
-- 		local shadowRoot = node:attachShadow({ mode = "closed" })
-- 		local innerNode = document:createElement("div")
-- 		shadowRoot:appendChild(innerNode)
-- 		fireEvent[tostring(event)](fireEvent, innerNode)
-- 		expect(spy)["not"].toHaveBeenCalled()
-- 	end)
-- end)
-- end)
-- ROBLOX deviation END

-- ROBLOX deviation START: don't apply
-- describe("Aliased Events", function()
-- 	Array.forEach(Object.keys(eventAliasMap), function(eventAlias)
-- 		it(("fires %s"):format(tostring(eventAlias)), function()
-- 			local node = document:createElement("div")
-- 			local spy = jest.fn()
-- 			node:addEventListener(eventAliasMap[tostring(eventAlias)]:toLowerCase(), spy)
-- 			fireEvent[tostring(eventAlias)](fireEvent, node)
-- 			expect(spy).toHaveBeenCalledTimes(1)
-- 		end)
-- 	end)
-- end)
-- ROBLOX deviation END
test("assigns target properties", function()
	local node = Instance.new("TextBox")
	local spy = jest.fn()
	local value = "a"
	node.Changed:Connect(function(property: string)
		if property == "Text" then
			spy(node.Text)
		end
	end)
	fireEvent.change(node, { target = { Text = value } })
	expect(spy).toHaveBeenCalledTimes(1)
	expect(node).toHaveValue(value)
end)
test("assigns selection-related target properties", function()
	local node = Instance.new("TextBox")
	local spy = jest.fn()
	local value = "ab"
	local selectionStart = 1
	local selectionEnd = 2
	node.Changed:Connect(function(property: string)
		if property == "Text" then
			spy(node.Text)
		end
	end)
	fireEvent.change(
		node,
		{ target = { Text = value, SelectionStart = selectionStart, CursorPosition = selectionEnd } }
	)
	expect(node).toHaveValue(value)
	expect(node.SelectionStart).toBe(selectionStart)
	expect(node.CursorPosition).toBe(selectionEnd)
end)
test("assigning a value to a target that cannot have a value throws an error", function()
	local node = Instance.new("Frame")
	expect(function()
		return fireEvent.change(node, { value = "a" })
	end).toThrowError(
		-- ROBLOX deviation START: adapt error message
		"The change event must be fired in a TextBox Instance"
		-- ROBLOX deviation END
	)
end)

-- ROBLOX deviation START: not applicable
-- it("assigning the files property on an input", function()
-- 	local node = document:createElement("input")
-- 	local file = document.defaultView.File.new(
-- 		{ "(\u{2310}\u{25A1}_\u{25A1})" },
-- 		"chucknorris.png",
-- 		{ type = "image/png" }
-- 	)
-- 	fireEvent:change(node, { target = { files = { file } } })
-- 	expect(node.files).toEqual({ file })
-- end)
-- ROBLOX deviation END

-- ROBLOX deviation START: not applicable
-- it("assigns dataTransfer properties", function()
-- 	local node = document:createElement("div")
-- 	local spy = jest.fn()
-- 	node:addEventListener("dragover", spy)
-- 	fireEvent:dragOver(node, { dataTransfer = { dropEffect = "move" } })
-- 	expect(spy).toHaveBeenCalledTimes(1)
-- 	expect(spy.mock.calls[
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	][
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	]).toHaveProperty("dataTransfer.dropEffect", "move")
-- end)

-- it("assigns dataTransfer non-enumerable properties", function()
-- 	window.DataTransfer = function(self: any) end
-- 	local node = document:createElement("div")
-- 	local spy = jest.fn()
-- 	local item = {}
-- 	local dataTransfer = window.DataTransfer.new()
-- 	Object.defineProperty(dataTransfer, "items", { value = { item }, enumerable = false })
-- 	node:addEventListener("drop", spy)
-- 	fireEvent:drop(node, { dataTransfer = dataTransfer })
-- 	expect(spy).toHaveBeenCalledTimes(1)
-- 	expect(spy.mock.calls[
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	][
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	].dataTransfer.items).toHaveLength(1)
-- 	window.DataTransfer = nil
-- end)

-- it("assigning the files property on dataTransfer", function()
-- 	local node = document:createElement("div")
-- 	local file = document.defaultView.File.new(
-- 		{ "(\u{2310}\u{25A1}_\u{25A1})" },
-- 		"chucknorris.png",
-- 		{ type = "image/png" }
-- 	)
-- 	local spy = jest.fn()
-- 	node:addEventListener("drop", spy)
-- 	fireEvent:drop(node, { dataTransfer = { files = { file } } })
-- 	expect(spy).toHaveBeenCalledTimes(1)
-- 	expect(spy.mock.calls[
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	][
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	]).toHaveProperty("dataTransfer.files", { file })
-- end)

-- it("assigns clipboardData properties", function()
-- 	local node = document:createElement("div")
-- 	local spy = jest.fn()
-- 	node:addEventListener("paste", spy)
-- 	local clipboardData = {
-- 		dropEffect = "none",
-- 		effectAllowed = "uninitialized",
-- 		files = {},
-- 		items = {
-- 			{
-- 				kind = "string",
-- 				type = "text/plain",
-- 				file = {
-- 					getAsFile = function(self)
-- 						return nil
-- 					end,
-- 				},
-- 			},
-- 		},
-- 		types = { "text/plain" },
-- 		getData = function(self)
-- 			return "example"
-- 		end,
-- 	}
-- 	fireEvent:paste(node, { clipboardData = clipboardData })
-- 	expect(spy).toHaveBeenCalledTimes(1)
-- 	expect(spy.mock.calls[
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	][
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	].clipboardData).toBe(clipboardData)
-- 	expect(clipboardData.items[
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	].file:getAsFile()).toBeNull()
-- 	expect(clipboardData:getData("text")).toBe("example")
-- end)
-- ROBLOX deviation END

-- ROBLOX deviation START: no equivalent
-- it("fires events on Window", function()
-- 	local messageSpy = jest.fn()
-- 	window:addEventListener("message", messageSpy)
-- 	fireEvent(window, window.MessageEvent.new("message", { data = "hello" }))
-- 	expect(messageSpy).toHaveBeenCalledTimes(1)
-- 	window:removeEventListener("message", messageSpy)
-- end)

-- it("fires history popstate event on Window", function()
-- 	local popStateSpy = jest.fn()
-- 	window:addEventListener("popstate", popStateSpy)
-- 	fireEvent:popState(window, { location = "http://www.example.com/?page=1", state = { page = 1 } })
-- 	expect(popStateSpy).toHaveBeenCalledTimes(1)
-- 	window:removeEventListener("popstate", popStateSpy)
-- end)

-- it("fires shortcut events on Window", function()
-- 	local clickSpy = jest.fn()
-- 	window:addEventListener("click", clickSpy)
-- 	fireEvent:click(window)
-- 	expect(clickSpy).toHaveBeenCalledTimes(1)
-- 	window:removeEventListener("click", clickSpy)
-- end)
-- ROBLOX deviation END
test("throws a useful error message when firing events on non-existent nodes", function()
	expect(function()
		-- ROBLOX deviation START: Event as string
		return fireEvent(nil, "click")
		-- ROBLOX deviation END
	end).toThrow(
		-- ROBLOX deviation START: adapt error message
		'Unable to fire a "click" event - please provide an Instance.'
		-- ROBLOX deviation END
	)
end)
test("throws a useful error message when firing events on non-existent nodes (shortcut)", function()
	expect(function()
		return fireEvent.click(nil)
	end).toThrow(
		-- ROBLOX deviation START: adapt error message
		'Unable to fire a "click" event - please provide an Instance.'
	)
	-- ROBLOX deviation END
end)
test("throws a useful error message when firing non-events", function()
	local div = Instance.new("Frame")
	div.Parent = document
	expect(function()
		return fireEvent(div, nil)
	end).toThrow("Unable to fire an event - please provide an event object.")
end)

-- ROBLOX deviation START: Document is a Folder so it's not clickable, testing a Frame
test("fires events on document", function()
	local div = Instance.new("Frame")
	div.Size = UDim2.new(0, 100, 0, 100)

	local keyDownSpy = jest.fn()
	local connection = div.InputBegan:Connect(function(...)
		keyDownSpy(...)
	end)
	fireEvent.keyDown(div, { key = Enum.KeyCode.Escape })

	expect(keyDownSpy).toHaveBeenCalledTimes(1)
	connection:Disconnect()
end)
-- ROBLOX deviation END

-- ROBLOX deviation START: No custom events
-- it("can create generic events", function()
-- 	local el = Instance.new("Frame")
-- 	el.Parent = document
-- 	local eventName = "my-custom-event"
-- 	local handler = jest.fn()
-- 	el:addEventListener(eventName, handler)
-- 	local event = createEvent(eventName, el)
-- 	fireEvent(el, event)
-- 	expect(handler).toHaveBeenCalledTimes(1)
-- 	expect(handler).toHaveBeenCalledWith(event)
-- end)
-- ROBLOX deviation END
return {}
