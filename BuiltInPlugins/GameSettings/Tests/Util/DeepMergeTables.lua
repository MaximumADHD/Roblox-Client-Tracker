return function()
	local Plugin = script.Parent.Parent.Parent

	local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)

	it("should return nil with an empty tables", function()
		local table1 = {}
		local table2 = {}

		expect(DeepMergeTables(table1, table2)).to.equal(nil)
	end)

	it("should treat nil tables as empty tables and return nil", function()
		local table1 = nil
		local table2 = nil

		expect(DeepMergeTables(table1, table2)).to.equal(nil)
	end)

	it("should correctly merge two tables", function()
		local table1 = {key1 = {key2 = "key2"}}
		local table2 = {key1 = {key3 = "key3"}}

		local mergedTable = DeepMergeTables(table1, table2)
		expect(mergedTable.key1.key2).to.equal("key2")
		expect(mergedTable.key1.key3).to.equal("key3")
	end)

	it("should remove all empty tables and keys marked as DeepMergeTables.None if that key doesn't exist", function()
		local table1 = {key1 = {key2 = DeepMergeTables.None}}
		local table2 = {}

		expect(DeepMergeTables(table1, table2)).to.equal(nil)
	end)
	
	it("should remove all empty tables and keys marked as DeepMergeTables.None when that key exists", function()
		local table2 = {key1 = {key2 = "test"}}
		local table1 = {key1 = {key2 = DeepMergeTables.None}}
		
		expect(DeepMergeTables(table1, table2)).to.equal(nil)
	end)

	it("should remove all empty tables and keys marked as DeepMergeTables.None when that key exists, however order matters", function()
		local table1 = {key1 = {key2 = DeepMergeTables.None}}
		local table2 = {key1 = {key2 = "test"}}

		expect(DeepMergeTables(table1, table2).key1.key2).to.equal("test")
	end)

	it("should be able to merge keys and remove keys in the same merge", function()
		local table2 = {key1 = {key2 = "key2", key3 = "key3"}}
		local table1 = {key1 = {key2 = DeepMergeTables.None, key4 = "key4"}}

		local mergedTable = DeepMergeTables(table1, table2)
		expect(mergedTable.key1.key2).never.to.be.ok()
		expect(mergedTable.key1.key3).to.equal("key3")
		expect(mergedTable.key1.key4).to.equal("key4")
	end)
end