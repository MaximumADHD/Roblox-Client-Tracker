local FFlagStudioMarketplaceTabsEnabled = settings():GetFFlag("StudioMarketplaceTabsEnabled")

return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Category = require(Plugin.Core.Types.Category)
	local Suggestion = require(Plugin.Core.Types.Suggestion)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Toolbox = require(Plugin.Core.Components.Toolbox)

	local function createTestToolbox(container, name)
		local element = Roact.createElement(MockWrapper, {}, {
			Toolbox = Roact.createElement(Toolbox, {
				backgrounds = {},
				categories = FFlagStudioMarketplaceTabsEnabled and Category.MARKETPLACE
					or Category.CATEGORIES,
				suggestions = Suggestion.SUGGESTIONS,
			}),
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestToolbox()
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = createTestToolbox(container, "ToolboxComponent")
		local toolbox = container.ToolboxComponent

		expect(toolbox.Header).to.be.ok()
		expect(toolbox.MainView).to.be.ok()
		expect(toolbox.Footer).to.be.ok()

		Roact.unmount(instance)
	end)
end
