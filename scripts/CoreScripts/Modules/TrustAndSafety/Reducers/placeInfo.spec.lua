return function()
	local TnsModule = script.Parent.Parent
	local SetPlaceInfo = require(TnsModule.Actions.SetPlaceInfo)

	local placeInfo = require(script.Parent.placeInfo)

	describe("name & description", function()
		local newName = "newName"
		local newDescription = "newDescription"

		it("should update", function()
			local oldState = placeInfo(nil, {})
			local newState = placeInfo(oldState, SetPlaceInfo(newName, newDescription))
			expect(oldState).to.never.equal(newState)
			expect(newState.name).to.equal(newName)
			expect(newState.description).to.equal(newDescription)
		end)
	end)
end
