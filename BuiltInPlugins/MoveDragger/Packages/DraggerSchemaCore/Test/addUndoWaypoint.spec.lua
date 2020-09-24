return function()
	local Selection = game:GetService("Selection")

	local DraggerSchemaCore = script.Parent.Parent
	local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)
	local Packages = DraggerSchemaCore.Parent
	local DraggerFramework = Packages.DraggerFramework
	local DraggerContext_FixtureImpl = require(DraggerFramework.Implementation.DraggerContext_FixtureImpl)

	local function createContext()
		return DraggerContext_FixtureImpl.new(nil, Selection)
	end

	it("should error if you accidentally try to call it with a colon", function()
		expect(function()
			local context = createContext()
			DraggerSchema:addUndoWaypoint(context, "FooBar")
		end).to.throw()
	end)

	it("should add an undo waypoint", function()
		local context = createContext()
		DraggerSchema.addUndoWaypoint(context, "FooBar")
		context:expectMostRecentUndoWaypoint("FooBar")
	end)
end