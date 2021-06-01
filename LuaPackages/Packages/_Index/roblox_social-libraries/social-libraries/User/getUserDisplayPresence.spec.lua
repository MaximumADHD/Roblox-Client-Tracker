return function()
	local getUserDisplayPresence = require(script.Parent.getUserDisplayPresence)

	local function isResultOk(result)
		expect(result).to.be.ok()
		expect(type(result.image)).to.equal("string")
		expect(type(result.text)).to.equal("string")
	end

	describe("GIVEN a user model with OFFLINE presence", function()
		local user = {
			presence = "OFFLINE",
			lastLocation = nil,
		}
		it("SHOULD return a string", function()
			local result = getUserDisplayPresence(user)
			isResultOk(result)
		end)
	end)

	describe("GIVEN a user model with ONLINE presence", function()
		local user = {
			presence = "ONLINE",
			lastLocation = nil,
		}
		it("SHOULD return a string", function()
			local result = getUserDisplayPresence(user)
			isResultOk(result)
		end)
	end)

	describe("GIVEN a user model with IN_GAME presence", function()
		describe("GIVEN lastLocation is nil", function()
			local user = {
				presence = "IN_GAME",
				lastLocation = nil,
			}
			it("SHOULD return a string", function()
				local result = getUserDisplayPresence(user)
				isResultOk(result)
			end)
		end)

		describe("GIVEN lastLocation is string", function()
			local user = {
				presence = "IN_GAME",
				lastLocation = "location",
			}
			it("SHOULD return a string", function()
				local result = getUserDisplayPresence(user)
				isResultOk(result)
			end)
		end)
	end)

	describe("GIVEN a user model with IN_STUDIO presence", function()
		describe("GIVEN lastLocation is nil", function()
			local user = {
				presence = "IN_STUDIO",
				lastLocation = nil,
			}
			it("SHOULD return a string", function()
				local result = getUserDisplayPresence(user)
				isResultOk(result)
			end)
		end)

		describe("GIVEN lastLocation is string", function()
			local user = {
				presence = "IN_STUDIO",
				lastLocation = "location",
			}
			it("SHOULD return a string", function()
				local result = getUserDisplayPresence(user)
				isResultOk(result)
			end)
		end)
	end)
end
