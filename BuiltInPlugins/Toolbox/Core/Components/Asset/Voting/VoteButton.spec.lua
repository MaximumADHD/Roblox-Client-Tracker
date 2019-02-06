return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local VoteButton = require(Plugin.Core.Components.Asset.Voting.VoteButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			VoteButton = Roact.createElement(VoteButton),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
