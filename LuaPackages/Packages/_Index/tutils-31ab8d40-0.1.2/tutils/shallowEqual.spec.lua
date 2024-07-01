return function()
	local shallowEqual = require(script.Parent.shallowEqual)

	describe("WHEN given nil values", function()
		it("SHOULD return false if both values are nil", function()
			expect(shallowEqual(nil, nil)).to.equal(false)
		end)

		it("SHOULD return false if either value is nil", function()
			expect(shallowEqual(nil, {})).to.equal(false)
			expect(shallowEqual({}, nil)).to.equal(false)
		end)
	end)

	describe("WHEN given similar table values", function()
		it("SHOULD return true for two empty tables", function()
			expect(shallowEqual({}, {})).to.equal(true)
		end)

		it("SHOULD return true for one key dictionaries", function()
			local tableA = {
				key1 = "value1",
			}
			local tableB = {
				key1 = "value1",
			}
			expect(shallowEqual(tableA, tableB)).to.equal(true)
		end)
	end)

	describe("WHEN given dissimilar table values", function()
		it("SHOULD return false for same key, different values", function()
			local tableA = {
				key1 = "value1",
			}
			local tableB = {
				key1 = "value2",
			}
			expect(shallowEqual(tableA, tableB)).to.equal(false)
		end)

		it("SHOULD return false for different keys, same values", function()
			local tableA = {
				key1 = "value1",
			}
			local tableB = {
				key2 = "value1",
			}
			expect(shallowEqual(tableA, tableB)).to.equal(false)
		end)

		it("SHOULD return false for different keys, different values", function()
			local tableA = {
				key1 = "value1",
			}
			local tableB = {
				key2 = "value2",
			}
			expect(shallowEqual(tableA, tableB)).to.equal(false)
		end)

		it("SHOULD return false for extra keys", function()
			local tableA = {
				key1 = "value1",
			}
			local tableB = {
				key1 = "value1",
				key2 = "value2",
			}
			expect(shallowEqual(tableA, tableB)).to.equal(false)
		end)

		it("SHOULD return false if the different table value exist in inner level of nesting tables", function()
			local tableA = {
				value1 = "value1",
				value2 = {
					innerValue1 = "value2",
					innerValue2 = "value3",
				}
			}
			local tableB = {
				value1 = "value1",
				value2 = {
					innerValue1 = "value2",
					innerValue2 = "value4",
				}
			}
			expect(shallowEqual(tableA, tableB)).to.equal(false)
		end)
	end)

	describe("WHEN given ignore table", function()
		it("SHOULD return true if the different table value exist in ignore table", function()
			local tableA = {
				value1 = "value1",
				value2 = "value2",
			}
			local tableB = {
				value1 = "value1",
				value2 = "value1",
			}
			local ignore = {
				value2 = "value1",
			}
			expect(shallowEqual(tableA, tableB, ignore)).to.equal(true)
		end)
	end)
end
