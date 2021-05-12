return function()
	local Plugin = script.Parent.Parent.Parent

	local convertArrayToTable = require(Plugin.Core.Util.convertArrayToTable)

	describe("convertArrayToTableKeyAndValues", function()
		local function tablelength(T)
			local count = 0
			for _ in pairs(T) do count = count + 1 end
			return count
		end

		it("should set input array values to be key and values of output table", function()
			local key = "TEST_VALUE_ONE"
			local input = {
				key
			}
			local result = convertArrayToTable(input)

			expect(tablelength(result)).to.equal(1)
			expect(result[key]).to.equal(key)
		end)

		it("should create an empty output table for an empty input array", function()
			local input = {}
			local result = convertArrayToTable(input)

			expect(tablelength(result)).to.equal(0)
		end)
	end)
end
