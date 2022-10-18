return function()
	local Analytics = require(script.Parent.Analytics)

	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	describe("new()", function()
		it("should properly construct a new object", function()
			local na = Analytics.new()
			jestExpect(na).never.toBeNil()
		end)

		it("should accept a custom reporting service", function()
			local fakeService = {}
			local na = Analytics.new(fakeService :: any)
			jestExpect(na).never.toBeNil()
		end)

		it("should have a reporter specifically for Diag", function()
			local na = Analytics.new()
			jestExpect(na.Diag).never.toBeNil()
		end)

		it("should have a reporter specifically for RBXEventStream", function()
			local na = Analytics.new()
			jestExpect(na.EventStream).never.toBeNil()
		end)

		it("should have a reporter specifically for Google Analytics", function()
			local na = Analytics.new()
			jestExpect(na.GoogleAnalytics).never.toBeNil()
		end)

		it("should have a reporter specifically for Influx", function()
			local na = Analytics.new()
			jestExpect(na.InfluxDb).never.toBeNil()
		end)
	end)

	describe("mock()", function()
		it("should properly construct a new object", function()
			local ma = Analytics.mock()
			jestExpect(ma).toEqual({
				Diag = jestExpect.anything(),
				EventStream = jestExpect.anything(),
				GoogleAnalytics = jestExpect.anything(),
				InfluxDb = jestExpect.anything()
			})
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
