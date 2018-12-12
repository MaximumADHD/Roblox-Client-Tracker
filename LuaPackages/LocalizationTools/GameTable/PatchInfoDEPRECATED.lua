--[[
	Given tableData, a list in the format the web understands, constructs
	a 3-dimensional table, the three dimensions of which are
	key,source,context and each value of which is an index into tableData.
]]
local function MakeIndexMap(tableData)
	local indexMap = {}
	for index, datum in ipairs(tableData) do
		local key = datum.identifier.key or ""
		local source = datum.identifier.source or ""
		local context = datum.identifier.context or ""

		indexMap[key] = indexMap[key] or {}
		indexMap[key][source] = indexMap[key][source] or {}
		indexMap[key][source][context] = indexMap[key][source][context] or index
	end

	return indexMap
end


--[[
	Takes a translation list (formatted the way the web expects)
	Makes a table that straight-up maps locales to translationTexts
]]
local function MakeTranslationMapForEntry(entry)
	local translationMap = {}
	for _, translation in ipairs(entry.translations) do
		translationMap[translation.locale] = translation.translationText
	end
	return translationMap
end

--[[
	Takes a before and after localization table entry (formatted the way the web expects):
	Returns an patch object with:
		Translations in originalEntry which are not in newEntry deleted
		Tarnslations in newEntry which are not in (or differ from) originalEntry added
]]
local function MakePatchEntryToChangeRow(originalEntry, newEntry)
	local patchTranslations = {}

	local newTranslationMap = MakeTranslationMapForEntry(newEntry)
	local originalTranslationMap = MakeTranslationMapForEntry(originalEntry)

	for _, translation in ipairs(originalEntry.translations) do
		if newTranslationMap[translation.locale] == nil then
			table.insert(patchTranslations, {
				locale = translation.locale,
				translationText = translation.translationText,
				delete = true,
			})
		end
	end

	for _, translation in ipairs(newEntry.translations) do
		if originalTranslationMap[translation.locale] ~= translation.translationText then
			table.insert(patchTranslations, {
				locale = translation.locale,
				translationText = translation.translationText,
				delete = false,
			})
		end
	end

	return {
		identifier = {
			key = newEntry.identifier.key,
			source = newEntry.identifier.source,
			context = newEntry.identifier.context,
		},
		metadata = newEntry.metadata,
		translations = patchTranslations,
		delete = false,
	}
end

local function MakePatchEntryToAddRow(entry)
	local patchTranslations = {}
	for _, translation in ipairs(entry.translations) do
		table.insert(patchTranslations, {
			locale = translation.locale,
			translationText = translation.translationText,
			delete = false,
		})
	end

	return {
		identifier = {
			key = entry.identifier.key,
			source = entry.identifier.source,
			context = entry.identifier.context,
		},
		metadata = entry.metadata,
		translations = patchTranslations,
		delete = false,
	}
end

local function MakePatchEntryToDeleteRow(entry)
	local patchTranslations = {}

	-- Unclear if we need to add each deleted translation for the server to be happy with the
	-- request.  Further experimentation required.
	for _, translation in ipairs(entry.translations) do
		table.insert(patchTranslations, {
			locale = translation.locale,
			translationText = translation.translationText,
			delete = true,
		})
	end

	return {
		identifier = {
			key = entry.identifier.key,
			source = entry.identifier.source,
			context = entry.identifier.context,
		},
		metadata = entry.metadata,
		translations = patchTranslations,
		delete = true,
	}
end

--[[
	Takes the name of a table and two lists of table data, the original and the new data.
	Computes a PatchInfo object consisting of elements:

	{
		patch = A lua table which when serialized as json makes the patch body to turn
			the original table into the new one.

		add = number of rows added by the patch
		change = number of rows changed by the patch
		remove = number of rows removed by the patch
	}
]]
local function DiffTables(tableName, originalTableData, newTableData)
	local newTableMap = MakeIndexMap(newTableData)
	local originalTableMap = MakeIndexMap(originalTableData)

	local patchEntries = {}

	local patchInfo = {
		add = 0,
		change = 0,
		remove = 0,

		patch = {
			entries = patchEntries,
			name = tableName,
		}
	}

	--[[
		Returns info for the row in the map if it's there, 0 if it's not there.
	]]
	local function GetRowIndex(map, key, source, context)
		if map[key] ~= nil and map[key][source] ~= nil and map[key][source][context] ~= nil then
			return map[key][source][context]
		end
		return 0
	end

	for _, originalEntry in pairs(originalTableData) do
		local indexInNewTable = GetRowIndex(newTableMap,
			originalEntry.identifier.key,
			originalEntry.identifier.source,
			originalEntry.identifier.context)

		if indexInNewTable == 0 then
			patchInfo.remove = patchInfo.remove + 1
			table.insert(patchEntries, MakePatchEntryToDeleteRow(originalEntry))
		else
			local patchEntry = MakePatchEntryToChangeRow(
				originalEntry,
				newTableData[indexInNewTable])

			if #(patchEntry.translations) ~= 0 or patchEntry.metadata.example ~= originalEntry.metadata.example then
				table.insert(patchEntries, patchEntry)
				patchInfo.change = patchInfo.change + 1
			end
		end
	end

	for _, newEntry in pairs(newTableData) do
		local indexInOriginalTable = GetRowIndex(originalTableMap,
			newEntry.identifier.key,
			newEntry.identifier.source,
			newEntry.identifier.context)

		if indexInOriginalTable == 0 then
			patchInfo.add = patchInfo.add + 1
			table.insert(patchEntries, MakePatchEntryToAddRow(newEntry))
		end
	end

	return patchInfo
end


--[[
	Takes a row of a patch, and constructs a new row of a patch with the same
	key, source, context, example and delete fields, but an empty translations list.
]]
local function MimicRow(row)
	return {
		identifier = {
			key = row.identifier.key,
			source = row.identifier.source,
			context = row.identifier.context,
		},
		metadata = {
			example = row.metadata and row.metadata.example,
		},
		translations = {
		},
		delete = row.delete,
	}
end


--[[
	Takes a patch and a maximum number of rows and translations.
	Constructs a list of patches which fit in the limits and union up
	to the whole patch.
]]
local function SplitByLimits(patch, maxRows, maxTranslations)
	local patches = {}

	local newPatch
	local newRow
	local translationCount
	local rowCount

	local function finishPatch()
		newPatch = nil
		newRow = nil
	end

	local function finishRow()
		newRow = nil
		rowCount = rowCount + 1
		if rowCount >= maxRows then
			newPatch = nil
		end
	end

	local function updateTargets(row)
		if not newPatch then
			newPatch = {
				name = patch.name,
				entries = {},
			}
			translationCount = 0
			rowCount = 0
			table.insert(patches, newPatch)
		end

		if not newRow then
			newRow = MimicRow(row)
			table.insert(newPatch.entries, newRow)
		end
	end

	for _,row in ipairs(patch.entries) do
		if row.translations then
			updateTargets(row)

			for _,translation in ipairs(row.translations) do
				updateTargets(row)

				table.insert(newRow.translations, translation)
				translationCount = translationCount + 1

				if translationCount >= maxTranslations then
					finishPatch()
				end
			end

			finishRow()
		end
	end

	return patches
end

return {
	MakePatchEntryToChangeRow = MakePatchEntryToChangeRow,
	DiffTables = DiffTables,
	SplitByLimits = SplitByLimits,
}

