--!nonstrict

return function()
    local CorePackages = game:GetService("CorePackages")
    local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
    local InGameMenu = script.Parent.Parent
    local reducer = require(InGameMenu.reducer)
	local UIBlox = InGameMenuDependencies.UIBlox

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

    local Localization = require(InGameMenu.Localization.Localization)
    local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
    local Roact = InGameMenuDependencies.Roact
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
    local Players = game:GetService("Players")

    local Page = require(script.Parent.Page)

    local function getMountableTreeAndStore(pageChildren)
        local store = Rodux.Store.new(reducer)

        return Roact.createElement(RoactRodux.StoreProvider, {
            store = store
        }, {
            ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
                LocalizationProvider = Roact.createElement(LocalizationProvider, {
                    localization = Localization.new("en-us"),
                }, {
                    Page = Roact.createElement(Page, {pageTitle = "test"}, pageChildren)
                }),
            }),
        }), store
    end

    it("mounts and unmounts", function()
        local element = getMountableTreeAndStore()
        local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
        Roact.unmount(instance)
    end)

    it("ensure basic Page is rendered", function()
        -- prepare Page to mount with two children
        local element = getMountableTreeAndStore({
            myText1 = Roact.createElement("TextLabel", {Text = "yo"}),
            myText2 = Roact.createElement("TextLabel", {Text = "hello"})
        })
        local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)

        local renderedPage = Players.LocalPlayer.PlayerGui:GetChildren()[1]
		expect(renderedPage:FindFirstChild("PageTitle")).never.toBeNil()
		expect(renderedPage:FindFirstChild("PageTitle").text).toBe("test")

        local pageContainer = renderedPage:FindFirstChild("PageContainer")
		expect(pageContainer).never.toBeNil()

		-- renders children of Page
		expect(#pageContainer:GetChildren()).toBe(2)
		expect(pageContainer:GetChildren()[1].Text).toBe("yo")
		expect(pageContainer:GetChildren()[2].Text).toBe("hello")

        Roact.unmount(instance)
    end)
end
