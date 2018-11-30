local PatchInfo = require(script.Parent.Parent.GameTable.PatchInfo)
local RecursiveEquals = require(script.Parent.RecursiveEquals)

local AppleRowNoTranslations = {
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
}

local BananaRowNoTranslations = {
	identifier = {
		key = "BANANAWORD",
		source = "banana",
		context = "some/context",
	},
	metadata = {
		example = "Jimmy ate a banana.",
	},
	translations = {
	},
}

local AppleRow = {
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
}

local AppleRowWithFrench = {
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
		{locale = "fr-fr", translationText = "Pomme"},
	},
}

local BananaRowWithFrench = {
	identifier = {
		key = "BANANAWORD",
		source = "banana",
		context = "some/context",
	},
	metadata = {
		example = "Jimmy ate a banana.",
	},
	translations = {
		{locale = "es-es", translationText = "platano"},
		{locale = "fr-fr", translationText = "banane"},
	},
}

local BananaRowWithJustFrench = {
	identifier = {
		key = "BANANAWORD",
		source = "banana",
		context = "some/context",
	},
	metadata = {
		example = "Jimmy ate a banana.",
	},
	translations = {
		{locale = "fr-fr", translationText = "banane"},
	},
}

local BananaRow = {
	identifier = {
		key = "BANANAWORD",
		source = "banana",
		context = "some/context",
	},
	metadata = {
		example = "Jimmy ate a banana.",
	},
	translations = {
		{locale = "es-es", translationText = "platano"}
	},
}

local ApplePatch = {
	name = "ApplePatchTable",
	entries = {
		AppleRow,
	}
}

local AppleAndBananaPatch = {
	entries = {
		AppleRow,
		BananaRow,
	}
}

local FruitPatchNoTranslations = {
	name = "FruitPatchTable",
	entries = {
		AppleRowNoTranslations,
		BananaRowNoTranslations,
	}
}

local AppleAndBananaPatchWithFrench = {
	entries = {
		AppleRowWithFrench,
		BananaRowWithFrench,
	}
}

local function MakeRectangularTable(width, height)
	local patch = {entries = {}}
	local index = 0
	for j = 1,height do
		local row = {
			identifier = {
				key = "KEY"..j,
				source = "source"..j,
				context = "context/"..j,
			},
			metadata = {
				example = "example"..j,
			},
			translations = {
			},
		}
		for i = 1,width do
			table.insert(row.translations, {
				locale = "loc-"..tostring(i),
				translationText = "text-"..tostring(index),
			})

			index = index + 1
		end
		table.insert(patch.entries, row)
	end

	return patch
end

--[[
	Takes a number n.
	Returns a list like this
	{"text-0", "text-1", ... "text-(n-1)"}
]]
local function MakeStraightList(n)
	local list = {}
	for i=0,(n-1) do
		table.insert(list, "text-"..i)
	end
	return list
end

--[[
	Takes a list of patches, and extracts all the translations,
	inserts each one into a new list and returns that accumlated list
]]
local function ListTranslations(patches)
	local list = {}
	for _,patch in ipairs(patches) do
		for _,row in ipairs(patch.entries) do
			for _,translation in ipairs(row.translations) do
				table.insert(list, translation.translationText)
			end
		end
	end

	return list
end

--[[
	Goes through a patch and finds the total number of rows and the total number of
	translations and returns a table with both those figures.
]]
local function GetPatchSizes(patch)
	local numRows = 0
	local numTranslations = 0
	for _,row in ipairs(patch.entries) do
		for _,_ in ipairs(row.translations) do
			numTranslations = numTranslations + 1
		end
		numRows = numRows + 1
	end

	return {
		numTranslations = numTranslations,
		numRows = numRows,
	}
end


return function()
	it("Trivially splits a patch with one row and one translation returning a list of one patch.", function()
		assert(RecursiveEquals(
			PatchInfo.SplitByLimits(ApplePatch, 1, 1),
			{
				{
					name = "ApplePatchTable",
					entries = {
						AppleRow,
					}
				},
			}
		))
	end)

	it("Splits a patch with two rows into two separate patches if 1-row limit is given", function()
		assert(RecursiveEquals(
			PatchInfo.SplitByLimits(AppleAndBananaPatch, 1, 10),
			{
				{
					entries = {
						AppleRow,
					}
				},
				{
					entries = {
						BananaRow,
					}
				},
			}
		))
	end)

	it("Splits a patch with four entries into 3 and 1", function()
		assert(RecursiveEquals(
			PatchInfo.SplitByLimits(AppleAndBananaPatchWithFrench, 10, 3),
			{
				{
					entries = {
						AppleRowWithFrench,
						BananaRow,
					}
				},
				{
					entries = {
						BananaRowWithJustFrench,
					}
				},
			}
		))
	end)

	it("Splits a patch with two rows into two separate patches if 1-translation limit is given", function()
		assert(RecursiveEquals(
			PatchInfo.SplitByLimits(AppleAndBananaPatch, 10, 1),
			{
				{
					entries = {
						AppleRow,
					}
				},
				{
					entries = {
						BananaRow,
					}
				},
			}
		))
	end)

	it("Splits a patch with two empty rows.", function()
		assert(RecursiveEquals(
			PatchInfo.SplitByLimits(FruitPatchNoTranslations, 1, 1),
			{
				{
					name = "FruitPatchTable",
					entries = {
						AppleRowNoTranslations,
					}
				},
				{
					name = "FruitPatchTable",
					entries = {
						BananaRowNoTranslations,
					}
				},
			}
		))
	end)

	it("Splits into a collection of patches that is equivalent in content and within limits", function()
		local rectangularTable = MakeRectangularTable(4, 3)
		local targetList = MakeStraightList(12)

		for maxRows = 1,5 do
			for maxTranslations = 1,5 do
				local patches = PatchInfo.SplitByLimits(rectangularTable, maxRows, maxTranslations)
				assert(RecursiveEquals(ListTranslations(patches), targetList))

				for _,patch in ipairs(patches) do
					local sizes = GetPatchSizes(patch)
					assert(sizes.numRows <= maxRows)
					assert(sizes.numTranslations <= maxTranslations)
				end
			end
		end
	end)
end