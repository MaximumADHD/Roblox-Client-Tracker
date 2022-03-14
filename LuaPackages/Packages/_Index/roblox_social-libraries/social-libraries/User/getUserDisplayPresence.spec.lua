return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local getUserDisplayPresence = require(script.Parent.getUserDisplayPresence)

	local function isResultOk(result, presence)
		jestExpect(result).toEqual({
			image = jestExpect.any("string"),
			text = presence,
		})
	end

	describe("GIVEN a user model with OFFLINE presence", function()
		local user = {
			presence = "OFFLINE",
			lastLocation = nil,
		}
		it("SHOULD return a string", function()
			local result = getUserDisplayPresence(user)
			isResultOk(result, "Common.Presence.Label.Offline")
		end)
	end)

	describe("GIVEN a user model with ONLINE presence", function()
		local user = {
			presence = "ONLINE",
			lastLocation = nil,
		}
		it("SHOULD return a string", function()
			local result = getUserDisplayPresence(user)
			isResultOk(result, "Common.Presence.Label.Online")
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
				isResultOk(result,  "Common.Presence.Label.Online")
			end)
		end)

		describe("GIVEN lastLocation is string", function()
			local user = {
				presence = "IN_GAME",
				lastLocation = "location",
			}
			it("SHOULD return a string", function()
				local result = getUserDisplayPresence(user)
				isResultOk(result, "location")
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
				isResultOk(result, "Common.Presence.Label.Online")
			end)
		end)

		describe("GIVEN lastLocation is string", function()
			local user = {
				presence = "IN_STUDIO",
				lastLocation = "location",
			}
			it("SHOULD return a string", function()
				local result = getUserDisplayPresence(user)
				isResultOk(result, "location")
			end)
		end)
	end)
end
