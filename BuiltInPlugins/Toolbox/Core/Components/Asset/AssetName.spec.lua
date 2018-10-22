return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetName = require(Plugin.Core.Components.Asset.AssetName)

	local Workspace = game:GetService("Workspace")

	local assetNameString = "Example name here"

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AssetName = Roact.createElement(AssetName, {
				assetName = assetNameString,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should say the assets's name", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AssetName = Roact.createElement(AssetName, {
				assetName = assetNameString,
			}),
		})
		local container = Workspace.ToolboxTestsTarget
		local instance = Roact.mount(element, container, "AssetName")
		local assetNameObject = container.AssetName
		expect(assetNameObject.Text).to.equal(assetNameString)
		Roact.unmount(instance)
	end)
end
