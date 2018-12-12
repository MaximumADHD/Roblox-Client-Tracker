local PatchInfo = require(script.Parent.Parent.GameTable.PatchInfo)
local RecursiveEquals = require(script.Parent.RecursiveEquals)

local EmptyTableData = {
}

local AppleTableDataTranslationFree = {
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
	},
}

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

local AppleTableDataWithDifferentExample = {
	{
		identifier = {
			key = "APPLEWORD",
			source = "apple",
			context = "some/context",
		},
		metadata = {
			example = "Jimmy ate a freakin' apple.",
		},
		translations = {
			{locale = "es-es", translationText = "manzana"}
		},
	},
}

local AppleTableDataWithGerman = {
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
			{locale = "es-es", translationText = "manzana"},
			{locale = "de-de", translationText = "Apfel"}
		},
	},
}

local AppleTableDataWithWrongGerman = {
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
			{locale = "es-es", translationText = "manzana"},
			{locale = "de-de", translationText = "WRONG"}
		},
	},
}

local AppleTableDataWithFrench = {
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
			{locale = "fr-fr", translationText = "Pomme"},
			{locale = "es-es", translationText = "manzana"},
		},
	},
}

local AppleTableDataWithEmptyAppleRow = {
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

local FruitTableData = {
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

local function TableSize(T)
	local size = 0
	for _,_ in pairs(T) do
		size = size + 1
	end
	return size
end

local function TableContains(T, entry)
	for _,t in pairs(T) do
		if RecursiveEquals(entry, t) then
			return true
		end
	end
	return false
end

local function TableContentsEqual(A, B)
	for _,t in pairs(A) do
		if not TableContains(B, t) then
			return false
		end
	end

	for _,t in pairs(B) do
		if not TableContains(A, t) then
			return false
		end
	end

	return true
end

local function TableConcat(...)
	local arg = {...}

	local result = {}
	for _,A in ipairs(arg) do
		for _,entry in ipairs(A) do
			table.insert(result, entry)
		end
	end

	return result
end

local function SelectivePatchConsistencyCheck(patchInfo)
	local addPatch = patchInfo.makePatch({
		addEnabled = true,
		changeEnabled = false,
		removeEnabled = false,
	})

	local changePatch = patchInfo.makePatch({
		addEnabled = false,
		changeEnabled = true,
		removeEnabled = false,
	})

	local removePatch = patchInfo.makePatch({
		addEnabled = false,
		changeEnabled = false,
		removeEnabled = true,
	})

	local fullPatch = patchInfo.makePatch({
		addEnabled = true,
		changeEnabled = true,
		removeEnabled = true,
	})

	assert(TableSize(addPatch.entries) == patchInfo.add)
	assert(TableSize(changePatch.entries) == patchInfo.change)
	assert(TableSize(removePatch.entries) == patchInfo.remove)

	local unionEntries = TableConcat(
		addPatch.entries,
		changePatch.entries,
		removePatch.entries)

	assert(TableSize(unionEntries) == TableSize(fullPatch.entries))
	assert(TableContentsEqual(unionEntries, fullPatch.entries))
end

return function()
	it("make a patch entry for a row replacing a copy of the row (that's an empty translations list)", function()
		local patch = PatchInfo.MakePatchEntryToChangeRow(BananaTableData[1], BananaTableData[1])
		assert(#(patch.translations) == 0)
	end)

	it("make patch entry for adding a translation to a row", function()
		local patch = PatchInfo.MakePatchEntryToChangeRow(AppleTableData[1], AppleTableDataWithGerman[1])
		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "de-de")
		assert(patch.translations[1].translationText == "Apfel")
	end)

	it("make patch entry to correct a single tranlsation", function()
		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableDataWithWrongGerman[1],
			AppleTableDataWithGerman[1])

		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "de-de")
		assert(patch.translations[1].translationText == "Apfel")
	end)

	it("make patch entry to remove a single translation from a single row", function()
		local patch = PatchInfo.MakePatchEntryToChangeRow(AppleTableDataWithGerman[1], AppleTableData[1])
		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == true)
		assert(patch.translations[1].locale == "de-de")
		assert(patch.translations[1].translationText == "Apfel")
	end)

	it("make patch entry to add a translation to an empty row", function()
		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableDataWithEmptyAppleRow[1],
			AppleTableData[1])
		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "es-es")
		assert(patch.translations[1].translationText == "manzana")
	end)

	it("make patch entry to change just the example in a row", function()
		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableData[1],
			AppleTableDataWithDifferentExample[1])
		assert(#(patch.translations) == 0)
		assert(patch.metadata.example == "Jimmy ate a freakin' apple.")
	end)

	it("add one row to an empty table", function()
		local patchInfo = PatchInfo.DiffTables("MyAppleTable", EmptyTableData, AppleTableData)
		assert(patchInfo.add == 1)
		assert(patchInfo.change == 0)
		assert(patchInfo.remove == 0)

		local fullPatch = patchInfo.makePatch({
			addEnabled = true,
			changeEnabled = true,
			removeEnabled = true,
		})

		assert(fullPatch.name == "MyAppleTable")

		SelectivePatchConsistencyCheck(patchInfo)

		assert(RecursiveEquals(fullPatch.entries, {
					{
						identifier = {
							key = "APPLEWORD",
							context = "some/context",
							source = "apple",
						},
						translations = {
							{
								locale = "es-es",
								translationText = "manzana",
								delete = false,
							},
						},
						metadata = {
							example = "Jimmy ate an apple.",
						},
						delete = false,
					},
				}
			)
		)
	end)

	it("add one row to a table with a different row already there", function()
		local patchInfo = PatchInfo.DiffTables("MyBananaTable", AppleTableData, BananaTableData)
		assert(patchInfo.add == 1)
		assert(patchInfo.change == 0)
		assert(patchInfo.remove == 1)

		local fullPatch = patchInfo.makePatch({
			addEnabled = true,
			changeEnabled = true,
			removeEnabled = true,
		})

		assert(fullPatch.name == "MyBananaTable")

		SelectivePatchConsistencyCheck(patchInfo)

		assert(RecursiveEquals(fullPatch.entries,
			{
				{
					identifier = {
						context = "",
						source = "banana",
						key = "BANANAWORD",
					},
					metadata = {
						example = "Jimmy ate a banana.",
					},
					translations = {
						{
							locale = "es-es",
							translationText = "platano",
							delete = false,
						},
					},
					delete = false,
				},
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
						{
							locale = "es-es",
							translationText = "manzana",
							delete = true,
						},
					},
					delete = true,
				},
			}
		))
	end)

	it("add a language to a row (de-de)", function()
		local patchInfo = PatchInfo.DiffTables("MyAppleTable", AppleTableData, AppleTableDataWithGerman)
		assert(patchInfo.add == 0)
		assert(patchInfo.change == 1)
		assert(patchInfo.remove == 0)

		local fullPatch = patchInfo.makePatch({
			addEnabled = true,
			changeEnabled = true,
			removeEnabled = true,
		})

		assert(fullPatch.name == "MyAppleTable")

		SelectivePatchConsistencyCheck(patchInfo)

		assert(RecursiveEquals(fullPatch.entries,
			{
				{
					identifier = {
						context = "some/context",
						source = "apple",
						key = "APPLEWORD",
					},
					metadata = {
						example = "Jimmy ate an apple.",
					},
					translations = {
						{
							locale = "de-de",
							translationText = "Apfel",
							delete = false,
						},
					},
					delete = false,
				},
			}
		))
	end)

	it("remove one language (de-de) add another langauge (fr-fr) to a row", function()
		local patchInfo = PatchInfo.DiffTables(
			"MyAppleTable",
			AppleTableDataWithGerman,
			AppleTableDataWithFrench)

		assert(patchInfo.add == 0)
		assert(patchInfo.change == 1)
		assert(patchInfo.remove == 0)

		local fullPatch = patchInfo.makePatch({
			addEnabled = true,
			changeEnabled = true,
			removeEnabled = true,
		})

		assert(fullPatch.name == "MyAppleTable")

		SelectivePatchConsistencyCheck(patchInfo)

		assert(RecursiveEquals(fullPatch.entries,
			{
				{
					identifier = {
						context = "some/context",
						source = "apple",
						key = "APPLEWORD",
					},
					metadata = {
						example = "Jimmy ate an apple.",
					},
					translations = {
						{
							locale = "de-de",
							translationText = "Apfel",
							delete = true,
						},
						{
							locale = "fr-fr",
							translationText = "Pomme",
							delete = false,
						},
					},
					delete = false,
				},
			}
		))
	end)

	it("change only the example", function()
		local patchInfo = PatchInfo.DiffTables(
			"MyAppleTable",
			AppleTableData,
			AppleTableDataWithDifferentExample)

		assert(patchInfo.add == 0)
		assert(patchInfo.change == 1)
		assert(patchInfo.remove == 0)

		local fullPatch = patchInfo.makePatch({
			addEnabled = true,
			changeEnabled = true,
			removeEnabled = true,
		})

		assert(fullPatch.name == "MyAppleTable")

		SelectivePatchConsistencyCheck(patchInfo)

		assert(RecursiveEquals(fullPatch.entries,
			{
				{
					identifier = {
						context = "some/context",
						source = "apple",
						key = "APPLEWORD",
					},
					metadata = {
						example = "Jimmy ate a freakin' apple.",
					},
					translations = {
					},
					delete = false,
				},
			}
		))
	end)

	it("delete a row with no translations in it", function()
		local patchInfo = PatchInfo.DiffTables(
			"MyAppleTable",
			AppleTableDataTranslationFree,
			EmptyTableData)

		assert(patchInfo.add == 0)
		assert(patchInfo.change == 0)
		assert(patchInfo.remove == 1)

		SelectivePatchConsistencyCheck(patchInfo)

		local fullPatch = patchInfo.makePatch({
			addEnabled = true,
			changeEnabled = true,
			removeEnabled = true,
		})

		assert(RecursiveEquals(fullPatch.entries,
			{
				{
					identifier = {
						context = "some/context",
						source = "apple",
						key = "APPLEWORD",
					},
					metadata = {
						example = "Jimmy ate an apple.",
					},
					translations = {
					},
					delete = true,
				},
			}
		))
	end)

	it("replace table with exact copy", function()
		local patchInfo = PatchInfo.DiffTables("MyFruitTable", FruitTableData, FruitTableData)
		assert(patchInfo.add == 0)
		assert(patchInfo.change == 0)
		assert(patchInfo.remove == 0)

		SelectivePatchConsistencyCheck(patchInfo)

		local fullPatch = patchInfo.makePatch({
			addEnabled = true,
			changeEnabled = true,
			removeEnabled = true,
		})

		assert(fullPatch.name == "MyFruitTable")
	end)
end




