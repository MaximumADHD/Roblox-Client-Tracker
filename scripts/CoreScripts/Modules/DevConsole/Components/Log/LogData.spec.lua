return function()
	local CorePackages = game:GetService("CorePackages")

	local LogData = require(script.Parent.LogData)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should initialize either client or server", function()
		local clientLogData = LogData.new(true)
		local serverLogData = LogData.new(false)
		expect(clientLogData).never.toBeNil()
		expect(serverLogData).never.toBeNil()
	end)

	it("should get and set the filters", function()
		local clientLogData = LogData.new(true)
		local key = "Output"
		local value = false

		local filters = clientLogData:getFilters()
		expect(filters[key]).toBe(true)

		clientLogData:setFilter(key, value)
		filters = clientLogData:getFilters()

		expect(filters[key]).toBe(value)
	end)
end
