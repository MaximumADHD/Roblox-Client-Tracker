return function()
	local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
	local Packages = PlayabilityRodux.Parent

	local MockId = require(Packages.Dev.UnitTestHelpers).MockId
	local PlayabilityStatusReducer = require(script.Parent.PlayabilityStatusReducer)
	local SetPlayabilityStatus = require(PlayabilityRodux.Actions).SetPlayabilityStatus
	local PlayabilityStatusModel = require(PlayabilityRodux.Models).PlayabilityStatusModel
	local TableUtilities = require(Packages.Dev.tutils)

	local function createFakePlayabilityStatus()
		local playabilityStatus = PlayabilityStatusModel.mock()
		playabilityStatus.universeId = MockId()

		return playabilityStatus
	end

	local function createFakePlayabilityStatusTable(numPlayabilityStatus)
		local somePlayabilityStatus = {}
		for _ = 1, numPlayabilityStatus do
			local playabilityStatus = createFakePlayabilityStatus()
			somePlayabilityStatus[playabilityStatus.universeId] = playabilityStatus
		end

		return somePlayabilityStatus
	end

	it("should be empty by default", function()
		local defaultState = PlayabilityStatusReducer(nil, {})

		expect(defaultState).to.be.ok()
		expect(TableUtilities.fieldCount(defaultState)).to.equal(0)
	end)

	it("should be unmodified by other actions", function()
		local oldState = PlayabilityStatusReducer(nil, {})
		local newState = PlayabilityStatusReducer(oldState, { type = "not a real action" })

		expect(oldState).to.equal(newState)
	end)

	describe("SetPlayabilityStatus", function()
		it("should preserve purity", function()
			local oldState = PlayabilityStatusReducer(nil, {})
			local newState =
				PlayabilityStatusReducer(oldState, SetPlayabilityStatus(createFakePlayabilityStatusTable(1)))
			expect(oldState).to.never.equal(newState)
		end)

		it("should set playability status", function()
			local expectedNum = 5
			local somePlayabilityStatus = createFakePlayabilityStatusTable(expectedNum)
			local action = SetPlayabilityStatus(somePlayabilityStatus)

			local modifiedState = PlayabilityStatusReducer(nil, action)
			expect(TableUtilities.fieldCount(modifiedState)).to.equal(expectedNum)

			-- check that the PlayabilityStatusReducer have been added to the store
			for _, playabilityStatus in pairs(somePlayabilityStatus) do
				local storedPlayabilityStatus = modifiedState[playabilityStatus.universeId]
				for key in pairs(storedPlayabilityStatus) do
					expect(storedPlayabilityStatus[key]).to.equal(playabilityStatus[key])
				end
			end
		end)
	end)
end
