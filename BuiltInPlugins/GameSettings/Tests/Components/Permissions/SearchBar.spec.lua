return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

    local BaseDialog = require(Plugin.Src.Components.Permissions.SearchBar)
    
    local MockWrapper = require(Plugin.UILibrary.MockWrapper)

	local theme = Theme.newDummyTheme()

	local function createTestSearchBar(defaultText, container)
		return Roact.createElement(MockWrapper, {
            Container = container,
        }, {
            ThemeProvider = Roact.createElement(ThemeProvider, {
                theme = theme,
            }, {
                SearchBar = Roact.createElement(SearchBar, {
                    DefaultText = defaultText,
                }, {}),
            }),
		})
	end

	it("should create and destroy without errors", function()
		local instance = Roact.mount(createTestSearchBar(""))
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSearchBar("", container), container)
		local frame = container.Frame       
        local border = frame.Background

        expect(border).to.be.ok()
        expect(border.ImageFrame).to.be.ok()
        expect(border.TextBox).to.be.ok()
        expect(border.ClearButtonFrame).to.be.ok()
        expect(border.Dropdown).to.be.ok()

		Roact.unmount(instance)
    end)
    
end