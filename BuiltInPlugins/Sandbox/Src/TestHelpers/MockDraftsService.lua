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

--[[
    Change to something else than zero to simulate a test case.

    Test case -inf to 0:
        Not a valid test case. The mock should not be used.
    Test case 1 (DEFAULT):
        Ten drafts scripts.
    Test case 2 (EMPTY_TEST):
        The empty case.
-- ]]
game:DefineFastInt("DebugStudioDraftsWidgetTestCase", 1)

-- Change it to something else than zero to simulate network delays (in seconds).
game:DefineFastInt("DebugStudioDraftsWidgetWaitTime", 0)

local Plugin = script.Parent.Parent.Parent
local Signal = require(Plugin.Src.Util.Signal)

local MockDraftsService = {
    DraftAdded = Signal.new(),
    DraftRemoved = Signal.new(),
    ScriptRemoved = Signal.new(),
    ScriptServerVersionChanged = Signal.new(),
    EditorsListChanged = Signal.new(),
    UpdateStatusChanged = Signal.new(),
    CommitStatusChanged = Signal.new(),

    TestCases = {
        DEFAULT = 1,
        EMPTY_TEST = 2,
    }
}

local function checkScriptType(script)
    assert(typeof(script) == "Instance")
    assert(script:IsA("LuaSourceContainer"))
end

local function checkScriptsType(scripts)
    assert(type(scripts) == "table")
    for _, script in pairs(scripts) do
        checkScriptType(script)
    end
end

--[[
    Validates the passed in test case.
--]]
local function validateTestCase(testCase)
    assert(typeof(testCase == "number"))
    -- Check if test case is defined
    for _, value in pairs(MockDraftsService.TestCases) do
        if value == testCase then
            return
        end
    end

    assert(false, "Test case "..testCase.."is not valid")
end

--[[
    Creates a script with the index i append to the name, e.g. Script1.
--]]
local function createScript(i)
    local script = Instance.new("Script")
    script.Name = "Script"..i
    return script
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

local function getTestCase()
    local testCase = game:GetFastInt("DebugStudioDraftsWidgetTestCase")
    return testCase
end

local function getWaitTime()
    return game:GetFastInt("DebugStudioDraftsWidgetWaitTime")
end

function MockDraftsService:IsEnabled()
    local testCase = getTestCase()
    return testCase ~= 0
end

--[[
    Sets the test case to simulate. Use this in a unit test where you want to
    ensure a certain behavior. The real DraftsService does not have this method.
--]]
function MockDraftsService:SetTestCase(testCase)
    validateTestCase(testCase)
    game:SetFastIntForTesting("DebugStudioDraftsWidgetTestCase", testCase)
end

function MockDraftsService:GetDrafts()
    local testCase = getTestCase()
    wait(getWaitTime())

    if testCase == MockDraftsService.TestCases.EMPTY_TEST then
        return {}
    end

    return createScripts(10)
end

function MockDraftsService:GetEditors(script)
    checkScriptType(script)
    return {}
end

function MockDraftsService:OpenDrafts(scripts)
    checkScriptsType(scripts)
end

function MockDraftsService:ShowDiffsAgainstBase(scripts)
    checkScriptsType(scripts)
end

function MockDraftsService:ShowDiffsAgainstServer(scripts)
    checkScriptsType(scripts)
end

function MockDraftsService:DiscardEdits(scripts)
    checkScriptsType(scripts)
end

function MockDraftsService:UpdateToLatestVersion(scripts)
    checkScriptsType(scripts)
    wait(getWaitTime())
end

function MockDraftsService:CommitEdits(scripts)
    checkScriptsType(scripts)
    wait(getWaitTime())
end

return MockDraftsService