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

	local SuggestionsLabel = require(Plugin.Core.Components.Suggestions.SuggestionsLabel)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SuggestionsLabel = Roact.createElement(SuggestionsLabel)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
