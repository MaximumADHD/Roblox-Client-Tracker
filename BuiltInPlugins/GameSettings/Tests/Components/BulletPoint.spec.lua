return function()
	SKIP()

	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local BulletPoint = require(Plugin.Src.Components.BulletPoint)

	local theme = Theme.newDummyTheme()

	local function createTestBulletPoint()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			bulletPoint = Roact.createElement(BulletPoint),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestBulletPoint()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestBulletPoint(), container)
		local bulletPoint = container.Frame

		expect(bulletPoint.Text).to.be.ok()
		expect(bulletPoint.Dot).to.be.ok()

		Roact.unmount(instance)
	end)
end