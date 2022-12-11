--[[
    This file offers utility functions useful when working with deferred Lua in tests.

    Exported functions:

    # waitForEvents()
        Blocks the current thread and wait for queued up events to happen.
        Useful to mimic how the events used to resolve.

    # waitForEvents.act()
        Same thing as `waitForEvents()` but wrapped by ReactRoblox.act()

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

local function waitForEvents()
	task.defer(coroutine.running())
	coroutine.yield()
end

local function forceUpdateGuiObject(...: GuiObject)
	for i = 1, select("#", ...) do
		local object = select(i, ...)
		if object:IsA("ScrollingFrame") then
			local _ = object.AbsoluteCanvasSize.Y
		else
			local _ = object.AbsoluteSize.Y
		end
	end
	task.wait()
end

local function acted<T...>(callback: (T...) -> ()): (T...) -> ()
	return function(...: T...)
		local args = table.pack(...)
		ReactRoblox.act(function()
			(callback :: any)(table.unpack(args))
		end)
	end
end

local function createActWrapper<T...>(callback: (T...) -> ()): ((T...) -> ()) & { act: (T...) -> () }
	return setmetatable({
		act = acted(callback),
	}, {
		__call = function(_self, ...: T...)
			return callback(...)
		end,
	}) :: any
end

return {
	forceUpdateGuiObject = createActWrapper(forceUpdateGuiObject),
	waitForEvents = createActWrapper(waitForEvents),
}
