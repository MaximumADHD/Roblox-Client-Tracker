return function()
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
			expect(result.foo).to.equal(barSource)
			expect(result.hello).to.equal(worldSource)
		end)
	end)

	describe("GIVEN a dictionary of keys with an array of ids", function()
		local barId, helloId, worldId = "barId", "helloId", "worldId"
		local barSource, helloSource, worldSource = "barSource", "helloSource", "worldSource"
		local target = {
			foo = {barId, helloId, worldId}
		}
		local source = {
			[barId] = barSource,
			[helloId] = helloSource,
			[worldId] = worldSource,
		}
		local result = populateDictionaryFromIds(target, source)

		it("SHOULD return a new map with all ides replaced with their sources", function()
			expect(result.foo[1]).to.equal(barSource)
			expect(result.foo[2]).to.equal(helloSource)
			expect(result.foo[3]).to.equal(worldSource)
		end)
	end)

end
