return function()
	local ReportActionAnalytics = require(script.Parent.ReportActionAnalytics)

	it("should call the correct handler", function()
		local function nextDispatch() end

		local fooReported = false
		local barReported = false
		local bazReported = false

		local analytics = {
			report = function(self, name, action)
				if name == "foo" then
					fooReported = true
				elseif name == "bar" then
					barReported = true
				elseif name == "baz" then
					bazReported = true
				end
			end,
		}

		local mapping = {
			FooAction = "foo",
			BarAction = "bar",
			-- No mapping for baz
		}

		local middleware = ReportActionAnalytics(analytics, mapping)

		local FooAction = {
			type = "FooAction",
		}
		local BarAction = {
			type = "BarAction",
		}
		local BazAction = {
			type = "BazAction",
		}

		expect(fooReported).to.equal(false)
		expect(barReported).to.equal(false)
		expect(bazReported).to.equal(false)

		middleware(nextDispatch, nil)(FooAction)

		expect(fooReported).to.equal(true)
		expect(barReported).to.equal(false)
		expect(bazReported).to.equal(false)

		fooReported = false

		middleware(nextDispatch, nil)(BarAction)

		expect(fooReported).to.equal(false)
		expect(barReported).to.equal(true)
		expect(bazReported).to.equal(false)

		barReported = false

		middleware(nextDispatch, nil)(BazAction)

		expect(fooReported).to.equal(false)
		expect(barReported).to.equal(false)
		-- Baz should be false cause we didn't give a mapping
		expect(bazReported).to.equal(false)
	end)

	it("should act as a middleware", function()
		local analytics = {report = function() end}
		local mapping = {}

		local middleware = ReportActionAnalytics(analytics, mapping)

		local store = {}
		local thunkWasCalled = false
		middleware(nil, store)(function(s)
			expect(s).to.equal(store)
			thunkWasCalled = true
		end)
		expect(thunkWasCalled).to.equal(true)

		local action = {}
		local nextDispatchWasCalled = false
		middleware(function(a)
			expect(a).to.equal(action)
			nextDispatchWasCalled = true
		end, nil)(action)
		expect(nextDispatchWasCalled).to.equal(true)
	end)
end
