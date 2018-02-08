return function()
	it("should return a table", function()
		local action = require(script.Parent.SetUnder13)

		expect(action).to.be.a("table")
	end)

	it("should return a table when called as a function", function()
		local action = require(script.Parent.SetUnder13)()

		expect(action).to.be.a("table")
	end)

	it("should set the name", function()
		local action = require(script.Parent.SetUnder13)

		expect(action.name).to.equal("SetUnder13")
	end)

	it("should set the value", function()
		local action = require(script.Parent.SetUnder13)(true)

		expect(action.status).to.equal(true)
	end)

	it("should set the type", function()
		local action = require(script.Parent.SetUnder13)(true)

		expect(action.type).to.equal("SetUnder13")
	end)
end