return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
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
