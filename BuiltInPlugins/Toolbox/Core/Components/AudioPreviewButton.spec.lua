return function()
	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AudioPreviewButton = require(Plugin.Core.Components.AudioPreviewButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AudioPreviewButton = Roact.createElement(AudioPreviewButton),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
