--[[
	Displays panels associated with the BaseBrush tool
]]
local FFlagTerrainToolsV2WithContext = game:GetFastFlag("TerrainToolsV2WithContext")
local FFlagTerrainToolsEditPlaneLock = game:GetFastFlag("TerrainToolsEditPlaneLock")
local FFlagTerrainToolsPlaneLockDraggerHandles = game:GetFastFlag("TerrainToolsPlaneLockDraggerHandles")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local SetPlaneLockActive = require(Actions.SetPlaneLockActive)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local TerrainBrush = require(Plugin.Src.TerrainInterfaces.TerrainBrushInstance)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BrushSettings = require(ToolParts.BrushSettings)
local MaterialSettings = require(ToolParts.MaterialSettings)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType
local PlaneLockType = TerrainEnums.PlaneLockType

local BaseBrush = Roact.PureComponent:extend(script.Name)

function BaseBrush:init()
	assert(TerrainEnums.ToolId[self.props.toolName], "Cannot use BaseBrush if brush type is not known")

	-- Ordered array of connections to signals
	-- Disconnected in willUnmount() in reverse order of connection
	self.connections = {}

	self.toggleBaseSizeHeightLocked = function()
		local newLocked = not self.props.baseSizeHeightLocked

		-- Can't unlock size and height for spheres so force it to stay locked
		if not newLocked and self.props.brushShape == BrushShape.Sphere then
			newLocked = true
		end

		self.props.dispatchSetBaseSizeHeightLocked(newLocked)
		if newLocked then
			self.props.dispatchChangeHeight(self.props.baseSize)
		end
	end

	self.setBaseSize = function(baseSize)
		self.props.dispatchChangeBaseSize(baseSize)
		if self.props.baseSizeHeightLocked then
			self.props.dispatchChangeHeight(baseSize)
		end

	end

	self.setHeight = function(height)
		self.props.dispatchChangeHeight(height)
		if self.props.baseSizeHeightLocked then
			self.props.dispatchChangeBaseSize(height)
		end
	end

	self.setBrushShape = function(brushShape)
		if self.props.dispatchChooseBrushShape then
			self.props.dispatchChooseBrushShape(brushShape)

			-- Doesn't make sense to have a sphere with a different height and size
			-- So when swapping to sphere, force them to lock and set height = size
			if brushShape == BrushShape.Sphere and not self.props.baseSizeHeightLocked then
				self.props.dispatchSetBaseSizeHeightLocked(true)
				self.props.dispatchChangeHeight(self.props.baseSize)
			end
		end
	end

	self.setFixedPlane = function(newFixedPlane)
		if self.props.dispatchSetFixedPlane then
			self.props.dispatchSetFixedPlane(newFixedPlane)
		end
		if self.props.dispatchSetHeightPicker then
			self.props.dispatchSetHeightPicker(false)
		end
	end

	self.updateBrushProperties = function()
		local planeLockState = true
		local autoMaterial = false
		local ignoreWater = false
		local ignoreParts = true
		local snapToGrid = false
		local fixedPlane = false
		local editPlaneMode = false
		local planeCFrame
		local heightPicker = false
		local planeLockActive
		-- For tools where these properties aren't settable, we need to set them to a default value
		-- Otherwise we'd try to pass autoMaterial=nil in the table below
		-- Which would fail and we'd inherit the state from the previous tool that was used
		if self.props.dispatchSetPlaneLock then
			planeLockState = self.props.planeLock
		end
		if self.props.dispatchSetAutoMaterial then
			autoMaterial = self.props.autoMaterial
		end
		if self.props.dispatchSetIgnoreWater then
			ignoreWater = self.props.ignoreWater
		end
		if self.props.dispatchSetIgnoreParts then
			ignoreParts = self.props.ignoreParts
		end
		if self.props.dispatchSetSnapToGrid then
			snapToGrid = self.props.snapToGrid
		end
		if FFlagTerrainToolsEditPlaneLock then
			editPlaneMode = false
			planeCFrame = Cryo.None

			if self.props.dispatchSetEditPlaneMode then
				editPlaneMode = self.props.editPlaneMode
			end
			if self.props.dispatchSetPlaneCFrame then
				planeCFrame = self.props.planeCFrame
			end

			local shortcutEnabled = self.props.planeLock == PlaneLockType.Manual and Constants.ToolUsesPlaneLock[self.props.toolName]
			self.props.PluginActionsController:SetEnabled("EditPlane", shortcutEnabled)
		end

		if self.props.dispatchSetFixedPlane then
			fixedPlane = self.props.fixedPlane
		end
		if self.props.dispatchSetHeightPicker then
			heightPicker = self.props.heightPicker
		end
		if self.props.dispatchSetPlaneLockActive then
			planeLockActive = self.props.PlaneLockActive
		end

		self.terrainBrush:updateSettings({
			autoMaterial = autoMaterial,
			brushShape = self.props.brushShape or BrushShape.Sphere,
			cursorHeight = self.props.height or Constants.INITIAL_BRUSH_SIZE,
			cursorSize = self.props.baseSize or Constants.INITIAL_BRUSH_SIZE,
			fixedPlane = fixedPlane,
			flattenMode = self.props.flattenMode,
			heightPicker = heightPicker,
			ignoreWater = ignoreWater,
			ignoreParts = ignoreParts,
			material = self.props.material,
			source = self.props.source,
			target = self.props.target,
			pivot = self.props.pivot or PivotType.Center,
			planeLock = planeLockState,
			editPlaneMode = editPlaneMode,
			planeCFrame = planeCFrame,
			planeLockActive = planeLockActive,
			planePositionY = self.props.planePositionY,
			snapToGrid = snapToGrid,
			strength = self.props.strength or Constants.INITIAL_BRUSH_STRENGTH,
		})
	end

	self.startBrush = function()
		spawn(function()
			self.terrainBrush:start()
		end)
	end
