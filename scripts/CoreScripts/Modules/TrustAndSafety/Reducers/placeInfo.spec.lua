return function()
	local CorePackages = game:GetService("CorePackages")

	local TnsModule = script.Parent.Parent
	local SetPlaceInfo = require(TnsModule.Actions.SetPlaceInfo)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local placeInfo = require(script.Parent.placeInfo)

	describe("name & description", function()
		local newName = "newName"
		local newDescription = "newDescription"

		it("should update", function()
			local oldState = placeInfo(nil, {})
			local newState = placeInfo(oldState, SetPlaceInfo(newName, newDescription))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				name = newName,
				description = newDescription,
			})
		end)
	end)
end
