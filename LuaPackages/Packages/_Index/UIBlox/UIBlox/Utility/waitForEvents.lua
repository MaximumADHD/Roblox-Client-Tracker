local Utility = script.Parent
local UIBlox = Utility.Parent
local Packages = UIBlox.Parent

local ReactRoblox = require(Packages.Dev.ReactRoblox)

local function waitForEvents()
	task.defer(coroutine.running())
	coroutine.yield()
end

local function actWaitForEvents()
	ReactRoblox.act(function()
		waitForEvents()
	end)
end

return setmetatable({ act = actWaitForEvents }, { __call = waitForEvents })