end

function BaseBrush:_connectEvents()
	local pluginActivationController = self.props.PluginActivationController
	local pluginActionsController = self.props.PluginActionsController

	table.insert(self.connections, pluginActivationController:subscribeToToolDeactivated(function(toolId)
		-- Stop the terrain brush if the tool that was deselected is my tool
		if toolId == self.props.toolName then
			self.terrainBrush:stop()
		end

		if FFlagTerrainToolsPlaneLockDraggerHandles and not Constants.ToolUsesPlaneLock[pluginActivationController:getActiveTool()] then
			self.props.dispatchSetPlaneLockActive(false)
		end
	end))

	table.insert(self.connections, pluginActivationController:subscribeToToolActivated(function(toolId)
		if toolId == self.props.toolName then
			self.startBrush()
		end

		if FFlagTerrainToolsPlaneLockDraggerHandles and Constants.ToolUsesPlaneLock[toolId] then
			self.props.dispatchSetPlaneLockActive(true)
		end
	end))

	table.insert(self.connections, self.terrainBrush:subscribeToRequestBrushSizeChanged(function(baseSize, height)
		if self.props.dispatchChangeBaseSize then
			self.props.dispatchChangeBaseSize(baseSize)
		end
		if self.props.dispatchChangeHeight then
			self.props.dispatchChangeHeight(height)
		end
	end))

	table.insert(self.connections, self.terrainBrush:subscribeToRequestBrushStrengthChanged(function(strength)
		if self.props.dispatchChangeStrength then
			self.props.dispatchChangeStrength(strength)
		end
	end))

	table.insert(self.connections, self.terrainBrush:subscribeToPlanePositionYChanged(function(planePositionY)
		if self.props.dispatchChangePlanePositionY then
			local sigFig = math.floor(planePositionY * 1000)/1000
			self.props.dispatchChangePlanePositionY(sigFig)
		end
	end))

	table.insert(self.connections, self.terrainBrush:subscribeToHeightPickerSet(function(heightPicker)
		if self.props.dispatchSetHeightPicker then
			self.props.dispatchSetHeightPicker(heightPicker)
		end
	end))

	table.insert(self.connections, self.terrainBrush:subscribeToMaterialSelectRequested(function(material, shiftdown)
		if not shiftdown then
			if self.props.dispatchSetMaterial then
				self.props.dispatchSetMaterial(material)
			end
			if self.props.dispatchSetSourceMaterial then
				self.props.dispatchSetSourceMaterial(material)
			end
		else
			if self.props.dispatchSetTargetMaterial then
				self.props.dispatchSetTargetMaterial(material)
			end
		end
	end))

	if FFlagTerrainToolsEditPlaneLock then
		table.insert(self.connections, pluginActionsController:Connect("EditPlane", function()
			if self.props.dispatchSetEditPlaneMode then
				self.props.dispatchSetEditPlaneMode(not self.props.editPlaneMode)
			end
		end))
	end
end

function BaseBrush:didUpdate(previousProps, previousState)
	self.updateBrushProperties()
end

function BaseBrush:didMount()
	self.terrainBrush = TerrainBrush.new({
		terrain = self.props.Terrain:get(),
		mouse = self.props.Mouse:get(),
		analytics = self.props.Analytics,
		tool = self.props.toolName,
	})

	self:_connectEvents()

	self.updateBrushProperties()
	self.startBrush()
end

function BaseBrush:willUnmount()
	if self.connections then
		-- Disconnect in the reverse order of connections
		-- So last to connect is first to disconnect
		for i = #self.connections, 1, -1 do
			self.connections[i]:Disconnect()
		end
		self.connections = nil
	end

	if self.terrainBrush then
		self.terrainBrush:destroy()
		self.terrainBrush = nil
	end
end

