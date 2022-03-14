return function()
	local expectDeepEqual = require(script.Parent.expectDeepEqual)

	it("should fail with a message when args are not equal", function()
		expect(function()
			expectDeepEqual(1, 2)
		end).to.throw("Values were not deep-equal.\nfirst ~= second")

		expect(function()
			expectDeepEqual({
				foo = 1,
			}, {
				foo = 2,
			})
		end).to.throw("Values were not deep-equal.\nfirst[foo] ~= second[foo]")
	end)

	it("should succeed when comparing non-table equal values", function()
		expect(function()
			expectDeepEqual(1, 1)
		end).never.to.throw()
		expect(function()
			expectDeepEqual("hello", "hello")
		end).never.to.throw()
		expect(function()
			expectDeepEqual(nil, nil)
		end).never.to.throw()

		local someFunction = function() end
		local theSameFunction = someFunction

		expect(function()
			expectDeepEqual(someFunction, theSameFunction)
		end).never.to.throw()

	end)

	it("should succeed when comparing different table identities with same structure", function()
		expect(function()
			expectDeepEqual({
				foo = "bar",
			}, {
				foo = "bar",
			})
		end).never.to.throw()
	end)
end
