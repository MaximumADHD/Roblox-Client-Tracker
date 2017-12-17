return function()
	local Analytics = require(script.Parent.Analytics)

	it("should properly construct a new object when .new() is called", function()
		local na = Analytics.new()
		expect(na).to.be.ok()
	end)

	it("should have a reporter specifically for Diag", function()
		local na = Analytics.new()
		expect(na.Diag).to.be.ok()
	end)

	it("should have a reporter specifically for RBXEventStream", function()
		local na = Analytics.new()
		expect(na.EventStream).to.be.ok()
	end)

	it("should have a reporter specifically for Google Analytics", function()
		local na = Analytics.new()
		expect(na.GoogleAnalytics).to.be.ok()
	end)

	it("should have a reporter specifically for Influx", function()
		local na = Analytics.new()
		expect(na.InfluxDb).to.be.ok()
	end)
end
