return function()
	local Plugin = script.Parent.Parent

	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local runTest = TestHelpers.runTest

	it("should be able to run Rhodium tests", function()
		runTest(function() end)
	end)
end
