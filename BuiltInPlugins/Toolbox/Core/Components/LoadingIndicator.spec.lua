return function()
	local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

	if FFlagToolboxRemoveWithThemes then
		-- TODO FFlagToolboxRemoveWithThemes Remove entire file
		return
	end

	local Plugin = script.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local LoadingIndicator = require(Plugin.Core.Components.LoadingIndicator)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			LoadingIndicator = Roact.createElement(LoadingIndicator),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
