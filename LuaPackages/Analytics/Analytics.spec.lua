return function()
	local Analytics = require(script.Parent.Analytics)

	describe("new()", function()
		it("should properly construct a new object", function()
			local na = Analytics.new()
			expect(na).to.be.ok()
		end)

		it("should accept a custom reporting service", function()
			local fakeService = {}
			local na = Analytics.new(fakeService)
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
	end)

	describe("mock()", function()
		it("should properly construct a new object", function()
			local ma = Analytics.mock()
			expect(ma).to.be.ok()
			expect(ma.Diag).to.be.ok()
			expect(ma.EventStream).to.be.ok()
			expect(ma.GoogleAnalytics).to.be.ok()
			expect(ma.InfluxDb).to.be.ok()
		end)

		it("should succeed for all function calls in Diag", function()
			local ma = Analytics.mock()
			ma.Diag:reportCounter("fakeCounter", 1)
			ma.Diag:reportStats("fakeCategory", 1)
		end)

		it("should succeed for all function call in EventStream", function()
			local ma = Analytics.mock()
			ma.EventStream:setRBXEvent("fakeContext", "fakeEventName")
			ma.EventStream:setRBXEventStream("fakeContext", "fakeEventName")
		end)

		it("should succeed for all function call in GoogleAnalytics", function()
			local ma = Analytics.mock()
			ma.GoogleAnalytics:trackEvent("fakeCategory", "fakeAction", "fakeLabel")
		end)

		it("should succeed for all function call in Influx", function()
			local ma = Analytics.mock()
			ma.InfluxDb:reportSeries("fakeSeries", {}, 1)
		end)
	end)
end
