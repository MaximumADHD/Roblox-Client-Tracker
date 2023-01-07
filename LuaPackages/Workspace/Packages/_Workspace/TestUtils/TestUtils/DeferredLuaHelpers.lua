--[[
    This file offers utility functions useful when working with deferred Lua in tests.

    Exported functions:

    # waitForEvents()
        Blocks the current thread and wait for queued up events to happen.
        Useful to mimic how the events used to resolve.
		Equivalent to `waitForEventsTimes(1)`

    # waitForEvents.act()
        Same thing as `waitForEvents()` but wrapped by ReactRoblox.act()

    # waitForEventsTimes(count: number)
        Blocks the current thread and wait for queued up events to happen.
		Repeats it `count` number of times.

    # waitForEventsTimes.act(count: number)
        Same thing as `waitForEventsTimes(count)` but wrapped by ReactRoblox.act()
		This will act `count` number of times.

    # forceUpdateGuiObject(...: GuiObject)
        Reads a property on UI objects in order to trigger engine layout changes.
        This should be used only to work around classes of engine bugs like
        https://jira.rbx.com/browse/UISYS-1746, because reading the state of
        a property should not cause visible side effects like those we observe today.

    # forceUpdateGuiObject.act(...: GuiObject)
        Same thing as `forceUpdateGuiObject()` but wrapped by ReactRoblox.act()
]]

local Root = script.Parent
local Packages = Root.Parent

local ReactRoblox = require(Packages.ReactRoblox)

type ActCallback = (() -> ()) -> ()

local function waitForEventsTimes(act: ActCallback, count: number)
	for i = 1, count do
		act(function()
			task.defer(coroutine.running())
			coroutine.yield()
		end)
	end
end

local function waitForEvents(act)
	waitForEventsTimes(act, 1)
end

local function forceUpdateGuiObject(act: ActCallback, ...: GuiObject)
	for i = 1, select("#", ...) do
		local object = select(i, ...)
		if object:IsA("ScrollingFrame") then
			local _ = object.AbsoluteCanvasSize.Y
		else
			local _ = object.AbsoluteSize.Y
		end
	end
	act(function()
		task.wait()
	end)
end

local function noAct(callback: () -> ())
	callback()
end

local function createActWrapper<T...>(callback: (ActCallback, T...) -> ()): ((T...) -> ()) & { act: (T...) -> () }
	return setmetatable({
		act = function(...: T...)
			return callback(ReactRoblox.act, ...)
		end,
	}, {
		__call = function(_self, ...: T...)
			return callback(noAct, ...)
		end,
	}) :: any
end

return {
	forceUpdateGuiObject = createActWrapper(forceUpdateGuiObject),
	waitForEvents = createActWrapper(waitForEvents),
	waitForEventsTimes = createActWrapper(waitForEventsTimes),
}
