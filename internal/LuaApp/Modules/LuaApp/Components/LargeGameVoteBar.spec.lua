return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local LargeGameVoteBar = require(Modules.LuaApp.Components.LargeGameVoteBar)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LargeGameVoteBar, {
			frameProps = {},
			iconSize = 28,
			upVotes = 0,
			downVotes = 0,
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)

	it("should create and destroy without errors when the total number of votes is 0", function()
		local element = Roact.createElement(LargeGameVoteBar, {
			frameProps = {},
			iconSize = 28,
			upVotes = 0,
			downVotes = 0,
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end