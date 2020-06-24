return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AudioSearch = require(Plugin.Core.Components.SearchOptions.AudioSearch)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AudioSearch = Roact.createElement(AudioSearch, {
				minDuration = 0,
				maxDuration = 4,
				onDurationChange = function() end,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
