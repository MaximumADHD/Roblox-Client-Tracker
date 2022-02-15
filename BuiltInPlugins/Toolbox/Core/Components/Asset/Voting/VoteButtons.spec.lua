return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local VoteButtons = require(Plugin.Core.Components.Asset.Voting.VoteButtons)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			VoteButtons = Roact.createElement(VoteButtons, {
				voting = {
					HasVoted = false,
					UserVote = false,
				},
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
