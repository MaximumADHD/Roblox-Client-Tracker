return function()
	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Packages.Roact)

	local TestHelper = require(Plugin.Src.Utility.TestHelper)
	local TestRunner = require(Plugin.Src.Utility.TestRunner)
	local computeSnapPointsForInstance = require(Plugin.Src.Utility.computeSnapPointsForInstance)
	local runComponentTest = TestRunner.runComponentTest

	local SnapPoints = require(script.Parent.SnapPoints)

	-- Snapping hotspots
	local CENTER = 1
	local CORNERS = 8
	local EDGES = 12
	local FACES = 6
	local TOTAL_HOTSPOTS = CENTER + CORNERS + EDGES + FACES

	local HANDLES_PER_HOTSPOT = 2

	local function createTestSnapTarget()
		local part = TestHelper.createInstance("Part")
		part.CFrame = CFrame.new()
		part.Size = Vector3.new(1, 1, 1)
		return part, computeSnapPointsForInstance(part)
	end

	local draggerContext = nil

	beforeEach(function()
		draggerContext = TestHelper.createTestDraggerContext()
		draggerContext:setCamera(CFrame.new(0, 0, 10))
	end)

	afterEach(function()
		TestHelper.cleanTempInstances()
	end)

	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(SnapPoints, {
			DraggerContext = draggerContext,
			Focus = nil,
			SnapPoints = {},
		}))
	end)

	it("should render correctly", function()
		local target, snapPoints = createTestSnapTarget()

		runComponentTest(
			Roact.createElement(SnapPoints, {
				DraggerContext = draggerContext,
				Focus = target.Position,
				SnapPoints = snapPoints,
			}),
			function(container)
				local folder = container:FindFirstChildOfClass("Folder")
				expect(folder).to.be.ok()
			end
		)
	end)

	it("should render all points when focus near center", function()
		local target, snapPoints = createTestSnapTarget()
		local focus = target.Position + Vector3.new(0.1, 0.1, 0.1)

		runComponentTest(
			Roact.createElement(SnapPoints, {
				DraggerContext = draggerContext,
				Focus = focus,
				SnapPoints = snapPoints,
			}),
			function(container)
				local folder = container:FindFirstChildOfClass("Folder")
				expect(folder).to.be.ok()
				expect(#folder:GetChildren()).to.equal(TOTAL_HOTSPOTS * HANDLES_PER_HOTSPOT)
			end
		)
	end)

	it("should not render point that the focus is over", function()
		local target, snapPoints = createTestSnapTarget()
		local focus = target.Position

		runComponentTest(
			Roact.createElement(SnapPoints, {
				DraggerContext = draggerContext,
				Focus = focus,
				SnapPoints = snapPoints,
			}),
			function(container)
				local folder = container:FindFirstChildOfClass("Folder")
				expect(folder).to.be.ok()
				expect(#folder:GetChildren()).to.equal((TOTAL_HOTSPOTS - 1) * HANDLES_PER_HOTSPOT)
			end
		)
	end)

	it("should render no points when focus is very far away", function()
		local target, snapPoints = createTestSnapTarget()
		local focus = target.Position + Vector3.new(10000, 0, 0)

		runComponentTest(
			Roact.createElement(SnapPoints, {
				DraggerContext = draggerContext,
				Focus = focus,
				SnapPoints = snapPoints,
			}),
			function(container)
				local folder = container:FindFirstChildOfClass("Folder")
				expect(folder).to.be.ok()
				expect(#folder:GetChildren()).to.equal(0)
			end
		)
	end)
end
