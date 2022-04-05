return function()
	local FFlagToolboxAssetGridRefactor = game:GetFastFlag("ToolboxAssetGridRefactor6")
	local FFlagToolboxAssetStyleUpdate = game:GetFastFlag("ToolboxAssetStyleUpdate")

	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local Category = require(Plugin.Core.Types.Category)
	local Suggestion = require(Plugin.Core.Types.Suggestion)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Toolbox = require(Plugin.Core.Components.Toolbox)

	local function createTestToolbox(container, name)
		local element = Roact.createElement(MockWrapper, {}, {
			Toolbox = Roact.createElement(Toolbox, {
				backgrounds = {},
				categories = Category.MARKETPLACE,
				suggestions = Suggestion.SUGGESTIONS,
				Size = FFlagToolboxAssetGridRefactor and UDim2.new(0, 400, 0, 400) or nil,
			}),
		})

		return Roact.mount(element, container or nil, name or "")
	end

	afterEach(function()
		game.CoreGui.CategoryVerification:Destroy()
	end)

	it("should create and destroy without errors", function()
		local instance = createTestToolbox()
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = createTestToolbox(container, "ToolboxComponent")

		expect(container:FindFirstChild("Header", true)).to.be.ok()
		expect(container:FindFirstChild("MainView", true)).to.be.ok()
		if not FFlagToolboxAssetStyleUpdate then
			expect(container:FindFirstChild("Footer", true)).to.be.ok()
		end

		Roact.unmount(instance)
	end)
end
