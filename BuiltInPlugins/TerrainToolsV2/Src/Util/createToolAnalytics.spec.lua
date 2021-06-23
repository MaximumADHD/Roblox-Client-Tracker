local createToolAnalytics = require(script.Parent.createToolAnalytics)

local Plugin = script.Parent.Parent.Parent

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local PivotType = TerrainEnums.PivotType

local Constants = require(Plugin.Src.Util.Constants)

return function()
    local operationSettings = {
        currentTool = ToolId.Add,
        brushShape = BrushShape.Sphere,

        cursorSize = Constants.INITIAL_BRUSH_SIZE,
        cursorHeight = Constants.INITIAL_BRUSH_SIZE,
        strength = Constants.INITIAL_BRUSH_STRENGTH,

        material = Enum.Material.Grass,
        autoMaterial = false,

        flattenMode = FlattenMode.Both,
        pivot = PivotType.Center,

        ignoreWater = true,
        ignoreParts = true,
        planeLock = false,
        fixedPlane = false,
        snapToGrid = false,
        heightPicker = false,

		source = Enum.Material.Grass,
		target = Enum.Material.Brick,

        planePositionY = Constants.INITIAL_PLANE_POSITION_Y,

        -- Where to perform the operation
        -- This can tween from one location to another as the user moves their mouse
        centerPoint = Vector3.new(0, 0, 0),
        -- Where the brush center is after plane lock, snap to grid, etc.
        targetPoint = Vector3.new(0, 0, 0),
        -- A point on the plane that the brush is using
        -- Note: brush might not always be using a plane, depends on plane lock, fixed plane and height picker settings
        planePoint = Vector3.new(0, 0, 0),
        -- The normal of the plane the brush is using
        planeNormal = Vector3.new(0, 1, 0),
    }

	it("Analytics for add tool should work as expected", function()
		operationSettings.currentTool = ToolId.Add
		local toolAnalytics = createToolAnalytics(operationSettings)
		expect(toolAnalytics.material).to.equal("Grass")
		expect(toolAnalytics.autoMaterial).to.equal(false)
		expect(toolAnalytics.flattenMode).to.equal(nil)
		expect(toolAnalytics.fixedPlane).to.equal(nil)
		expect(toolAnalytics.planePositionY).to.equal(nil)
		expect(toolAnalytics.cursorHeight).to.equal(nil)
		expect(toolAnalytics.source).to.equal(nil)
		expect(toolAnalytics.target).to.equal(nil)
	end)

	it("Analytics for flatten tool with fixed plane should work as expected", function()
		operationSettings.currentTool = ToolId.Flatten
		operationSettings.fixedPlane = true
		local toolAnalytics = createToolAnalytics(operationSettings)
		expect(toolAnalytics.material).to.equal(nil)
		expect(toolAnalytics.autoMaterial).to.equal(nil)
		expect(toolAnalytics.flattenMode).to.equal(FlattenMode.Both)
		expect(toolAnalytics.fixedPlane).to.equal(true)
		expect(toolAnalytics.planePositionY).to.equal(Constants.INITIAL_PLANE_POSITION_Y)
		expect(toolAnalytics.cursorHeight).to.equal(nil)
		expect(toolAnalytics.source).to.equal(nil)
		expect(toolAnalytics.target).to.equal(nil)
	end)

	it("Analytics for flatten tool should work as expected", function()
		operationSettings.currentTool = ToolId.Flatten
		operationSettings.fixedPlane = false
		local toolAnalytics = createToolAnalytics(operationSettings)
		expect(toolAnalytics.material).to.equal(nil)
		expect(toolAnalytics.autoMaterial).to.equal(nil)
		expect(toolAnalytics.flattenMode).to.equal(FlattenMode.Both)
		expect(toolAnalytics.fixedPlane).to.equal(false)
		expect(toolAnalytics.planePositionY).to.equal(nil)
		expect(toolAnalytics.cursorHeight).to.equal(nil)
		expect(toolAnalytics.source).to.equal(nil)
		expect(toolAnalytics.target).to.equal(nil)
	end)

	it("Analytics for erode tool should work as expected", function()
		operationSettings.currentTool = ToolId.Erode
		local toolAnalytics = createToolAnalytics(operationSettings)
		expect(toolAnalytics.material).to.equal(nil)
		expect(toolAnalytics.autoMaterial).to.equal(nil)
		expect(toolAnalytics.flattenMode).to.equal(nil)
		expect(toolAnalytics.fixedPlane).to.equal(nil)
		expect(toolAnalytics.planePositionY).to.equal(nil)
		expect(toolAnalytics.cursorHeight).to.equal(nil)
		expect(toolAnalytics.source).to.equal(nil)
		expect(toolAnalytics.target).to.equal(nil)
	end)

	it("Analytics for paint tool should work as expected", function()
		operationSettings.currentTool = ToolId.Paint
		local toolAnalytics = createToolAnalytics(operationSettings)
		expect(toolAnalytics.autoMaterial).to.equal(nil)
		expect(toolAnalytics.source).to.equal(nil)
		expect(toolAnalytics.target).to.equal(nil)
	end)

	it("Analytics for replace tool should work as expected", function()
		operationSettings.currentTool = ToolId.Replace
		local toolAnalytics = createToolAnalytics(operationSettings)
		expect(toolAnalytics.source).to.equal("Grass")
		expect(toolAnalytics.target).to.equal("Brick")
	end)

	it("Analytics for tool with spherical brush should work as expected", function()
		operationSettings.brushShape = BrushShape.Cylinder
		local toolAnalytics = createToolAnalytics(operationSettings)
		expect(toolAnalytics.cursorHeight).to.equal(Constants.INITIAL_BRUSH_SIZE)
	end)
end
