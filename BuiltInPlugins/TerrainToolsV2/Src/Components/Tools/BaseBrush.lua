--[[
	Displays panels associated with the BaseBrush tool
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")
local FFlagTerrainToolsReplaceSrcTogglesOff = game:GetFastFlag("TerrainToolsReplaceSrcTogglesOff")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local StudioPlugin = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.StudioPlugin) or nil
local TerrainInterface = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.TerrainInterface)
	or nil

local TerrainBrush = require(Plugin.Src.TerrainInterfaces.TerrainBrushInstance)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BrushSettings = require(ToolParts.BrushSettings)
local MaterialSettings = require(ToolParts.MaterialSettings)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType

local BaseBrush = Roact.PureComponent:extend(script.Name)

function BaseBrush:init()
	assert(TerrainEnums.ToolId[self.props.toolName], "Cannot use BaseBrush if brush type is not known")

	if not FFlagTerrainToolsUseDevFramework then
		self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
		assert(self.pluginActivationController, "BaseBrush requires a PluginActivationController from context")

		self.terrainBrush = TerrainBrush.new({
			terrain = TerrainInterface.getTerrain(self),
			mouse = StudioPlugin.getPlugin(self):GetMouse(),
			tool = self.props.toolName,
		})
	end

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
		local snapToGrid = false
		local fixedPlane = false
		local heightPicker = false
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
		if self.props.dispatchSetSnapToGrid then
			snapToGrid = self.props.snapToGrid
		end

		if self.props.dispatchSetFixedPlane then
			fixedPlane = self.props.fixedPlane
		end
		if self.props.dispatchSetHeightPicker then
			heightPicker = self.props.heightPicker
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
			material = self.props.material,
			source = self.props.source,
			target = self.props.target,
			pivot = self.props.pivot or PivotType.Center,
			planeLock = planeLockState,
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

	if not FFlagTerrainToolsUseDevFramework then
		self:_connectEvents()
	end
end

function BaseBrush:_connectEvents()
	local pluginActivationController = FFlagTerrainToolsUseDevFramework
		and self.props.PluginActivationController
		or self.pluginActivationController

	table.insert(self.connections, pluginActivationController:subscribeToToolDeactivated(function(toolId)
		-- Stop the terrain brush if the tool that was deselected is my tool
		if toolId == self.props.toolName then
			self.terrainBrush:stop()
		end
	end))

	table.insert(self.connections, pluginActivationController:subscribeToToolActivated(function(toolId)
		if toolId == self.props.toolName then
			self.startBrush()
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
end

function BaseBrush:didUpdate(previousProps, previousState)
	self.updateBrushProperties()
end

function BaseBrush:didMount()
	if FFlagTerrainToolsUseDevFramework then
		self.terrainBrush = TerrainBrush.new({
			terrain = self.props.Terrain:get(),
			mouse = self.props.Mouse:get(),
			analytics = self.props.Analytics,
			tool = self.props.toolName,
		})

		self:_connectEvents()
	end

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
	local fixedPlane = self.props.fixedPlane
	local flattenMode = self.props.flattenMode
	local height = self.props.height
	local heightPicker = self.props.heightPicker
	local ignoreWater = self.props.ignoreWater
	local material = self.props.material
	local pivot = self.props.pivot
	local planeLock = self.props.planeLock
	local disablePlaneLock = FFlagTerrainToolsReplaceSrcTogglesOff and self.props.disablePlaneLock
	local disableIgnoreWater = FFlagTerrainToolsReplaceSrcTogglesOff and self.props.disableIgnoreWater
	local planePositionY = self.props.planePositionY
	local snapToGrid = self.props.snapToGrid
	local strength = self.props.strength

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
			pivot = pivot,
			planeLock = planeLock,
			disablePlaneLock = disablePlaneLock,
			disableIgnoreWater = disableIgnoreWater,
			planePositionY = planePositionY,
			snapToGrid = snapToGrid,
			strength = strength,

			setBaseSize = self.setBaseSize,
			setBrushShape = self.setBrushShape,
			setFixedPlane = self.setFixedPlane,
			setFlattenMode = self.props.dispatchChooseFlattenMode,
			setHeight = self.setHeight,
			setHeightPicker = self.props.dispatchSetHeightPicker,
			setIgnoreWater = self.props.dispatchSetIgnoreWater,
			setPivot = self.props.dispatchChangePivot,
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

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(BaseBrush, {
		Mouse = ContextServices.Mouse,
		Analytics = ContextServices.Analytics,
		Terrain = ContextItems.Terrain,
		PluginActivationController = ContextItems.PluginActivationController,
	})
end

return BaseBrush
