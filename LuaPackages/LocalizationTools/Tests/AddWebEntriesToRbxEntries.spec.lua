local AddWebEntriesToRbxEntries = require(script.Parent.Parent.GameTable.AddWebEntriesToRbxEntries)
local RecursiveEquals = require(script.Parent.RecursiveEquals)

local AppleTableData = {
	{
		identifier = {
			key = "APPLEWORD",
			source = "apple",
			context = "some/context",
		},
		metadata = {
			example = "Jimmy ate an apple.",
		},
		translations = {
			{locale = "es-es", translationText = "manzana"}
		},
	},
}

local AppleTableRbxEntries = {
	{
		Key = "APPLEWORD",
		Source = "apple",
		Context = "some/context",
		Example = "Jimmy ate an apple.",
		Values = {
			["es-es"] = "manzana",
		},
	},
}

local BananaTableData = {
	{
		identifier = {
			key = "BANANAWORD",
			source = "banana",
			context = "",
		},
		metadata = {
			example = "Jimmy ate a banana.",
		},
		translations = {
			{locale = "es-es", translationText = "platano"}
		},
	},
}

local FruitTableRbxEntries = {
	{
		Key = "APPLEWORD",
		Source = "apple",
		Context = "some/context",
		Example = "Jimmy ate an apple.",
		Values = {
			["es-es"] = "manzana",
		},
	},
	{
		Key = "BANANAWORD",
		Source = "banana",
		Context = "",
		Example = "Jimmy ate a banana.",
		Values = {
			["es-es"] = "platano",
		},
	},
}

local NonsenseTableData1 = {
	{
		notIdentifier = {
			wrong = "stuff",
		},
		translations = {
			{locale = "qwerty"}
		},
	},
}

local NonsenseTableData2 = {
	{
		identifier = {
			key = "SOMEWORD",
			source = "some",
			context = "some/context",
		},
		translations = {
			{translatedText = "some"}
		},
	},
}

return function()
	it("adds a single row without a fuss", function()
		local rbxEntries = {}
		AddWebEntriesToRbxEntries(AppleTableData, rbxEntries)
		assert( RecursiveEquals(rbxEntries, AppleTableRbxEntries) )
	end)

	it("adds two rows without a fuss", function()
		local rbxEntries = {}
		local info
		info = AddWebEntriesToRbxEntries(AppleTableData, rbxEntries)
		assert(info.success)
		info = AddWebEntriesToRbxEntries(BananaTableData, rbxEntries)
		assert(info.success)
		assert( RecursiveEquals(rbxEntries, FruitTableRbxEntries) )
	end)

	it("errors when you try to add a non-table", function()
		local rbxEntries = {}
		local info = AddWebEntriesToRbxEntries(17, rbxEntries)
		assert(not info.success)
		assert(type(info.errorMessage) == "string")
	end)

	it("errors when you try to add table that's formatted wrong 1", function()
		local rbxEntries = {}
		local info = AddWebEntriesToRbxEntries(NonsenseTableData1, rbxEntries)
		assert(not info.success)
		assert(type(info.errorMessage) == "string")
	end)

	it("errors when you try to add table that's formatted wrong 2", function()
		local rbxEntries = {}
		local info = AddWebEntriesToRbxEntries(NonsenseTableData2, rbxEntries)
		assert(not info.success)
		assert(type(info.errorMessage) == "string")
	end)
end