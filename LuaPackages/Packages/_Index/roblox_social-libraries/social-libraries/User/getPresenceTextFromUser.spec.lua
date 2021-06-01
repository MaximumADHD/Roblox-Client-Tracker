return function()
	local getPresenceTextFromUser = require(script.Parent.getPresenceTextFromUser)

	describe("GIVEN a user who has presence", function()
		it("SHOULD return a string for OFFLINE users", function()
			local user = {
				presence = "OFFLINE",
			}
			local result = getPresenceTextFromUser(user)
			expect(type(result)).to.equal("string")
		end)
		it("SHOULD return a string for ONLINE users", function()
			local user = {
				presence = "ONLINE",
			}
			local result = getPresenceTextFromUser(user)
			expect(type(result)).to.equal("string")
		end)
		it("SHOULD return a string for INGAME users", function()
			local user = {
				presence = "INGAME",
			}
			local result = getPresenceTextFromUser(user)
			expect(type(result)).to.equal("string")
		end)
		it("SHOULD return a string for invalid presence", function()
			local user = {
				presence = "madeUpPresenceNeverOnProduction",
			}
			local result = getPresenceTextFromUser(user)
			expect(type(result)).to.equal("string")
		end)
	end)

	describe("GIVEN a user who does not have presence", function()
		it("SHOULD return a string", function()
			local user = {
				presence = nil,
			}
			local result = getPresenceTextFromUser(user)
			expect(type(result)).to.equal("string")
		end)
	end)

	describe("GIVEN a user who is IN_GAME and has lastLocation", function()
		it("SHOULD return lastLocation", function()
			local user = {
				presence = "IN_GAME",
				lastLocation = "lastLocation"
			}
			local result = getPresenceTextFromUser(user)
			expect(result).to.equal("lastLocation")
		end)
	end)

	describe("GIVEN a user who is IN_STUDIO and has lastLocation", function()
		it("SHOULD return lastLocation", function()
			local user = {
				presence = "IN_STUDIO",
				lastLocation = "lastLocation"
			}
			local result = getPresenceTextFromUser(user)
			expect(result).to.equal("lastLocation")
		end)
	end)
end
