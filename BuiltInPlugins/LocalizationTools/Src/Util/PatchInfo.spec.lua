local PatchInfo = require(script.Parent.PatchInfo)
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

local AppleTableDataWithOnlyGerman = {
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

return function()
	it("make a patch entry for a row replacing a copy of the row (that's an empty translations list)", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			BananaTableData[1],
			BananaTableData[1],
			patchInfo,
			true)

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(#(patch.translations) == 0)
	end)

	it("make a patch entry for a row updating a copy of the row (that's an empty translations list)", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			BananaTableData[1],
			BananaTableData[1],
			patchInfo,
			false)

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(#(patch.translations) == 0)
	end)

	it("make patch entry for adding a translation to a row", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableData[1],
			AppleTableDataWithGerman[1],
			patchInfo,
			true)

		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "de-de")
		assert(patch.translations[1].translationText == "Apfel")

		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("make patch entry for updating a row with an added translation", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableData[1],
			AppleTableDataWithGerman[1],
			patchInfo,
			false)

		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "de-de")
		assert(patch.translations[1].translationText == "Apfel")

		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("make patch entry to correct a single tranlsation", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableDataWithWrongGerman[1],
			AppleTableDataWithGerman[1],
			patchInfo,
			true)

		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "de-de")
		assert(patch.translations[1].translationText == "Apfel")

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 1)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("make patch entry to correct update with a single tranlsation corrected", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableDataWithWrongGerman[1],
			AppleTableDataWithGerman[1],
			patchInfo,
			false)

		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "de-de")
		assert(patch.translations[1].translationText == "Apfel")

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 1)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("make patch entry to remove a single translation from a single row", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableDataWithGerman[1],
			AppleTableData[1],
			patchInfo,
			true)

		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == true)
		assert(patch.translations[1].locale == "de-de")
		assert(patch.translations[1].translationText == "Apfel")

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 1)
	end)

	it("make patch entry to update using a table with one entry missing from the current table", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableDataWithGerman[1],
			AppleTableData[1],
			patchInfo,
			false)

		assert(#(patch.translations) == 0)
		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("make patch entry to add a translation to an empty row", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableDataWithEmptyAppleRow[1],
			AppleTableData[1],
			patchInfo,
			true)

		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "es-es")
		assert(patch.translations[1].translationText == "manzana")

		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("make patch entry to update adding a translation to an empty row", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableDataWithEmptyAppleRow[1],
			AppleTableData[1],
			patchInfo,
			false)

		assert(#(patch.translations) == 1)
		assert(patch.translations[1].delete == false)
		assert(patch.translations[1].locale == "es-es")
		assert(patch.translations[1].translationText == "manzana")

		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("make patch entry to change just the example in a row", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableData[1],
			AppleTableDataWithDifferentExample[1],
			patchInfo,
			true)

		assert(#(patch.translations) == 0)
		assert(patch.metadata.example == "Jimmy ate a freakin' apple.")

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("make patch entry to update changing just the example in a row", function()
		local patchInfo = {
			numAddedTranslations = 0,
			numChangedTranslations = 0,
			numRemovedTranslations = 0,
		}

		local patch = PatchInfo.MakePatchEntryToChangeRow(
			AppleTableData[1],
			AppleTableDataWithDifferentExample[1],
			patchInfo,
			false)

		assert(#(patch.translations) == 0)
		assert(patch.metadata.example == "Jimmy ate a freakin' apple.")

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
	end)

	it("add one row to an empty table", function()
		local patchInfo = PatchInfo.DiffTables("MyAppleTable", EmptyTableData, AppleTableData, true)
		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 1)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyAppleTable")

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
		local patchInfo = PatchInfo.DiffTables("MyBananaTable", AppleTableData, BananaTableData, true)
		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 1)
		assert(patchInfo.numAddedEntries == 1)
		assert(patchInfo.numRemovedEntries == 1)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyBananaTable")

		assert(RecursiveEquals(fullPatch.entries,
			{
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
			}
		))
	end)

	it("update a table by adding a second row", function()
		local patchInfo = PatchInfo.DiffTables("MyBananaTable", AppleTableData, BananaTableData, false)
		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 1)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyBananaTable")

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
			}
		))
	end)

	it("add a language to a row (de-de)", function()
		local patchInfo = PatchInfo.DiffTables("MyAppleTable", AppleTableData, AppleTableDataWithGerman, true)
		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 0)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyAppleTable")

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

	it("update a table with a new language to a row (de-de)", function()
		local patchInfo = PatchInfo.DiffTables("MyAppleTable", AppleTableData, AppleTableDataWithGerman, false)
		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 0)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyAppleTable")

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

	it("update a table containing es-es using a table containing only de-de", function()
		local patchInfo = PatchInfo.DiffTables("MyAppleTable", AppleTableData, AppleTableDataWithOnlyGerman, false)
		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 0)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyAppleTable")

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
			AppleTableDataWithFrench,
			true)

		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 1)
		assert(patchInfo.numAddedEntries == 0)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyAppleTable")

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

	it("update a table containing es-es and de-de to add fr-fr", function()
		local patchInfo = PatchInfo.DiffTables(
			"MyAppleTable",
			AppleTableDataWithGerman,
			AppleTableDataWithFrench,
			false)

		assert(patchInfo.numAddedTranslations == 1)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 0)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyAppleTable")

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
			AppleTableDataWithDifferentExample,
			true)

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 0)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyAppleTable")

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
			EmptyTableData,
			true)

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 0)
		assert(patchInfo.numRemovedEntries == 1)

		local fullPatch = patchInfo.makePatch()

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
		local patchInfo = PatchInfo.DiffTables("MyFruitTable", FruitTableData, FruitTableData, true)

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 0)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

		assert(fullPatch.name == "MyFruitTable")
	end)

	it("add a row with no translations in it", function()
		local patchInfo = PatchInfo.DiffTables("MyBananaTable", BananaTableData, AppleTableDataWithEmptyAppleRow, false)

		assert(patchInfo.numAddedTranslations == 0)
		assert(patchInfo.numChangedTranslations == 0)
		assert(patchInfo.numRemovedTranslations == 0)
		assert(patchInfo.numAddedEntries == 1)
		assert(patchInfo.numRemovedEntries == 0)

		local fullPatch = patchInfo.makePatch()

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
					delete = false,
				},
			}
		))
	end)
end
