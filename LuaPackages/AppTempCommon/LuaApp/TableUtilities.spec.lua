return function()
	local TableUtilities = require(script.Parent.TableUtilities)

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
		local table = {}
		expect(TableUtilities.FieldCount(table)).to.equal(0)

		table = {
			key1 = "value1",
		}
		expect(TableUtilities.FieldCount(table)).to.equal(1)

		table = {
			key1 = "value1",
			key2 = "value2",
		}
		expect(TableUtilities.FieldCount(table)).to.equal(2)
	end)
end