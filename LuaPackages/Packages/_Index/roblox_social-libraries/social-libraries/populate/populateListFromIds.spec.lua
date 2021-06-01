return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local tutils = dependencies.tutils
	local populateListFromIds = require(script.Parent.populateListFromIds)

	describe("GIVEN a list of keys with single ids", function()
		local barId, worldId = "barId", "worldId"
		local barSource, worldSource = "barSource", "worldSource"
		local target = { barId, worldId }
		local source = {
			[barId] = barSource,
			[worldId] = worldSource,
		}
		local result = populateListFromIds(target, source)

		it("SHOULD return a new map with all ids replaced with their sources", function()
			expect(tutils.shallowEqual(result, { barSource, worldSource })).to.equal(true)
		end)
	end)

	describe("GIVEN a list of keys with an array of ids", function()
		local barId, helloId, worldId = "barId", "helloId", "worldId"
		local barSource, helloSource, worldSource = "barSource", "helloSource", "worldSource"
		local target = {
			{barId, helloId, worldId}
		}
		local source = {
			[barId] = barSource,
			[helloId] = helloSource,
			[worldId] = worldSource,
		}
		local result = populateListFromIds(target, source)

		it("SHOULD return a new map with all ides replaced with their sources", function()
			local expected = {
				{ barSource, helloSource, worldSource }
			}
			expect(tutils.deepEqual(result, expected)).to.equal(true)
		end)
	end)
end
