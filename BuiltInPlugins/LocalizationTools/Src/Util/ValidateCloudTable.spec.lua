--!strict
local ValidateCloudTable = require(script.Parent.ValidateCloudTable)

local Localization = {}
function Localization.getText(self, x, y, ...)
    -- if y == "LocalizationToolsCloudTableContextLength" then
    -- elseif y == "ContextTooLong" then
    -- elseif y == "KeyTooLong" then
    -- elseif y == "ExampleTooLong" then
    -- elseif y == "SourceTooLong" then
    -- elseif y == "LocaleTooLong" then
    -- elseif y == "TranslationTooLong" then
    -- elseif y == "EmptySourceError" then
    -- elseif y == "DuplicateSourceContextError" then
    -- end
    return y
end

function hasValue(arr, val)
    for _,item in arr do
        if item == val then
            return true
        end
    end
    return false
end

return function()
    it("says empty table is empty", function()
        expect(ValidateCloudTable.isTableEmpty({})).to.equal(true)
    end)

    it("says non-empty table is not empty", function()
        expect(ValidateCloudTable.isTableEmpty({
            {
                ["Key"] = "key",
                ["Source"] = "hello",
                ["Context"] = "context",
                ["Example"] = nil,
                ["Values"] = nil
            },
        })).to.equal(false)
    end)

    it("says duplicate source strings with no context are invalid", function()
        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "key 1",
            ["Source"] = "hello",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "key 2",
            ["Source"] = "hello",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        for index, error in messages do
            print(error)
        end
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "DuplicateSourceContextError")).to.equal(true)

        isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "key 1",
            ["Source"] = "hello",
            ["Context"] = nil,
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "key 2",
            ["Source"] = "hello",
            ["Context"] = nil,
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "DuplicateSourceContextError")).to.equal(true)

        isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "DuplicateSourceContextError")).to.equal(true)

        isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = nil,
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = nil,
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "DuplicateSourceContextError")).to.equal(true)
    end)

    it("says duplicate source strings with duplicate contexts are invalid", function()
        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "key 1",
            ["Source"] = "hello",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "key 2",
            ["Source"] = "hello",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "DuplicateSourceContextError")).to.equal(true)

        isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "DuplicateSourceContextError")).to.equal(true)
    end)

    it("says an empty source string is invalid", function()
        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "key 1",
            ["Source"] = "",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "key 2",
            ["Source"] = "hello",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "EmptySourceError")).to.equal(true)

        isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "",
            ["Source"] = "",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "EmptySourceError")).to.equal(true)

        isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "",
            ["Source"] = "",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "EmptySourceError")).to.equal(true)
    end)

    it("says different source strings with no context is valid", function()
        local isInvalid, _ = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "key 1",
            ["Source"] = "hello",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "key 2",
            ["Source"] = "goodbye",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(false)

        isInvalid, _ = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "",
            ["Source"] = "goodbye",
            ["Context"] = "",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(false)
    end)

    it("says different source strings with same context is valid", function()
        local isInvalid, _ = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "key 1",
            ["Source"] = "hello",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "key 2",
            ["Source"] = "goodbye",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(false)

        isInvalid, _ = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "",
            ["Source"] = "goodbye",
            ["Context"] = "context",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(false)
    end)

    it("says same source strings with different contexts is valid", function()
        local isInvalid, _ = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "key 1",
            ["Source"] = "hello",
            ["Context"] = "context 1",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "key 2",
            ["Source"] = "hello",
            ["Context"] = "context 2",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(false)

        isInvalid, _ = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = "context 1",
            ["Example"] = nil,
            ["Values"] = nil
        },
        {
            ["Key"] = "",
            ["Source"] = "hello",
            ["Context"] = "context 2",
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(false)
    end)

    it("says long context strings are invalid", function()
        local excessivelyLongString = "aa"

        local charLimit = game:GetFastInt("LocalizationToolsCloudTableContextLength")

        for i=1, charLimit, 1 do
            excessivelyLongString = excessivelyLongString .. "a"
        end

        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Source"] = "hello",
            ["Context"] = excessivelyLongString,
            ["Key"] = nil,
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "ContextTooLong")).to.equal(true)
    end)

    it("says long key strings are invalid", function()
        local excessivelyLongString = "aa"

        local charLimit = game:GetFastInt("LocalizationToolsCloudTableKeyLength")

        for i=1, charLimit, 1 do
            excessivelyLongString = excessivelyLongString .. "a"
        end

        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Key"] = excessivelyLongString,
            ["Source"] = "hello",
            ["Context"] = nil,
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "KeyTooLong")).to.equal(true)
    end)

    it("says long example strings are invalid", function()
        local excessivelyLongString = "aa"

        local charLimit = game:GetFastInt("LocalizationToolsCloudTableExampleLength")

        for i=1, charLimit, 1 do
            excessivelyLongString = excessivelyLongString .. "a"
        end

        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Source"] = "hello",
            ["Example"] = excessivelyLongString,
            ["Key"] = nil,
            ["Context"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "ExampleTooLong")).to.equal(true)
    end)

    it("says long source strings are invalid", function()
        local excessivelyLongString = "aa"

        local charLimit = game:GetFastInt("LocalizationToolsCloudTableSourceLength")

        for i=1, charLimit, 1 do
            excessivelyLongString = excessivelyLongString .. "a"
        end

        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Source"] = excessivelyLongString,
            ["Context"] = nil,
            ["Key"] = nil,
            ["Example"] = nil,
            ["Values"] = nil
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "SourceTooLong")).to.equal(true)
    end)

    it("says long locale strings are invalid", function()
        local excessivelyLongString = "aa"

        local charLimit = game:GetFastInt("LocalizationToolsCloudTableLocaleLength")

        for i=1, charLimit, 1 do
            excessivelyLongString = excessivelyLongString .. "a"
        end

        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Source"] = "hello",
            ["Context"] = nil,
            ["Key"] = nil,
            ["Example"] = nil,
            ["Values"] = {
                [excessivelyLongString] = "hello"
            },
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "LocaleTooLong")).to.equal(true)
    end)

    it("says long translation strings are invalid", function()
        local excessivelyLongString = "aa"

        local charLimit = game:GetFastInt("LocalizationToolsCloudTableTranslationLength")

        for i=1, charLimit, 1 do
            excessivelyLongString = excessivelyLongString .. "a"
        end

        local isInvalid, messages = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Source"] = "hello",
            ["Context"] = nil,
            ["Key"] = nil,
            ["Example"] = nil,
            ["Values"] = {
                ["fr_fr"] = excessivelyLongString
            },
        }}, Localization)
        expect(isInvalid).to.equal(true)
        expect(hasValue(messages, "TranslationTooLong")).to.equal(true)
    end)

    it("says a good example entry is valid", function()
        local isInvalid, _ = ValidateCloudTable.tableContainsInvalidEntries({{
            ["Source"] = "hello",
            ["Key"] = "unique key",
            ["Example"] = "a greeting",
            ["Context"] = "foo.bar.TextLabel",
            ["Values"] = {
                ["fr_fr"] = "bonjour",
            },
        }}, Localization)
        expect(isInvalid).to.equal(false)
    end)
end
