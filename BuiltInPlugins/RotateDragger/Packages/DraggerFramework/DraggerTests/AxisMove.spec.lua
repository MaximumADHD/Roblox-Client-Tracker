return function()
	local DraggerFramework = script.Parent.Parent

	local Packages = DraggerFramework.Parent
	local DraggerSchemaCore = Packages.DraggerSchemaCore
	local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)

	local MoveHandles = require(DraggerFramework.Handles.MoveHandles)
	local function ikTransformFunc_Move(partMover, transform, collisionsMode)
		return partMover:moveToWithIk(transform, collisionsMode)
	end

	local DraggerToolFixture = require(DraggerFramework.DraggerTools.DraggerToolFixture)
	local DraggerContext_FixtureImpl = require(DraggerFramework.Implementation.DraggerContext_FixtureImpl)

	local selectionObject = DraggerSchema.Selection.new()

	beforeEach(function()
		for _, child in pairs(workspace:GetChildren()) do
			if not child:IsA("Terrain") then
				child:Destroy()
			end
		end
		selectionObject:Set({})
	end)

	local function setup(guiTarget)
		local context = DraggerContext_FixtureImpl.new(
			guiTarget, selectionObject)
		local fixture = DraggerToolFixture.new(context, DraggerSchema, {
			AnalyticsName = "TestFixture",
			HandlesList = {
				MoveHandles.new(context, {
					ShowBoundingBox = false,
				}, DraggerSchema.TransformHandlesImplementation.new(
					context, ikTransformFunc_Move)),
			},
		})
		return context, fixture
	end

	local function setupXYDrag(context, haveTestPart)
		context:setCamera(CFrame.new(0, 0, 10))
		local background = Instance.new("Part", workspace)
		background.Name = "Background"
		background.Size = Vector3.new(10, 10, 1)
		background.CFrame = CFrame.new(0, 0, -1.5)
		background.Locked = true
		local part
		if haveTestPart then
			part = Instance.new("Part", workspace)
			part.Size = Vector3.new(1, 1, 1)
			part.Name = "TestPart"
		end
		return background, part
	end

	local function setupXYDragWithPart(context)
		return setupXYDrag(context, true)
	end

	local function dragAlongPlusX(fixture, studs)
		fixture:select()
		fixture:mouseMove(0.5, 0.5)
		fixture:mouseDown()
		fixture:mouseUp()
		fixture:mouseMove(0.8, 0.5)
		fixture:mouseDown()
		fixture:mouseMove(0.8 + 0.1 * studs, 0.5)
		fixture:mouseUp()
		fixture:deselect()
	end

	local function dragAlongPlusY(fixture, studs)
		fixture:select()
		fixture:mouseMove(0.5, 0.5)
		fixture:mouseDown()
		fixture:mouseUp()
		fixture:mouseMove(0.5, 0.8)
		fixture:mouseDown()
		fixture:mouseMove(0.5, 0.8 + 0.1 * studs)
		fixture:mouseUp()
		fixture:deselect()
	end

	describe("basic dragging", function()
		it("should drag along X", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			dragAlongPlusX(fixture, 2)

			expect(part.Position).to.equal(Vector3.new(2, 0, 0))
		end)

		it("should still have the part selected after dragging", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			dragAlongPlusX(fixture, 2)

			local selection = selectionObject:Get()
			expect(#selection).to.equal(1)
			expect(selection[1]).to.equal(part)
		end)

		it("should drag along Y", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			dragAlongPlusY(fixture, 2)

			expect(part.Position).to.equal(Vector3.new(0, 2, 0))
		end)
	end)

	describe("grid snap", function()
		it("should accept any move without snapping", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			local arbitraryMove = 1.567
			context:setGridSize(0)
			dragAlongPlusX(fixture, arbitraryMove)

			expect(part.Position:FuzzyEq(Vector3.new(arbitraryMove, 0, 0))).to.be.ok()
		end)

		it("should snap to a bigger increment", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			context:setGridSize(2)
			dragAlongPlusX(fixture, 1.9)

			expect(part.Position).to.equal(Vector3.new(2, 0, 0))
		end)
	end)

	describe("collisions", function()
		it("should collide with a part when snapping is off", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			local arbitraryMove = 1.567
			local wall = Instance.new("Part", workspace)
			wall.Size = Vector3.new(1, 10, 10)
			wall.CFrame = CFrame.new(arbitraryMove + 0.5, 0, 0)

			context:setGridSize(0)
			dragAlongPlusX(fixture, arbitraryMove + 0.9)

			expect(part.Position:FuzzyEq(Vector3.new(arbitraryMove, 0, 0))).to.be.ok()
		end)

		it("should drag past a collision when you drag far enough", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			local arbitraryMove = 1.567
			local wall = Instance.new("Part", workspace)
			wall.Size = Vector3.new(1, 10, 10)
			wall.CFrame = CFrame.new(arbitraryMove + 0.5, 0, 0)

			context:setGridSize(0)
			dragAlongPlusX(fixture, arbitraryMove + 1.1)

			expect(part.Position:FuzzyEq(Vector3.new(arbitraryMove + 1.1, 0, 0))).to.be.ok()
		end)

		it("should be allowed to come exactly in contact with snapping on", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			local wall = Instance.new("Part", workspace)
			wall.Size = Vector3.new(1, 10, 10)
			wall.CFrame = CFrame.new(3, 0, 0)

			dragAlongPlusX(fixture, 2)

			expect(part.Position).to.equal(Vector3.new(2, 0, 0))
		end)

		it("should be bumped out of snap in case of a collision", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			local wall = Instance.new("Part", workspace)
			wall.Size = Vector3.new(1, 10, 10)
			wall.CFrame = CFrame.new(3.5, 0, 0)

			dragAlongPlusX(fixture, 3)

			expect(part.Position:FuzzyEq(Vector3.new(2.5, 0, 0))).to.be.ok()
		end)

		it("should not collide when collisions are disabled", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			local wall = Instance.new("Part", workspace)
			wall.Size = Vector3.new(1, 10, 10)
			wall.CFrame = CFrame.new(3.5, 0, 0)

			context:setGridSize(0)
			context:setCollisionsEnabled(false)
			dragAlongPlusX(fixture, 3.14)

			expect(part:GetTouchingParts()[1]).to.equal(wall)
			expect(part.Position:FuzzyEq(Vector3.new(3.14, 0, 0))).to.be.ok()
		end)
	end)

	describe("join surfaces", function()
		it("should join to a part", function()
			local context, fixture = setup()
			local _, part = setupXYDragWithPart(context)

			local wall = Instance.new("Part", workspace)
			wall.Size = Vector3.new(1, 10, 10)
			wall.CFrame = CFrame.new(3, 0, 0)

			dragAlongPlusX(fixture, 2)

			expect(#part:GetChildren()).to.equal(1)
			expect(part:GetChildren()[1].ClassName).to.equal("Weld")
		end)
	end)

	describe("attachment dragging", function()
		-- TODO:
	end)

	describe("local vs global space", function()
		-- TODO:
	end)

	describe("physical (IK) dragging", function()
		-- TODO:
	end)

	describe("dragging inside and outside workspace", function()
		-- TODO:
	end)

	describe("dragging welded assemblies", function()
		-- TODO:
	end)
end