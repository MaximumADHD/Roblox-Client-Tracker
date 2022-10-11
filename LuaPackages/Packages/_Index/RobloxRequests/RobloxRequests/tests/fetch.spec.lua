return function ()
    local Packages = script.Parent.Parent.Parent

    local JestGlobals = require(Packages.Dev.JestGlobals)
    local jestExpect = JestGlobals.expect

    local http = require(script.Parent.Parent)
    local Promise = require(script.Parent.Parent.Parent.Promise)

    describe("fetch", function()
        it("should GET", function()
            local resultPromise = http.fetch("https://github.com/")
            
            jestExpect(resultPromise).toBeDefined()
            jestExpect(Promise.is(resultPromise)).toBe(true)

            local result = resultPromise:expect()
            jestExpect(result).toBeDefined()

            local resultText = result:text():expect()

            jestExpect(resultText).toBeDefined()
            jestExpect(typeof(resultText)).toBe("string")
        end)
    end)
end