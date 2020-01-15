local RbxEntriesToWebEntries = require(script.Parent.Parent.GameTable.RbxEntriesToWebEntries)
local RecursiveEquals = require(script.Parent.RecursiveEquals)

local FruitTableRbxEntriesSpanish = {
	{
		Key = "APPLEWORD",
		Source = "apple",
		Context = "some/context",
		Example = "Jimmy ate an apple.",
		Values = {
			["es"] = "manzana",
		},
	},
	{
		Key = "BANANAWORD",
		Source = "banana",
		Context = "",
		Example = "Jimmy ate a banana.",
		Values = {
			["es"] = "platano",
		},
	},
}

local FruitTableWebEntries = {
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
			{locale = "es", translationText = "manzana"}
		},
		delete = false,
	},

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
			{locale = "es", translationText = "platano"}
		},
		delete = false,
	},
}

local FruitTableRbxEntriesCornish = {
	{
		Key = "APPLEWORD",
		Source = "apple",
		Context = "some/context",
		Example = "Jimmy ate an apple in Cornwall.",
		Values = {
			["kw-gb"] = "avel",
		},
	},
}

local FruitTableWebEntriesCornish = {
	{
		identifier = {
			key = "APPLEWORD",
			source = "apple",
			context = "some/context",
		},
		metadata = {
			example = "Jimmy ate an apple in Cornwall.",
		},
		translations = {
		},
		delete = false,
	},
}

local AppleTableRbxEntriesNoValues = {
	{
		Values = {},
		Key = "APPLEWORD",
		Example = "Jimmy ate an apple.",
		Context = "some/context",
		Source = "apple",
	},
}

local AppleTableWebEntriesNoTranslations = {
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
		},
		delete = false,
	},
}

local allSupportedLanguageSet = {
	["en"] = true,
	["es"] = true,
	["fr"] = true,
	["de"] = true,
	["ru"] = true,
}

local gameSupportedLanguageSet = {
	["en"] = true,
	["es"] = true,
}

local FruitTableRbxEntriesNewLanguages = {
	{
		Key = "APPLEWORD",
		Source = "apple",
		Context = "some/context",
		Example = "Jimmy ate an apple in Cornwall.",
		Values = {
			["ru"] = "ru blah",
			["es"] = "es blah",
		},
	},
}


return function()
	it("Converts a table with two entries into a web table", function()
		local info = RbxEntriesToWebEntries(FruitTableRbxEntriesSpanish, allSupportedLanguageSet)

		assert(RecursiveEquals(info.entries, FruitTableWebEntries))
		assert(info.totalRows == 2)
		assert(info.totalTranslations == 2)
		assert(info.supportedLocales == "es")
		assert(info.unsupportedLocales == "")
	end)

	it("Converts a table with unsupported locales into an empty web table", function()
		local info = RbxEntriesToWebEntries(FruitTableRbxEntriesCornish, allSupportedLanguageSet)

		assert(RecursiveEquals(info.entries, FruitTableWebEntriesCornish))
		assert(info.totalRows == 1)
		assert(info.totalTranslations == 0)
		assert(info.supportedLocales == "")
		assert(info.unsupportedLocales == "kw-gb")
	end)

	it("Converts a table with a zero-value entry into a row with no translations", function()
		local info = RbxEntriesToWebEntries(AppleTableRbxEntriesNoValues, allSupportedLanguageSet)

		assert(RecursiveEquals(info.entries, AppleTableWebEntriesNoTranslations))
		assert(info.totalRows == 1)
		assert(info.totalTranslations == 0)
		assert(info.supportedLocales == "")
		assert(info.unsupportedLocales == "")
	end)

	it("Converts a table with a new language to be added", function()
		local info = RbxEntriesToWebEntries(FruitTableRbxEntriesNewLanguages, allSupportedLanguageSet, gameSupportedLanguageSet)
		assert(info.newLanguages == "ru")
		assert(info.newLanguagesSet["ru"])
	end)

end
