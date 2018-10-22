return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local VoteButton = require(Plugin.Core.Components.Asset.Voting.VoteButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(VoteButton)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
