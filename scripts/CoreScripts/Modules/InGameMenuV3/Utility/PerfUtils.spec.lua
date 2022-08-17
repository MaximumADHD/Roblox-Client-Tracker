return function()
	local PerfUtils = require(script.Parent.PerfUtils)

	it("should run without errors", function()
		PerfUtils.menuOpenBegin()
		PerfUtils.menuOpenComplete()
		PerfUtils.menuClose()
		PerfUtils.menuCloseComplete()
		PerfUtils.leavingGame()
	end)
end
