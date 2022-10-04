--!strict
-- TODO: UC-4295: replace this with a DeveloperFramework import when available from Luau team 
type Array<T> = {[number]: T}
-- TODO: UC-4295: import map when available from Luau team
type Map<K, V> = {[K]: V}

type Entry = {
    Key: string?,
    Source: string,
    Example: string?,
    Context: string?,
    Values: Map<string, string>?,
}

local function isTableEmpty(entries: Array<Entry>)
    return #entries == 0
end

local function isEmpty(str: string?)
    return str == nil or str == ""
end

local function appendCloudTableUploadError(errors: Array<string>, localizationKey: string, localization: any, key: string, source: string, context: string, example: string)
    table.insert(errors, localization:getText("UploadTable", localizationKey,
    {
        key = "\"" .. key  .. "\"",
        source = "\"" .. source  .. "\"",
        context = "\"" .. context  .. "\"",
        example = "\"" .. example  .. "\"",
    }))
end

-- If the string is nil or the empty string, set it to the empty string for consistency
local function normalizeString(str: string?)
    if isEmpty(str) then
        return ""
    end
    -- Uses type guard to cast to string from string?
    if str ~= nil then
        return str
    end
    -- Should never happen but we need to satisfy Luau compiler
    return ""
end

local function normalizeStrings(errors: Array<string>, localization: any, origKey: string?, origSource: string, origContext: string?, origExample: string?)
    -- Normalize empty/nil strings for consistency
    local context: string = normalizeString(origContext)
    local key: string = normalizeString(origKey)
    local example: string = normalizeString(origExample)
    local source: string = normalizeString(origSource)

    -- Check that the strings do not exceed character limits
    if string.len(context) > game:GetFastInt("LocalizationToolsCloudTableContextLength") then
        appendCloudTableUploadError(errors, "ContextTooLong", localization, key, source, context, example)
    end

    if string.len(key) > game:GetFastInt("LocalizationToolsCloudTableKeyLength") then
        appendCloudTableUploadError(errors, "KeyTooLong", localization, key, source, context, example)
    end

    if string.len(example) > game:GetFastInt("LocalizationToolsCloudTableExampleLength") then
        appendCloudTableUploadError(errors, "ExampleTooLong", localization, key, source, context, example)
    end

    if string.len(source) > game:GetFastInt("LocalizationToolsCloudTableSourceLength") then
        appendCloudTableUploadError(errors, "SourceTooLong", localization, key, source, context, example)
    end

    return key, source, context, example
end

local function tableContainsInvalidEntries(entries: Array<Entry>, localization: any)
    -- Keeps track of (source, context) existence
    local identifierMapping: Map<string, Map<string, boolean>> = {}
    -- Keep track of all errors encountered
    local errorList: Array<string> =  {}

    for _, entry: Entry in ipairs(entries) do
        if entry.Values ~= nil then
            for locale: string, translation: string in pairs(entry.Values) do
                if string.len(locale) > game:GetFastInt("LocalizationToolsCloudTableLocaleLength") then
                    table.insert(errorList, localization:getText("UploadTable", "LocaleTooLong",
                    {
                        locale = "\"" .. locale  .. "\"",
                        translation = "\"" .. translation  .. "\"",
                    }))
                end
    
                if string.len(translation) > game:GetFastInt("LocalizationToolsCloudTableTranslationLength") then
                    table.insert(errorList, localization:getText("UploadTable", "TranslationTooLong",
                    {
                        locale = "\"" .. locale  .. "\"",
                        translation = "\"" .. translation  .. "\"",
                    }))
                end
            end
        end

        local key: string, source: string, context: string, _ = normalizeStrings(errorList, localization, entry.Key, entry.Source, entry.Context, entry.Example)

        if isEmpty(source) then
            table.insert(errorList, localization:getText("UploadTable", "EmptySourceError",
            {
				key = "\"" .. key  .. "\"",
				source = "\"" .. source  .. "\"",
				context = "\"" .. context  .. "\"",
            }))
            continue
        end
        -- If an entry for this (source, context) pair already exists...
        if identifierMapping[source] ~= nil and identifierMapping[source][context] ~= nil then
            -- Throw an error
            table.insert(errorList, localization:getText("UploadTable", "DuplicateSourceContextError",
            {
                key = "\"" .. key  .. "\"",
                source = "\"" .. source  .. "\"",
                context = "\"" .. context  .. "\"",
            }))
        else
            -- Otherwise make an entry
            if identifierMapping[source] == nil then
                identifierMapping[source] = {}
            end
            identifierMapping[source][context] = true
        end
    end

    -- Return a tuple of a boolean for whether or not there are errors, and an array of all error strings
    return #errorList ~= 0, errorList
end

return {
    isTableEmpty = isTableEmpty,
    tableContainsInvalidEntries = tableContainsInvalidEntries
}