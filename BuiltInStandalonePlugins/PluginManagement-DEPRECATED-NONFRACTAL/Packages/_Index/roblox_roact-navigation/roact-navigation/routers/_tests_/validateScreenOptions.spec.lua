return function()
	local validateScreenOptions = require(script.Parent.Parent.validateScreenOptions)

	it("should not throw when there are no problems", function()
		validateScreenOptions({ title = "foo" }, { routeName = "foo" })
	end)

	it("should throw error if no routeName is provided", function()
		local status, err = pcall(function()
			validateScreenOptions({ title = "bar" }, {})
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "route.routeName must be a string")).to.never.equal(nil)
	end)

	it("should throw error for options with function for title", function()
		expect(function()
			validateScreenOptions({
				title = function() end,
			}, { routeName = "foo" })
		end).to.throw()
	end)
end

