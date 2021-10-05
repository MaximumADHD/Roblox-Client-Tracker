local LoadPluginMetadata = require(script.Parent.LoadPluginMetadata)
local Plugin = script.Parent.Parent.Parent

local Http = require(Plugin.Packages.Framework).Http

local function makeMockApi(responseBodyData)
    local request = {}
    function request:makeRequest()
        local mockCaller = {}
        function mockCaller:andThen(fsuccess, ffailure)
            local data = responseBodyData
            local statusCode = Http.StatusCodes.OK

            local mockResponse = {
                responseCode = statusCode,
                responseBody = {
                    data = data
                },
            }
            local result = fsuccess(mockResponse)
            local mockAwaiter = {}
            function mockAwaiter:await()
                return result
            end
            return mockAwaiter
        end
        return mockCaller
    end
    local CurrentUser = {}
    function CurrentUser.roles(universeId)
        return request
    end

    return {
        TranslationRoles = {
            V1 = {
                GameLocalizationRoles = {
                    Games = {
                        CurrentUser = CurrentUser
                    }
                }
            }
        }
    }
end

local function makeMockLocalization()
    local localization = {}
    function localization:getText(t1, t2)
        return "mock localization getText for " + t1 + " " + t2
    end

    return localization
end

local function makeMockStore()
    local store = {}
    function store:dispatch(value)
        return
    end

    return store
end

return function()
    describe("GetManageTranslationPermission", function()
        local oldFlagValue
        beforeEach(function()
            oldFlagValue = game:SetFastFlagForTesting("LocalizationToolsPluginEnableCollaborator", true)
        end)

        afterEach(function()
            game:SetFastFlagForTesting("LocalizationToolsPluginEnableCollaborator", oldFlagValue)
        end)

        local function runTest(testData, expectedHasPermission)
            local mockLocalization = makeMockLocalization()
            local mockStore = makeMockStore()

            local hasPermission = LoadPluginMetadata.GetManageTranslationPermission(makeMockApi(testData), mockLocalization)(mockStore)

            expect(hasPermission).to.equal(expectedHasPermission)
        end

        it("should reject empty roles", function()
            runTest({}, false)
        end)

        it("should reject other roles", function()
            runTest({"other_roles"}, false)
        end)

        it("should accept owner", function()
            runTest({"owner"}, true)
        end)

        it("should accept translator", function()
            runTest({"translator"}, true)
        end)

        it("should accept collaborator", function()
            runTest({"collaborator"}, true)
        end)
    end)
end
