return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Suggestion = require(Plugin.Core.Types.Suggestion)

	local Suggestions = require(Plugin.Core.Components.Suggestions.Suggestions)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Suggestions = Roact.createElement(Suggestions, {
				initialText = "Initial text",
				suggestions = Suggestion.SUGGESTIONS,
				maxWidth = 100,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
