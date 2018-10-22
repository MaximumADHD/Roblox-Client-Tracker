return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

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
