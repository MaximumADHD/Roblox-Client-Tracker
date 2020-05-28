return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local NoResultsDetail = require(Plugin.Core.Components.NoResultsDetail)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			NoResultsDetail = Roact.createElement(NoResultsDetail, {
				content = {
					TextLine1 = "foo",
					TextLine2 = "bar {link}",
					LinkText = "link"
				},
				onLinkClicked = function() end
			}),
		})
		local instance = Roact.mount(element)

		Roact.unmount(instance)
	end)
end
