return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetCreatorName = require(Plugin.Core.Components.Asset.AssetCreatorName)

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
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "AssetCreatorName")
		local assetCreatorName = container.AssetCreatorName
		-- Use match to handle localization
		local text = assetCreatorName:GetChildren()[1].Text
		expect(text:match(creatorNameString)).to.be.ok()
		Roact.unmount(instance)
	end)
end
