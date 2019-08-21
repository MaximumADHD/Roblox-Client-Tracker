--[[
    Provides a fake implementation of the DraftsService.

    Set the fast int DebugStudioDraftsWidgetTestCase to something else than 0
    to simulate a test case. This allows our QAs to be able to verify that the
    UI can handle error cases without inducing those manually.

    The fast int DebugStudioDraftsWidgetWaitTime controls how long the yielding
    asynchronous methods should wait before returning a result. For example, to
    simulate a network delay when talking to the server. It can be used to
    verify that loading animations work correctly.
--]]

-- Change it to something else than zero to simulate network delays (in seconds).
game:DefineFastInt("DebugStudioDraftsWidgetWaitTime", 0)

local Plugin = script.Parent.Parent.Parent
local Signal = require(Plugin.Src.Util.Signal)

--[[
    Test case -inf to 0:
        Not a valid test case. The mock should not be used.
    Test case 1 (DEFAULT):
        Ten drafts scripts.
    Test case 2 (EMPTY_TEST):
        The empty case.
    Test case 3 (SERVICE_DISABLED):
        DraftsService is disabled (e.g. place is not Team Create)
-- ]]
local TEST_CASES = {
    DEFAULT = 1,
    EMPTY_TEST = 2,
    SERVICE_DISABLED = 3,
}

local function checkScriptType(scriptInstance)
    assert(typeof(scriptInstance) == "Instance")
    assert(scriptInstance:IsA("LuaSourceContainer"))
end

local function checkScriptsType(scriptInstances)
    assert(type(scriptInstances) == "table")
    for _, scriptInstance in pairs(scriptInstances) do
        checkScriptType(scriptInstance)
    end
end

--[[
    Validates the passed in test case.
--]]
local function validateTestCase(testCase)
    assert(typeof(testCase == "number"))
    -- Check if test case is defined
    for _, value in pairs(TEST_CASES) do
        if value == testCase then
            return
        end
    end

    assert(false, "Test case "..testCase.." is not valid")
end

--[[
    Creates a script with the index i append to the name, e.g. Script1.
--]]
local function createScript(i)
    local scriptInstance = Instance.new("Script")
    scriptInstance.Name = "Script"..i
    return scriptInstance
end

--[[
    Creates n scripts named Script1, Script2, ..., ScriptN.
]]
local function createScripts(n)
    assert(typeof(n) == "number")
    local scripts = {}
    for i = 1, n do
        scripts[i] = createScript(i)
    end
    return scripts
end

local function getWaitTime()
    return game:GetFastInt("DebugStudioDraftsWidgetWaitTime")
end

local MockDraftsService = {}
MockDraftsService.__index = MockDraftsService
MockDraftsService.TestCases = TEST_CASES

function MockDraftsService.new(testCase)
    local self = {
        DraftAdded = Signal.new(),
        DraftRemoved = Signal.new(),
        DraftOutdatedStateChanged = Signal.new(),
        EditorsListChanged = Signal.new(),
        UpdateStatusChanged = Signal.new(),
        CommitStatusChanged = Signal.new(),

        __testCase = testCase or TEST_CASES.DEFAULT,
        __drafts = {},
    }

    validateTestCase(self.__testCase)

    if self.__testCase ~= TEST_CASES.EMPTY_TEST then
        self.__drafts = createScripts(10)
    end

    return setmetatable(self, MockDraftsService)
end

function MockDraftsService:GetDrafts()
    wait(getWaitTime())

    if self.__testCase == TEST_CASES.SERVICE_DISABLED then
        -- pcall works with yielding, but it will not stop error messages from
        -- being displayed in the output if it yields, so this will always show
        -- up in the output, even though we catch it and the sandbox runs fine
        error("DraftsService is not available")
    end

    return self.__drafts
end

function MockDraftsService:GetEditors(draft)
    checkScriptType(draft)
    return {}
end

function MockDraftsService:ShowDiffsAgainstBase(drafts)
    checkScriptsType(drafts)
end

function MockDraftsService:ShowDiffsAgainstServer(drafts)
    checkScriptsType(drafts)
end

function MockDraftsService:DiscardEdits(drafts)
    checkScriptsType(drafts)

    for _,draft in ipairs(drafts) do
        self.DraftRemoved:fire(draft)
    end
end

function MockDraftsService:UpdateToLatestVersion(drafts)
    checkScriptsType(drafts)
    wait(getWaitTime())

    for _,draft in ipairs(drafts) do
        self.UpdateStatusChanged:fire(draft, Enum.DraftStatusCode.OK)
    end
end

function MockDraftsService:CommitEdits(drafts)
    checkScriptsType(drafts)
    wait(getWaitTime())

    for _,draft in ipairs(drafts) do
        draft.Parent = game.ServerScriptService
        self.CommitStatusChanged:fire(draft, Enum.DraftStatusCode.OK)
        delay(getWaitTime(), function()
            self.DraftRemoved:fire(draft)
        end)
    end
end

return MockDraftsService