function BaseBrush:render()
	local layoutOrder = self.props.LayoutOrder or 1
	local isSubsection = self.props.isSubsection
	local autoMaterial = self.props.autoMaterial
	local baseSize = self.props.baseSize
	local baseSizeHeightLocked = self.props.baseSizeHeightLocked
	local brushShape = self.props.brushShape
	local editPlaneMode
	local fixedPlane = self.props.fixedPlane
	local flattenMode = self.props.flattenMode
	local height = self.props.height
	local heightPicker = self.props.heightPicker
	local ignoreWater = self.props.ignoreWater
	local ignoreParts = self.props.ignoreParts
	local material = self.props.material
	local pivot = self.props.pivot
	local planeCFrame
	local planeLock = self.props.planeLock
	local disablePlaneLock = self.props.disablePlaneLock
	local disableIgnoreWater = self.props.disableIgnoreWater
	local planePositionY = self.props.planePositionY
	local snapToGrid = self.props.snapToGrid
	local strength = self.props.strength

	if FFlagTerrainToolsEditPlaneLock then
		if FFlagTerrainToolsPlaneLockDraggerHandles then
			editPlaneMode = self.props.editPlaneMode and self.props.PlaneLockActive
		else
			editPlaneMode = self.props.editPlaneMode
		end
		planeCFrame = self.props.planeCFrame
	end

	return Roact.createFragment({
		BrushSettings = Roact.createElement(BrushSettings, {
			LayoutOrder = layoutOrder,
			isSubsection = isSubsection,

			currentTool = self.props.toolName,

			baseSize = baseSize,
			baseSizeHeightLocked = baseSizeHeightLocked,
			brushShape = brushShape,
			fixedPlane = fixedPlane,
			flattenMode = flattenMode,
			height = height,
			heightPicker = heightPicker,
			ignoreWater = ignoreWater,
			ignoreParts = ignoreParts,
			pivot = pivot,
			planeLock = planeLock,
			disablePlaneLock = disablePlaneLock,
			disableIgnoreWater = disableIgnoreWater,
			planePositionY = planePositionY,
			snapToGrid = snapToGrid,
			editPlaneMode = editPlaneMode,
			planeCFrame = planeCFrame,
			strength = strength,

			setBaseSize = self.setBaseSize,
			setBrushShape = self.setBrushShape,
			setEditPlaneMode = self.props.dispatchSetEditPlaneMode,
			setFixedPlane = self.setFixedPlane,
			setFlattenMode = self.props.dispatchChooseFlattenMode,
			setHeight = self.setHeight,
			setHeightPicker = self.props.dispatchSetHeightPicker,
			setIgnoreWater = self.props.dispatchSetIgnoreWater,
			setIgnoreParts = self.props.dispatchSetIgnoreParts,
			setPivot = self.props.dispatchChangePivot,
			setPlaneCFrame = self.props.dispatchSetPlaneCFrame,
			setPlaneLock = self.props.dispatchSetPlaneLock,
			setPlanePositionY = self.props.dispatchChangePlanePositionY,
			setSnapToGrid = self.props.dispatchSetSnapToGrid,
			setStrength = self.props.dispatchChangeStrength,
			toggleBaseSizeHeightLocked = self.toggleBaseSizeHeightLocked,
		}),

		MaterialSettings = material and Roact.createElement(MaterialSettings, {
			LayoutOrder = layoutOrder + 1,

			autoMaterial = autoMaterial,
			material = material,

			setAutoMaterial = self.props.dispatchSetAutoMaterial,
			setMaterial = self.props.dispatchSetMaterial,
		}),
	})
end

local REDUCER_KEY = "BaseTool"

if FFlagTerrainToolsV2WithContext then
	BaseBrush = withContext({
		Mouse = ContextServices.Mouse,
		Analytics = ContextServices.Analytics,
		Terrain = ContextItems.Terrain,
		PluginActivationController = ContextItems.PluginActivationController,
		PluginActionsController = FFlagTerrainToolsEditPlaneLock and ContextItems.PluginActionsController or nil,
	})(BaseBrush)
else
	ContextServices.mapToProps(BaseBrush, {
		Mouse = ContextServices.Mouse,
		Analytics = ContextServices.Analytics,
		Terrain = ContextItems.Terrain,
		PluginActivationController = ContextItems.PluginActivationController,
		PluginActionsController = FFlagTerrainToolsEditPlaneLock and ContextItems.PluginActionsController or nil,
	})
end

if FFlagTerrainToolsPlaneLockDraggerHandles then
	local function mapStateToProps(state, props)
		return {
			PlaneLockActive = state[REDUCER_KEY].planeLockActive,
		}
	end

	local function mapDispatchToProps(dispatch)
		local dispatchToBase = function(action)
			dispatch(ApplyToolAction(REDUCER_KEY, action))
		end

		return {
			dispatchSetPlaneLockActive = function(planeLockActive)
				dispatchToBase(SetPlaneLockActive(planeLockActive))
			end,
		}
	end

	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
else
	return BaseBrush
end
