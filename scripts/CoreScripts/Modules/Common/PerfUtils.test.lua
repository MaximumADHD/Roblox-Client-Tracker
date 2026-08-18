local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local PerfUtils = require(script.Parent.PerfUtils)

it("should run without errors", function()
	PerfUtils.menuOpenBegin()
	PerfUtils.menuOpenComplete()
	PerfUtils.menuClose()
	PerfUtils.menuCloseComplete()
	PerfUtils.leavingGame()
end)
