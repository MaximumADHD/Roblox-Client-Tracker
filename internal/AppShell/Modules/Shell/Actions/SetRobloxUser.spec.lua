return function()
	it("should return a table", function()
		local action = require(script.Parent.SetRobloxUser)

		expect(action).to.be.a("table")
	end)

	it("should return a table when called as a function", function()
		local action = require(script.Parent.SetRobloxUser)({robloxName="TestRobloxName", rbxuid=12345, under13 = true})

		expect(action).to.be.a("table")
	end)

	it("should set the name", function()
		local action = require(script.Parent.SetRobloxUser)

		expect(action.name).to.equal("SetRobloxUser")
	end)

	it("should set the robloxName, rbxuid, and under13 values", function()
		local action = require(script.Parent.SetRobloxUser)({robloxName="TestRobloxName", rbxuid=12345, under13 = true})

		expect(action.robloxName).to.be.a("string")
		expect(action.robloxName).to.equal("TestRobloxName")
		expect(action.rbxuid).to.be.a("number")
		expect(action.rbxuid).to.equal(12345)
		expect(action.under13).to.be.a("boolean")
		expect(action.under13).to.equal(true)
	end)

	it("should set the robloxName, rbxuid, and under13 values to nil when passed an empty table", function()
		local action = require(script.Parent.SetRobloxUser)({})

		expect(action.robloxName).to.equal(nil)
		expect(action.rbxuid).to.equal(nil)
		expect(action.under13).to.equal(nil)
	end)

	it("should set the type", function()
		local action = require(script.Parent.SetRobloxUser)({robloxName="TestRobloxName", rbxuid=12345, under13 = true})

		expect(action.type).to.equal("SetRobloxUser")
	end)
end