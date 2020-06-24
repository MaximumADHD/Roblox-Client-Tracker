return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local ImageWithDefault = require(Plugin.Core.Components.ImageWithDefault)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ImageWithDefault)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
