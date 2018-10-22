return function()
	local Plugin = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Category = require(Plugin.Core.Types.Category)
	local Suggestion = require(Plugin.Core.Types.Suggestion)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Toolbox = require(Plugin.Core.Components.Toolbox)

	local Workspace = game:GetService("Workspace")

	local function createTestToolbox(container, name)
		local element = Roact.createElement(MockWrapper, {}, {
			Toolbox = Roact.createElement(Toolbox, {
				backgrounds = {},
				categories = Category.CATEGORIES,
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
		local container = Workspace.ToolboxTestsTarget
		local instance = createTestToolbox(container, "ToolboxComponent")
		local toolbox = container.ToolboxComponent

		expect(toolbox.Header).to.be.ok()
		expect(toolbox.MainView).to.be.ok()
		expect(toolbox.Footer).to.be.ok()

		Roact.unmount(instance)
	end)
end
