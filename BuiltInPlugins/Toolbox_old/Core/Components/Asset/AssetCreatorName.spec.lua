return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetCreatorName = require(Plugin.Core.Components.Asset.AssetCreatorName)

	local Workspace = game:GetService("Workspace")

	local creatorNameString = "Example name here"

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AssetCreatorName = Roact.createElement(AssetCreatorName, {
				creatorName = creatorNameString,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should say the creator's name", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AssetCreatorName = Roact.createElement(AssetCreatorName, {
				creatorName = creatorNameString,
			}),
		})
		local container = Workspace.ToolboxTestsTarget
		local instance = Roact.mount(element, container, "AssetCreatorName")
		local assetCreatorName = container.AssetCreatorName
		-- Use match to handle localization
		expect(assetCreatorName.Text:match(creatorNameString)).to.be.ok()
		Roact.unmount(instance)
	end)
end
