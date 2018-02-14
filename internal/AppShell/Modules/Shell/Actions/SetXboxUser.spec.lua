return function()
	it("should return a table", function()
		local action = require(script.Parent.SetXboxUser)

		expect(action).to.be.a("table")
	end)

	it("should return a table when called as a function", function()
		local action = require(script.Parent.SetXboxUser)({gamertag="TestGamerTag", xuid=12345})

		expect(action).to.be.a("table")
	end)

	it("should set the name", function()
		local action = require(script.Parent.SetXboxUser)

		expect(action.name).to.equal("SetXboxUser")
	end)

	it("should set the gamertag and xuid values", function()
		local action = require(script.Parent.SetXboxUser)({gamertag="TestGamerTag", xuid=12345})

		expect(action.gamertag).to.be.a("string")
		expect(action.gamertag).to.equal("TestGamerTag")
		expect(action.xuid).to.be.a("number")
		expect(action.xuid).to.equal(12345)
	end)

	it("should set gamertag and xuid to nil if passed an empty table", function()
		local action = require(script.Parent.SetXboxUser)({})

		expect(action.gamertag).to.equal(nil)
		expect(action.xuid).to.equal(nil)
	end)

	it("should set the type", function()
		local action = require(script.Parent.SetXboxUser)({gamertag="TestGamerTag", xuid=12345})

		expect(action.type).to.equal("SetXboxUser")
	end)
end