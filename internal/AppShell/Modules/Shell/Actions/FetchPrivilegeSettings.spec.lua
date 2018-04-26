return function()
	it("should return a table", function()
		local action = require(script.Parent.FetchPrivilegeSettings)

		expect(action).to.be.a("table")
	end)

	it("should return a table when called as a function", function()
		local action = require(script.Parent.FetchPrivilegeSettings)()

		expect(action).to.be.a("table")
	end)

	it("should set the name", function()
		local action = require(script.Parent.FetchPrivilegeSettings)

		expect(action.name).to.equal("FetchPrivilegeSettings")
	end)

	it("should set the type", function()
		local action = require(script.Parent.FetchPrivilegeSettings)()

		expect(action.type).to.equal("FetchPrivilegeSettings")
	end)
end