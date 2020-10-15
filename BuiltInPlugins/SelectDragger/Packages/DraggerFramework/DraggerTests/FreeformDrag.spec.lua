--[[
	Integration tests of the LuaDragger freeform dragging behavior.

	Tests that a fully set up DraggerToolFixture can drag test objects and have
	them end up in the right place with the correct properties.
]]

-- Just select the fixture, click and release in the center of the screen,
-- and deselect the fixture.
local function trivialSelectAndDrag(fixture)
	fixture:select()
	fixture:mouseMove(0.5, 0.5)
	fixture:mouseDown()
	fixture:mouseMove(0, 0) -- Need to move to start the drag
	fixture:mouseMove(0.5, 0.5)
	fixture:mouseUp()
	fixture:deselect()
end

return function()
	local DraggerFramework = script.Parent.Parent

	local Packages = DraggerFramework.Parent
	local DraggerSchemaCore = Packages.DraggerSchemaCore
	local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)

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
		})
		return context, fixture
	end

	it("should be created", function()
		local context, fixture = setup()

		expect(fixture).to.be.ok()
	end)

	local function setupXYDrag(context)
		context:setCamera(CFrame.new(0, 0, 10))
		local background = Instance.new("Part", workspace)
		background.Size = Vector3.new(10, 10, 1)
		background.CFrame = CFrame.new(0, 0, -0.5)
		background.Locked = true
		return background
	end

	describe("Basic behavior", function()
		it("should not error with no target", function()
			local context, fixture = setup()

			expect(function() trivialSelectAndDrag(fixture) end).never.to.throw()
		end)

		it("can select a part", function()
			local context, fixture = setup()

			setupXYDrag(context)

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:mouseUp()
			fixture:deselect()

			local selection = selectionObject:Get()
			expect(#selection).to.equal(1)
			expect(selection[1]).to.equal(part)
		end)

		-- Note: Both Ctrl+Click and Shift+Click can extend the selection
		local function testCtrlOrShiftSelect(ctrl, shift)
			local context, fixture = setup()

			setupXYDrag(context)

			local part1 = Instance.new("Part", workspace)
			part1.Size = Vector3.new(2, 2, 2)
			part1.CFrame = CFrame.new()

			local part2 = Instance.new("Part", workspace)
			part2.Size = Vector3.new(2, 2, 2)
			part2.CFrame = CFrame.new(2, 0, 0)

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:mouseUp()
			context:setCtrlAltShift(ctrl, false, shift)
			fixture:mouseMove(0.7, 0.5)
			fixture:mouseDown()
			fixture:mouseUp()
			fixture:deselect()

			local selection = selectionObject:Get()
			expect(#selection).to.equal(2)
		end

		it("can shift-select multiple parts", function()
			testCtrlOrShiftSelect(false, true)
		end)

		it("can ctrl-select multiple parts", function()
			testCtrlOrShiftSelect(true, false)
		end)

		it("can ctrl-alt-select multiple parts", function()
			testCtrlOrShiftSelect(true, true)
		end)
	end)

	describe("Basic Part Dragging", function()
		it("should drag a part", function()
			local context, fixture = setup()

			local background = setupXYDrag(context)
			local originalBackgroundPosition = background.Position

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:mouseMove(0.5, 0.8)
			fixture:mouseUp()
			expect(part.Position).to.equal(Vector3.new(0, 3, 1))
			expect(background.Position).to.equal(originalBackgroundPosition)
			fixture:mouseDown()
			fixture:mouseMove(0.9, 0.9)
			fixture:mouseUp()
			expect(part.Position).to.equal(Vector3.new(4, 4, 1))
			expect(background.Position).to.equal(originalBackgroundPosition)
			fixture:deselect()
		end)

		it("should drag a model", function()
			local context, fixture = setup()

			local background = setupXYDrag(context)
			local originalBackgroundPosition = background.Position

			local model = Instance.new("Model", workspace)
			local part1 = Instance.new("Part", model)
			part1.Size = Vector3.new(2, 2, 2)
			part1.CFrame = CFrame.new()
			local part2 = Instance.new("Part", model)
			part2.Size = Vector3.new(2, 2, 2)
			part2.CFrame = CFrame.new(-2, 0, 0)

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:mouseMove(0.5, 0.8)
			fixture:mouseUp()
			expect(part1.Position).to.equal(Vector3.new(0, 3, 1))
			expect(part2.Position).to.equal(Vector3.new(-2, 3, 1))
			fixture:deselect()
		end)

		it("should not effect anchored", function()
			local context, fixture = setup()

			setupXYDrag(context)

			local part1 = Instance.new("Part", workspace)
			part1.Size = Vector3.new(2, 2, 2)
			part1.CFrame = CFrame.new()
			part1.Anchored = true

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:mouseMove(0.5, 0.9)
			fixture:mouseUp()

			local part2 = Instance.new("Part", workspace)
			part2.Size = Vector3.new(2, 2, 2)
			part2.CFrame = CFrame.new()
			part2.Anchored = false

			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:mouseMove(0.5, 0.1)
			fixture:mouseUp()
			fixture:deselect()

			expect(part1.Position).to.equal(Vector3.new(0, 4, 1))
			expect(part2.Position).to.equal(Vector3.new(0, -4, 1))
			expect(part1.Anchored).to.equal(true)
			expect(part2.Anchored).to.equal(false)
		end)

		it("should not snap if grid snap is off", function()
			local context, fixture = setup()

			context:setGridSize(0.001)

			setupXYDrag(context)

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:mouseMove(0.5, 0.542)
			fixture:mouseUp()
			fixture:deselect()
			expect(part.Position:FuzzyEq(Vector3.new(0, 0.42, 1))).to.ok()
		end)
	end)

	describe("Joint Behavior", function()
		it("should make not make joints when Joints are disabled", function()
			local context, fixture = setup()

			context:setJoinSurfaces(false)

			setupXYDrag(context)

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			trivialSelectAndDrag(fixture)
			expect(#part:GetChildren()).to.equal(0)
		end)

		it("should make joints when joints are enabled", function()
			local context, fixture = setup()

			context:setJoinSurfaces(true)

			local background = setupXYDrag(context)

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			trivialSelectAndDrag(fixture)
			expect(#part:GetChildren()).to.equal(1)
			expect(part:GetChildren()[1].Part1).to.equal(background)
		end)

		it("should not make a joint to something with which it is already joined", function()
			-- E.g.: If we drag it onto something it is already joined to via a
			-- rope constraint.
			local context, fixture = setup()

			context:setJoinSurfaces(true)

			local background = setupXYDrag(context)

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			trivialSelectAndDrag(fixture)

			-- The joint should be the only child
			expect(#part:GetChildren()).to.equal(1)
			expect(part:GetChildren()[1].ClassName).to.equal("Weld")

			local attachment0 = Instance.new("Attachment", background)
			local attachment1 = Instance.new("Attachment", part)
			local rope = Instance.new("RopeConstraint", background)
			rope.Attachment0 = attachment0
			rope.Attachment1 = attachment1

			trivialSelectAndDrag(fixture)

			-- The attachment should be the only child
			expect(#part:GetChildren()).to.equal(1)
			expect(part:GetChildren()[1].ClassName).to.equal("Attachment")
		end)

		it("should not make joints for a sphere", function()
			local context, fixture = setup()

			context:setJoinSurfaces(true)

			local background = setupXYDrag(context)

			local part = Instance.new("Part", workspace)
			part.Shape = Enum.PartType.Ball
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			trivialSelectAndDrag(fixture)
			expect(#part:GetChildren()).to.equal(0)
		end)

		local function testSurfaceJointType(surfaceType, jointClass)
			local context, fixture = setup()

			context:setJoinSurfaces(true)

			local background = setupXYDrag(context)

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()
			part.FrontSurface = surfaceType

			trivialSelectAndDrag(fixture)
			expect(#part:GetChildren()).to.equal(1)
			expect(part:GetChildren()[1].Part1).to.equal(background)
			expect(part:GetChildren()[1].ClassName).to.equal(jointClass)
		end

		-- Note: The purpose of these tests is to verify that post surface type
		-- changes the draggers ignore Hinges / Motors and simply make Welds
		-- for all surface types.
		it("should should make a Weld joint for a hinged part", function()
			testSurfaceJointType(Enum.SurfaceType.Hinge, "Weld")
		end)

		it("should should make a Weld joint for a motored part", function()
			testSurfaceJointType(Enum.SurfaceType.Motor, "Weld")
		end)

		it("should should make a Weld joint for a stepping motored part", function()
			testSurfaceJointType(Enum.SurfaceType.SteppingMotor, "Weld")
		end)
	end)

	describe("Box Select", function()
		it("should not box select a locked part", function()
			local context, fixture = setup()

			setupXYDrag(context)

			fixture:select()
			fixture:mouseMove(0.0, 0.0)
			fixture:mouseDown()
			fixture:mouseMove(1.0, 1.0)
			fixture:mouseUp()
			fixture:deselect()

			expect(#selectionObject:Get()).to.equal(0)
		end)

		it("should should box select an in-bounds part", function()
			local context, fixture = setup()

			setupXYDrag(context)

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			fixture:select()
			fixture:mouseMove(0.0, 0.0)
			fixture:mouseDown()
			fixture:mouseMove(1.0, 1.0)
			fixture:mouseUp()
			fixture:deselect()

			local selection = selectionObject:Get()
			expect(#selection).to.equal(1)
			expect(selection[1]).to.equal(part)
		end)

		it("should should not box select an out-of-bounds part", function()
			local context, fixture = setup()

			local part = Instance.new("Part", workspace)
			part.Size = Vector3.new(2, 2, 2)
			part.CFrame = CFrame.new()

			fixture:select()
			fixture:mouseMove(0.0, 0.0)
			fixture:mouseDown()
			fixture:mouseMove(0.2, 0.2)
			fixture:mouseUp()
			fixture:deselect()

			local selection = selectionObject:Get()
			expect(#selection).to.equal(0)
		end)

		it("should box select an in-bounds model", function()
			local context, fixture = setup()

			local part1 = Instance.new("Part", workspace)
			part1.Size = Vector3.new(2, 2, 2)
			part1.CFrame = CFrame.new(0, 4, 0)

			local part2 = Instance.new("Part", workspace)
			part2.Size = Vector3.new(2, 2, 2)
			part2.CFrame = CFrame.new(0, -4, 0)

			-- Select inbetweeen the two parts -> nothing should be selected
			fixture:select()
			fixture:mouseMove(0.4, 0.4)
			fixture:mouseDown()
			fixture:mouseMove(0.6, 0.6)
			fixture:mouseUp()

			local selection = selectionObject:Get()
			expect(#selection).to.equal(0)

			local model = Instance.new("Model", workspace)
			part1.Parent = model
			part2.Parent = model

			-- Do the same select, but this time the model spans the middle,
			-- so our box select should include it.
			fixture:mouseMove(0.4, 0.4)
			fixture:mouseDown()
			fixture:mouseMove(0.6, 0.6)
			fixture:mouseUp()
			fixture:deselect()

			local selection2 = selectionObject:Get()
			expect(#selection2).to.equal(1)
			expect(selection2[1]).to.equal(model)
		end)

		it("should box select parts in a model with Alt+box select", function()
			local context, fixture = setup()

			context:setCtrlAltShift(false, true, false)

			local part1 = Instance.new("Part", workspace)
			part1.Size = Vector3.new(2, 2, 2)
			part1.CFrame = CFrame.new(0, 4, 0)

			local part2 = Instance.new("Part", workspace)
			part2.Size = Vector3.new(2, 2, 2)
			part2.CFrame = CFrame.new(0, -4, 0)

			local model = Instance.new("Model", workspace)
			part1.Parent = model
			part2.Parent = model

			fixture:select()
			fixture:mouseMove(0.0, 0.0)
			fixture:mouseDown()
			fixture:mouseMove(1.0, 1.0)
			fixture:mouseUp()
			fixture:deselect()

			local selection = selectionObject:Get()
			expect(#selection).to.equal(2)
			expect(selection[1]).to.never.equal(model)
			expect(selection[2]).to.never.equal(model)
		end)

		it("should xor the selection with Shift+box select", function()
			local context, fixture = setup()

			setupXYDrag(context)

			local part1 = Instance.new("Part", workspace)
			part1.Size = Vector3.new(2, 2, 2)
			part1.CFrame = CFrame.new(0, 0, 0)
			part1.Name = "Part1"

			local part2 = Instance.new("Part", workspace)
			part2.Size = Vector3.new(2, 2, 2)
			part2.CFrame = CFrame.new(0, 4, 0)
			part2.Name = "Part2"

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:mouseUp()

			local selection = selectionObject:Get()
			expect(#selection).to.equal(1)
			expect(selection[1]).to.equal(part1)

			context:setCtrlAltShift(false, false, true)

			fixture:mouseMove(0.0, 0.0)
			fixture:mouseDown()
			fixture:mouseMove(1.0, 1.0)
			fixture:mouseUp()
			fixture:deselect()

			local selection2 = selectionObject:Get()
			expect(#selection2).to.equal(1)
			expect(selection2[1]).to.equal(part2)
		end)
	end)

	describe("Tilt Rotate", function()
		it("should Tilt towards the camera when you press T", function()
			local context, fixture = setup()

			setupXYDrag(context)

			local part1 = Instance.new("Part", workspace)
			part1.Size = Vector3.new(2, 2, 2)
			part1.CFrame = CFrame.new(0, 0, 0)
			part1.Name = "Part1"

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:keyPress(Enum.KeyCode.T)
			fixture:mouseUp()
			fixture:deselect()

			expect(part1.CFrame.UpVector:FuzzyEq(Vector3.new(0, 1, 0))).to.be.ok()
		end)

		it("should Rotate around the normal you press R", function()
			local context, fixture = setup()

			setupXYDrag(context)

			local part1 = Instance.new("Part", workspace)
			part1.Size = Vector3.new(2, 2, 2)
			part1.CFrame = CFrame.new(0, 0, 0)
			part1.Name = "Part1"

			fixture:select()
			fixture:mouseMove(0.5, 0.5)
			fixture:mouseDown()
			fixture:keyPress(Enum.KeyCode.R)
			fixture:mouseUp()
			fixture:deselect()

			expect(part1.CFrame.UpVector:FuzzyEq(Vector3.new(1, 0, 0))).to.be.ok()
		end)
	end)
end