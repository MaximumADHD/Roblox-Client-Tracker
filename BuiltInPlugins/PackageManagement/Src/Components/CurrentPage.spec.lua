local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local CurrentPage = require(script.Parent.CurrentPage)

return function()
    it("should create and destroy without errors", function()
        local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
            CurrentPage = Roact.createElement(CurrentPage, {})
        })

        local instance = Roact.mount(mockServiceWrapper)
        Roact.unmount(instance)
    end)

    it("should render correctly", function()
        -- FIXME(mwang) CurrentPage currently doesn't render anything. This is a placeholder test.
        expect(true).to.equal(true)
    end)
end