local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local ReactRoblox = require(Packages.ReactRoblox)

local function waitForEvents()
	-- UIBLOX-475: Fix reentrancy error with waitForEvents (@afletcher)
	-- task.defer(coroutine.running())
	-- coroutine.yield()
	task.wait(0)
end

local function actWaitForEvents()
	ReactRoblox.act(function()
		waitForEvents()
	end)
end

type WaitWithAct = (() -> ()) & { act: () -> () }

return (setmetatable({ act = actWaitForEvents }, { __call = waitForEvents }) :: any) :: WaitWithAct
