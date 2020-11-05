return function()
	local Selection = game:GetService("Selection")

	local DraggerSchemaCore = script.Parent.Parent
	local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)
	local Packages = DraggerSchemaCore.Parent
	local DraggerFramework = Packages.DraggerFramework
	local DraggerToolFixture = require(DraggerFramework.DraggerTools.DraggerToolFixture)
	local DraggerContext_FixtureImpl = require(DraggerFramework.Implementation.DraggerContext_FixtureImpl)

	local function createContext()
		return DraggerContext_FixtureImpl.new(nil, Selection)
	end

	local function createFixture(context)
		return DraggerToolFixture.new(
			context, DraggerSchema, {
				AnalyticsName = "DispatchWorldClickTest"
			},
			function() end, function() end, function() end)
	end

	it("should drag select when you click nothing", function()
		local context = createContext()
		local fixture = createFixture(context)

		local result = DraggerSchema.dispatchWorldClick(context, fixture:getModel(), {
			ClickedItem = nil,
			ClickedSelectable = nil,
			ClickedPosition = Vector3.new(),
			SelectionDidContainSelectable = false,
			SelectionNowContainsSelectable = false,
		})

		expect(result).to.equal("DragSelecting")
	end)

	it("should freeform drag when you click the selection", function()
		local context = createContext()
		local fixture = createFixture(context)

		local part = Instance.new("Part")
		Selection:Set({part})

		fixture:select()

		local function testIt(didContainSelectable)
			return DraggerSchema.dispatchWorldClick(context, fixture:getModel(), {
				ClickedItem = part,
				ClickedSelectable = part,
				ClickedPosition = Vector3.new(),
				SelectionDidContainSelectable = didContainSelectable,
				SelectionNowContainsSelectable = true,
			})
		end

		expect(testIt(true)).to.equal("FreeformSelectionDrag")
		expect(testIt(false)).to.equal("FreeformSelectionDrag")

		fixture:deselect()
	end)

	it("should do nothing when you click a constraint", function()
		local context = createContext()
		local fixture = createFixture(context)

		fixture:select()

		local function testIt(didContainSelectable, objectType)
			local object = Instance.new(objectType)
			return DraggerSchema.dispatchWorldClick(context, fixture:getModel(), {
				ClickedItem = object,
				ClickedSelectable = object,
				ClickedPosition = Vector3.new(),
				SelectionDidContainSelectable = didContainSelectable,
				SelectionNowContainsSelectable = true,
			})
		end

		expect(testIt(true, "WeldConstraint")).to.equal("Ready")
		expect(testIt(false, "WeldConstraint")).to.equal("Ready")
		expect(testIt(true, "SpringConstraint")).to.equal("Ready")
		expect(testIt(false, "SpringConstraint")).to.equal("Ready")
		expect(testIt(true, "NoCollisionConstraint")).to.equal("Ready")
		expect(testIt(false, "NoCollisionConstraint")).to.equal("Ready")

		fixture:deselect()
	end)

	-- Not sure if this is desirable behavior. We carried it over from the
	-- legacy draggers but might want to change it.
	it("should box select when you click a part to deselect it and then drag", function()
		local context = createContext()
		local fixture = createFixture(context)

		local part = Instance.new("Part")

		fixture:select()

		local function testIt(didContainSelectable)
			return DraggerSchema.dispatchWorldClick(context, fixture:getModel(), {
				ClickedItem = part,
				ClickedSelectable = part,
				ClickedPosition = Vector3.new(),
				SelectionDidContainSelectable = didContainSelectable,
				SelectionNowContainsSelectable = false,
			})
		end

		expect(testIt(true)).to.equal("DragSelecting")
		expect(testIt(false)).to.equal("DragSelecting")

		fixture:deselect()
	end)
end