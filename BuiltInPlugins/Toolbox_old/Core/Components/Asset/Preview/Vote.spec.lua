return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Vote = require(Plugin.Core.Components.Asset.Preview.Vote)

	local function createTestAsset(container, name)
		local voting = {
			CanVote = false,
			HasVoted = false,
			UserVote = false,
		}

		local element = Roact.createElement(Vote, {}, {
			position = UDim2.new(1, 0, 1, 0),
			size = UDim2.new(0, 100, 0, 20),
			assetId = 183435411,
			voting = voting,
		})

		return Roact.mount(element, container or nil, name or "")
	end

	itSKIP("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end