return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local populateDictionaryFromIds = require(script.Parent.populateDictionaryFromIds)

	describe("GIVEN a dictionary of keys with single ids", function()
		local barId, worldId = "barId", "worldId"
		local barSource, worldSource = "barSource", "worldSource"
		local target = {
			foo = barId,
			hello = worldId,
		}
		local source = {
			[barId] = barSource,
			[worldId] = worldSource,
		}
		local result = populateDictionaryFromIds(target, source)

		it("SHOULD return a new map with all ids replaced with their sources", function()
			jestExpect(result).toEqual({
				foo = barSource,
				hello = worldSource,
			})
		end)
	end)

	describe("GIVEN a dictionary of keys with an array of ids", function()
		local barId, helloId, worldId = "barId", "helloId", "worldId"
		local barSource, helloSource, worldSource = "barSource", "helloSource", "worldSource"
		local target = {
			foo = { barId, helloId, worldId },
		}
		local source = {
			[barId] = barSource,
			[helloId] = helloSource,
			[worldId] = worldSource,
		}
		local result = populateDictionaryFromIds(target, source)

		it("SHOULD return a new map with all ides replaced with their sources", function()
			jestExpect(result).toEqual({ foo = { barSource, helloSource, worldSource } })
		end)
	end)
end
