--!nonstrict
return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local useExternalEvent = require(script.Parent.useExternalEvent)

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local waitForEvents = require(Packages.Dev.TestUtils).DeferredLuaHelpers.waitForEvents

	it("if mounted, should call the callback when the event is triggered", function()
		local event = Instance.new("BindableEvent")
		local count = 0

		local function component()
			useExternalEvent(event.Event, function()
				count += 1
			end)
			return nil
		end

		local element = React.createElement(component)

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		event:Fire()
		waitForEvents()

		expect(count).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)

		event:Fire()
		waitForEvents()

		expect(count).toBe(1)

		event:Destroy()
	end)

	-- A function can be passed to useState in place of the state value.
	-- To use a function as state, we must pass in another function that returns it.
	local function wrapFunction(func)
		return function()
			return func
		end
	end

	it("should handle updating the callback or event", function()
		local firstEvent = Instance.new("BindableEvent")
		local secondEvent = Instance.new("BindableEvent")
		local count = 0
		local changeEvent, changeCallback

		local function EventContainer()
			local event, setEvent = React.useState(firstEvent.Event)
			local callback, setCallback = React.useState(wrapFunction(function()
				count += 1
			end))

			useExternalEvent(event, callback)

			React.useEffect(function()
				changeEvent = setEvent
				changeCallback = function(newCallback)
					setCallback(wrapFunction(newCallback))
				end

				return function()
					changeEvent = nil
					changeCallback = nil
				end
			end, {})
			return nil
		end

		expect(count).toBe(0)

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		ReactRoblox.act(function()
			root:render(React.createElement(EventContainer))
		end)

		firstEvent:Fire()
		waitForEvents()

		expect(count).toBe(1)

		ReactRoblox.act(function()
			changeEvent(secondEvent.Event)
		end)

		firstEvent:Fire()
		waitForEvents()

		expect(count).toBe(1)

		secondEvent:Fire()
		waitForEvents()

		expect(count).toBe(2)

		ReactRoblox.act(function()
			changeCallback(function()
				-- this is intentionally blank
			end)
		end)

		secondEvent:Fire()
		waitForEvents()

		expect(count).toBe(2)
		firstEvent:Destroy()
		secondEvent:Destroy()
	end)
end
