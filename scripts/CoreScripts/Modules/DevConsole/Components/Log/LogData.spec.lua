return function()
	local LogData = require(script.Parent.LogData)

	it("should initialize either client or server", function()
		local clientLogData = LogData.new(true)
		local serverLogData = LogData.new(false)
		expect(clientLogData).to.be.ok()
		expect(serverLogData).to.be.ok()
	end)

	it("should get and set the filters", function()
		local clientLogData = LogData.new(true)
		local key = "Output"
		local value = false

		local filters = clientLogData:getFilters()
		expect(filters[key]).to.equal(true)

		clientLogData:setFilter(key, value)
		filters = clientLogData:getFilters()

		expect(filters[key]).to.equal(value)
	end)
end