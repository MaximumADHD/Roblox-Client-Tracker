return function()
	local FFlagToolboxAssetStyleUpdate2 = game:GetFastFlag("ToolboxAssetStyleUpdate2")
	if FFlagToolboxAssetStyleUpdate2 then
		return
	end

	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local FooterButton = require(Plugin.Core.Components.Footer.FooterButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			FooterButton = Roact.createElement(FooterButton),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
