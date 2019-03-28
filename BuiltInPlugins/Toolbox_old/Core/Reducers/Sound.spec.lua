return function()
	local Plugin = script.Parent.Parent.Parent

	local Sound = require(Plugin.Core.Reducers.Sound)

	it("should return a table with assets, network errors and page info", function()
		local state = Sound(nil, {})

		expect(type(state)).to.equal("table")
		expect(type(state.currentSoundId)).to.equal("number")
		expect(type(state.isPlaying)).to.equal("boolean")
	end)
end