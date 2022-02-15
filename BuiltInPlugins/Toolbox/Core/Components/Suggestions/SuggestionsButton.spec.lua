return function()
	local FFlagToolboxRemoveUnusedSuggestionsFeature = game:GetFastFlag("ToolboxRemoveUnusedSuggestionsFeature")
	if FFlagToolboxRemoveUnusedSuggestionsFeature then
		return
	end

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

	local SuggestionsButton = require(Plugin.Core.Components.Suggestions.SuggestionsButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SuggestionsButton = Roact.createElement(SuggestionsButton),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
