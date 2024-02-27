-- APPFDN-1897 LuaAppReplaceTableUtilities TODO: Clean up this file

return function()
	local CorePackages = game:GetService("CorePackages")
	local t = require(CorePackages.Packages.t)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local TableUtilities = require(script.Parent.TableUtilities)

	if TableUtilities.GetFFlagLuaAppReplaceTableUtilities() then
		return
	end

	describe("alias wrapper", function()
		it("SHOULD have all required fields", function()
			local interface = t.strictInterface({
				CheckListConsistency = t.callback,
				DeepEqual = t.callback,
				EqualKey = t.callback,
				FieldCount = t.callback,
				ListDifference = t.callback,
				Print = t.callback,
				RecursiveToString = t.callback,
				ShallowEqual = t.callback,
				TableDifference = t.callback,
				GetFFlagLuaAppReplaceTableUtilities = t.callback
			})
			assert(interface(TableUtilities))
		end)
	end)

	describe("legacy tests", function()
		it("should return whether tables are equal to each other", function()
			local tableA = nil
			local tableB = nil
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(false)

			tableA = nil
			tableB = {}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(false)

			tableA = {}
			tableB = nil
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(false)

			tableA = {}
			tableB = {}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(true)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value1",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(true)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value2",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key2 = "value1",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key2 = "value2",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value1",
				key2 = "value2",
			}
			expect(TableUtilities.ShallowEqual(tableA, tableB)).toBe(false)
		end)

		it("should return whether tables are equal to each other at key", function()
			local tableA = nil
			local tableB = nil
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(false)

			tableA = nil
			tableB = {}
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(false)

			tableA = {}
			tableB = nil
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(false)

			tableA = {}
			tableB = {}
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value1",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(true)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value2",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key2 = "value1",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key2 = "value2",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(false)

			tableA = {
				key1 = "value1",
			}
			tableB = {
				key1 = "value1",
				key2 = "value2",
			}
			expect(TableUtilities.EqualKey(tableA, tableB)).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "")).toBe(false)
			expect(TableUtilities.EqualKey(tableA, tableB, "key1")).toBe(true)
			expect(TableUtilities.EqualKey(tableA, tableB, "key2")).toBe(false)
		end)

		it("should return table's field count", function()
			local t = {}
			expect(TableUtilities.FieldCount(t)).toBe(0)

			t = {
				key1 = "value1",
			}
			expect(TableUtilities.FieldCount(t)).toBe(1)

			t = {
				key1 = "value1",
				key2 = "value2",
			}
			expect(TableUtilities.FieldCount(t)).toBe(2)
		end)

		describe("TableUtilities.DeepEqual", function()
			it("works for primitve data types", function()
				expect(TableUtilities.DeepEqual(1, 1)).toBe(true)
				expect(TableUtilities.DeepEqual("str1", "str1")).toBe(true)
				expect(TableUtilities.DeepEqual(1, 2)).toBe(false)
				expect(TableUtilities.DeepEqual("str1", "str2")).toBe(false)
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
				expect(TableUtilities.DeepEqual(table1, table2)).toBe(true)
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
				expect(TableUtilities.DeepEqual(table1, table2)).toBe(false)
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
				expect(TableUtilities.DeepEqual(table3, table4)).toBe(false)
			end)
		end)
	end)
end
