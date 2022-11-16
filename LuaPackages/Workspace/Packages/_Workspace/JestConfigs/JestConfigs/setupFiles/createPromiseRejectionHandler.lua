local SETUP_SOURCE = [[
	local Root = script:FindFirstAncestor("JestConfigs")
	local Packages = Root.Parent
	
	local JestGlobals = require(Packages.JestGlobals)
	local beforeAll = JestGlobals.beforeAll
	local afterAll = JestGlobals.afterAll
	local expect = JestGlobals.expect
	
	local UnitTestHelpers = require(Packages.UnitTestHelpers)
	local createPromiseRejectionHandler = UnitTestHelpers.createPromiseRejectionHandler

	local RejectionHandler = createPromiseRejectionHandler()
	
	beforeAll(function()
		RejectionHandler.inject()
	end)
	
	afterAll(function()
		expect(function()
			RejectionHandler.reportRejections(%s, %s, %s)
		end).never.toThrow()
	end)
]]

return function(defaultThreshold: number?, allOnThreshold: number?, maybeMargin: number?)
	local module = Instance.new("ModuleScript")

	module.Source = SETUP_SOURCE:format(tostring(defaultThreshold), tostring(allOnThreshold), tostring(maybeMargin))
	module.Parent = script.Parent

	return module
end
