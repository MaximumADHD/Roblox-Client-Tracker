return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local GameThumbnails = require(script.Parent.GameThumbnails)
	local AddGames = require(Modules.LuaApp.Actions.AddGames)
	local SetGameThumbnails = require(Modules.LuaApp.Actions.SetGameThumbnails)
	local Action = require(Modules.Common.Action)
	local MockId = require(Modules.LuaApp.MockId)

	local function createFakeThumbnail(placeId)
		return {
			universeId = MockId,
			placeId = placeId,
			url = "https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814",
			final = true
		}
	end

	local function createFakeThumbnailTable(number)
		local tmpTable = {}
		for i = 1, number do
			tmpTable[i] = createFakeThumbnail(i)
		end
		return tmpTable
	end

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	it("should be empty by default", function()
		local defaultState = GameThumbnails(nil, {})
		expect(type(defaultState)).to.equal("table")
		expect(countKeys(defaultState)).to.equal(0)
	end)

	it("should be unchanged by other actions", function()
		local oldState = GameThumbnails(nil, {})
		local newState = GameThumbnails(oldState, { type = "not a real action" })
		expect(oldState).to.equal(newState)
	end)

	describe("SetGameThumbnails", function()
		it("should preserve purity", function()
			local oldState = GameThumbnails(nil, {})
			local newState = GameThumbnails(oldState, SetGameThumbnails(createFakeThumbnailTable(1)))
			expect(oldState).to.never.equal(newState)
		end)

		it("should add thumbnails", function()
			local expectedNum = 5
			local someGameThumbnails = createFakeThumbnailTable(expectedNum)
			local action = SetGameThumbnails(someGameThumbnails)

			local modifiedState = GameThumbnails(nil, action)
			expect(countKeys(modifiedState)).to.equal(expectedNum)

			for _, gameThumbnail in pairs(someGameThumbnails) do
				local storedThumbnail = modifiedState[gameThumbnail.placeId]
				expect(storedThumbnail).to.equal(gameThumbnail.url)
			end
		end)
	end)
end