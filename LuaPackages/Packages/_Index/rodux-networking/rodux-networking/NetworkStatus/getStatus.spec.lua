local Freeze = require(script.Parent.Freeze)

return function()
	local getStatus = require(script.Parent.getStatus)({
		keyPath = "testingKeyPathStatus",
	})
	local EnumNetworkStatus = require(script.Parent.EnumNetworkStatus)
	local TEST_KEY_1 = "item_key"

	it("should return NotStarted for missing key", function()
		local state = { testingKeyPathStatus = Freeze.UnorderedMap.new({}) }
		local status = getStatus(state, TEST_KEY_1)

		expect(status).to.equal(EnumNetworkStatus.NotStarted)
	end)

	it("should return matching status for state in store", function()
		local statusesToTest = {
			EnumNetworkStatus.NotStarted,
			EnumNetworkStatus.Fetching,
			EnumNetworkStatus.Done,
			EnumNetworkStatus.Failed
		}

		for _, testStatus in ipairs(statusesToTest) do
			local state = {
				testingKeyPathStatus = Freeze.UnorderedMap.new({
					[TEST_KEY_1] = testStatus
				})
			}

			expect(getStatus(state, TEST_KEY_1)).to.equal(testStatus)
		end
	end)
end
