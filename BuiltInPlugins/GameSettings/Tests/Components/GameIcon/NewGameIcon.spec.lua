return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local NewGameIcon = require(Plugin.Src.Components.GameIcon.NewGameIcon)

	local theme = Theme.newDummyTheme()

	local function createTestNewGameIcon()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			newThumbnail = Roact.createElement(NewGameIcon),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestNewGameIcon()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestNewGameIcon(), container)

		expect(container.ImageButton).to.be.ok()
		expect(container.ImageButton.Plus).to.be.ok()

		Roact.unmount(instance)
	end)
end