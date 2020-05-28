return function()
	local TableUtilities = require(script.Parent.TableUtilities)
	local NotForProductionUse = game:GetService("CoreGui").RobloxGui.Modules.NotForProductionUse
	local expectedFields = require(NotForProductionUse.UnitTestHelpers.expectedFields)

	describe("alias wrapper", function()
		it("SHOULD have all required fields", function()
			expectedFields(TableUtilities,  {
				"CheckListConsistency",
				"DeepEqual",
				"EqualKey",
				"FieldCount",
				"ListDifference",
				"Print",
				"RecursiveToString",
				"ShallowEqual",
				"TableDifference",
			})
		end)
	end)

	describe("legacy tests", function()
		it("should return whether tables are equal to each other", function()
			local tableA = nil
			local tableB = nil
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(false)

			tableA = nil
			tableB = {}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(false)

			tableA = {}
			tableB = nil
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(false)

			tableA = {}
			tableB = {}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(true)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value1",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(true)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value2",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key2 = "value1",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key2 = "value2",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value1",
				key2 = "value2",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).to.equal(false)
		end)

		it("should return whether tables are equal to each other at key", function()
			local tableA = nil
			local tableB = nil
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(false)

			tableA = nil
			tableB = {}
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(false)

			tableA = {}
			tableB = nil
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(false)

			tableA = {}
			tableB = {}
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value1",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(true)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value2",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key2 = "value1",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key2 = "value2",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value1",
				key2 = "value2",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).to.equal(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).to.equal(true)
			expect(TableUtilities.EqualKey(tableA, tableB, "key2")).to.equal(false)
		end)

		it("should return table's field count", function()
			local t = {}
			expect(TableUtilities.FieldCount(t)).to.equal(0)

			t = {
				key1 = "value1",
			}
			expect(TableUtilities.FieldCount(t)).to.equal(1)

			t = {
				key1 = "value1",
				key2 = "value2",
			}
			expect(TableUtilities.FieldCount(t)).to.equal(2)
		end)

		describe("TableUtilities.DeepEqual", function()
			it("works for primitve data types", function()
				expect(TableUtilities.DeepEqual(1, 1)).to.equal(true)
				expect(TableUtilities.DeepEqual("str1", "str1")).to.equal(true)
				expect(TableUtilities.DeepEqual(1, 2)).to.equal(false)
				expect(TableUtilities.DeepEqual("str1", "str2")).to.equal(false)
			end)
			it("correctly identifies deeply-equal tables", function()
				local table1 = {
					num = 1,
					innerTable = {
						innerString = "str"
					}
				}
				local table2 = {
					num = 1,
					innerTable = {
						innerString = "str"
					}
				}
				expect(TableUtilities.DeepEqual(table1, table2)).to.equal(true)
			end)
			it("correctly rejects non-deeply-equal tables", function()
				local table1 = {
					num = 1,
					innerTable = {
						innerString = "str"
					}
				}
				local table2 = {
					num = 1,
					innerTable = {
						innerString = "differentStr"
					}
				}
				expect(TableUtilities.DeepEqual(table1, table2)).to.equal(false)
				local table3 = {
					num = 1,
					innerTable = {
						innerString = "str"
					}
				}
				local table4 = {
					num = 1,
					innerTableWithDifferentKey = {
						innerString = "str"
					}
				}
				expect(TableUtilities.DeepEqual(table3, table4)).to.equal(false)
			end)
		end)
	end)
end
