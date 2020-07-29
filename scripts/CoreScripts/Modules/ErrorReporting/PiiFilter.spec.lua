local MockPlayers = {}
MockPlayers.__index = MockPlayers

function MockPlayers.new()
	local playerAddedBindable = Instance.new("BindableEvent")
	local playerRemovingBindable = Instance.new("BindableEvent")

	local self = setmetatable({
		_playerAddedBindable = playerAddedBindable,
		_playerRemovingBindable = playerRemovingBindable,
		PlayerAdded = playerAddedBindable.Event,
		PlayerRemoving = playerRemovingBindable.Event,
		GetPlayerByUserId = MockPlayers.GetPlayerByUserId,
		GetPlayers = MockPlayers.GetPlayers,
		_players = {},
	}, MockPlayers)

	return self
end

function MockPlayers:addPlayer(userId, userName, displayName)
	local player = {
		UserId = userId,
		Name = userName,
		DisplayName = displayName,
	}

	table.insert(self._players, player)
	self._playerAddedBindable:Fire(player)

	return player
end

function MockPlayers:removePlayer(userId)
	for i = #self._players, 1, -1 do
		local player = self._players[i]
		if player.UserId == userId then
			self._playerRemovingBindable:Fire(player)
			table.remove(self._players, i)
			break
		end
	end
end

function MockPlayers:GetPlayerByUserId(userId)
	for _, player in ipairs(self._players) do
		if player.UserId == userId then
			return player
		end
	end

	return nil
end

function MockPlayers:GetPlayers()
	return self._players
end

return function()
	local PiiFilter = require(script.Parent.PiiFilter)

	it("should clean PII from strings", function()
		local mockPlayers = MockPlayers.new()
		mockPlayers:addPlayer(1234567, "TestUsername", "TestDisplayName")
		
		local filter = PiiFilter.new({
			eraseTimeout = 5,
			testHarness = {
				players = mockPlayers,
				wait = function() end,
			}
		})

		filter:startTracking()

		local testString = "something(1234567) + u/n TestUsername + display TestDisplayName"
		local expectedString = "something(UserId(1)) + u/n UserName(1) + display DisplayName(1)"
		local cleanedString = filter:cleanPii(testString)
		expect(cleanedString).to.equal(expectedString)

		filter:stopTracking()
	end)
	
	it("should use the same disambiguator if the player leaves and rejoins", function()
		local mockPlayers = MockPlayers.new()
		mockPlayers:addPlayer(1234567, "TestUsername", "TestDisplayName")
		
		local filter = PiiFilter.new({
			eraseTimeout = 5,
			testHarness = {
				players = mockPlayers,
				wait = function() end,
			}
		})

		filter:startTracking()

		local testString = "something(1234567) + u/n TestUsername + display TestDisplayName"
		local firstOutput = filter:cleanPii(testString)

		mockPlayers:removePlayer(1234567)
		mockPlayers:addPlayer(1234567)

		local secondOutput = filter:cleanPii(testString)
		expect(secondOutput).to.equal(firstOutput)

		filter:stopTracking()
	end)

	it("should keep PII info stored for a short time after the player leaves", function()
		local mockPlayers = MockPlayers.new()
		mockPlayers:addPlayer(1234567, "TestUsername", "TestDisplayName")

		local waitFnCallCount = 0
		local function waitFn(delay)
			expect(delay).to.equal(1)
			waitFnCallCount += 1
			wait(delay)
		end
		
		local filter = PiiFilter.new({
			eraseTimeout = 1,
			testHarness = {
				players = mockPlayers,
				wait = waitFn,
			}
		})

		filter:startTracking()
		mockPlayers:removePlayer(1234567)
		expect(waitFnCallCount).to.equal(1)

		-- It's within 1 second of the player leaving, so their information should still be stored
		-- in the filter and should be removed.
		local testString = "something(1234567) + u/n TestUsername + display TestDisplayName"
		local cleanedString = filter:cleanPii(testString)
		expect(cleanedString).to.equal("something(UserId(1)) + u/n UserName(1) + display DisplayName(1)")

		wait(1)
		
		-- At this point the PII info should be removed, per the erase timeout.
		-- We expect no filtering to take place.
		local uncleanedString = filter:cleanPii(testString)
		expect(uncleanedString).to.equal(testString)

		filter:stopTracking()
	end)
end
