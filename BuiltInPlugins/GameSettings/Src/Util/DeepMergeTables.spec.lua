return function()
	local Plugin = script.Parent.Parent.Parent

	local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)
	local Cryo = require(Plugin.Packages.Cryo)

	it("should return nil with an empty tables", function()
		local table1 = {}
		local table2 = {}

		expect(DeepMergeTables.Merge(table1, table2)).to.equal(nil)
	end)

	it("should treat nil tables as empty tables and return nil", function()
		local table1 = nil
		local table2 = nil

		expect(DeepMergeTables.Merge(table1, table2)).to.equal(nil)
	end)

	it("should merge two shallow seperate tables", function()
		local table1 = {key1 = "key1"}
		local table2 = {key2 = "key2"}

		local mergedTable = DeepMergeTables.Merge(table1, table2)
		expect(mergedTable.key1).to.equal("key1")
		expect(mergedTable.key2).to.equal("key2")
	end)

	it("should merge two seperate tables", function()
		local table1 = {key1 = {key2 = "key2"}}
		local table2 = {key3 = {key4 = "key4"}}

		local mergedTable = DeepMergeTables.Merge(table1, table2)
		expect(mergedTable.key1.key2).to.equal("key2")
		expect(mergedTable.key3.key4).to.equal("key4")
	end)

	it("should merge two seperate deep tables", function()
		local table1 = {key1 = {key2 = "key2"}}
		local table2 = {key1 = {key3 = "key3"}}

		local mergedTable = DeepMergeTables.Merge(table1, table2)
		expect(mergedTable.key1.key2).to.equal("key2")
		expect(mergedTable.key1.key3).to.equal("key3")
	end)

	it("should merge two seperate shallow/deep tables", function()
		local table1 = {key1 = "key1"}
		local table2 = {key2 = {key3 = "key3"}}

		local mergedTable = DeepMergeTables.Merge(table1, table2)
		expect(mergedTable.key1).to.equal("key1")
		expect(mergedTable.key2.key3).to.equal("key3")
	end)

	it("should shallow copy non-merged tables in the original table", function()
		local table1 = {key1 = {key2 = "key2"}}
		local table2 = {key3 = {key4 = "key4"}}

		local mergedTable = DeepMergeTables.Merge(table1, table2)
		expect(mergedTable.key1).to.equal(table1.key1)
	end)

	it("should deep copy the merged table even if nothing was merged", function()
		local table1 = {key1 = {key2 = "key2"}}
		local table2 = {key3 = {key4 = "key4"}}

		local mergedTable = DeepMergeTables.Merge(table1, table2)
		expect(mergedTable.key3).never.to.equal(table2.key3)
	end)

	it("should remove all empty tables and keys marked as Cryo.None even if that key doesn't exist", function()
		local table1 = {}
		local table2 = {key1 = {key2 = Cryo.None}}

		expect(DeepMergeTables.Merge(table1, table2)).to.equal(nil)
	end)

	it("should fail to remove empty tables if NONE was used in the original table", function()
		local table1 = {key1 = {key2 = Cryo.None}}
		local table2 = {}

		local mergedTable = DeepMergeTables.Merge(table1, table2)
		expect(mergedTable.key1.key2).to.equal(table1.key1.key2)
	end)

	it("should remove all empty tables and keys marked as Cryo.None when that key exists", function()
		local table1 = {key1 = {key2 = "test"}}
		local table2 = {key1 = {key2 = Cryo.None}}
		
		expect(DeepMergeTables.Merge(table1, table2)).to.equal(nil)
	end)

	it("should remove all empty tables and keys that are tables that are marked as Cryo.None when that key exists", function()
		local table1 = {key1 = {key2 = "test"}}
		local table2 = {key1 = Cryo.None}
		
		expect(DeepMergeTables.Merge(table1, table2)).to.equal(nil)
	end)

	it("should not remove tables marked as NONE in the original table even when there is a key in the merging table", function()
		local table1 = {key1 = {key2 = Cryo.None}}
		local table2 = {key1 = {key2 = "test"}}

		expect(DeepMergeTables.Merge(table1, table2).key1.key2).to.equal("test")
	end)

	it("should be able to merge keys and remove keys in the same merge", function()
		local table1 = {key1 = {key2 = "key2", key3 = "key3"}}
		local table2 = {key1 = {key2 = Cryo.None, key4 = "key4"}}

		local mergedTable = DeepMergeTables.Merge(table1, table2)
		expect(mergedTable.key1.key2).never.to.be.ok()
		expect(mergedTable.key1.key3).to.equal("key3")
		expect(mergedTable.key1.key4).to.equal("key4")
	end)
end