--[[
	Displays panels associated with the Flatten tool
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local FFlagTerrainToolsUseFragmentsForToolPanel = game:GetFastFlag("TerrainToolsUseFragmentsForToolPanel")
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")
local FFlagTerrainToolsFlattenUseBaseBrush = game:GetFastFlag("TerrainToolsFlattenUseBaseBrush")

local BaseBrush = require(Plugin.Src.Components.Tools.BaseBrush)

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BrushSettings = require(ToolParts.BrushSettings)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangeStrength = require(Actions.ChangeStrength)
local ChooseFlattenMode = require(Actions.ChooseFlattenMode)
local ChangePivot = require(Actions.ChangePivot)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local SetHeightPicker = require(Actions.SetHeightPicker)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetFixedPlane = require(Actions.SetFixedPlane)
local SetSnapToGrid = require(Actions.SetSnapToGrid)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType
local FlattenMode = TerrainEnums.FlattenMode
local ToolId = TerrainEnums.ToolId

local REDUCER_KEY = "FlattenTool"

if FFlagTerrainToolsFlattenUseBaseBrush then
local function mapStateToProps(state, props)
	return {
		toolName = ToolId.Flatten,

		baseSize = state[REDUCER_KEY].baseSize,
		height = state[REDUCER_KEY].height,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		strength = state[REDUCER_KEY].strength,
		flattenMode = state[REDUCER_KEY].flattenMode,
		pivot = state[REDUCER_KEY].pivot,
		fixedPlane = state[REDUCER_KEY].fixedPlane,
		planePositionY = state[REDUCER_KEY].planePositionY,
		heightPicker = state[REDUCER_KEY].heightPicker,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToFlatten = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChooseBrushShape = function (shape)
			dispatchToFlatten(ChooseBrushShape(shape))
		end,
		dispatchChangeBaseSize = function (size)
			dispatchToFlatten(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToFlatten(ChangeHeight(height))
		end,
		dispatchChangeStrength = function (strength)
			dispatchToFlatten(ChangeStrength(strength))
		end,
		dispatchChooseFlattenMode = function (flattenMode)
			dispatchToFlatten(ChooseFlattenMode(flattenMode))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToFlatten(ChangePivot(pivot))
		end,
		dispatchSetFixedPlane = function (fixedPlane)
			dispatchToFlatten(SetFixedPlane(fixedPlane))
		end,
		dispatchChangePlanePositionY = function (planePositionY)
			dispatchToFlatten(ChangePlanePositionY(planePositionY))
		end,
		dispatchSetHeightPicker = function (heightPicker)
			dispatchToFlatten(SetHeightPicker(heightPicker))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToFlatten(SetSnapToGrid(snapToGrid))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToFlatten(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToFlatten(SetBaseSizeHeightLocked(locked))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)

else
local Flatten = Roact.PureComponent:extend(script.Name)

function Flatten:init(initialProps)
	self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
	assert(self.pluginActivationController, "BaseBrush requires a PluginActivationController from context")

	self.terrainBrush = TerrainInterface.getTerrainBrush(self)
	assert(self.terrainBrush, "Flatten requires a TerrainBrush from context")

	if not FFlagTerrainToolsUseFragmentsForToolPanel then
		self.layoutRef = Roact.createRef()
		self.mainFrameRef = Roact.createRef()
	end

	self.toggleButtonFn = function(container)
		if FFlagTerrainToolsRefactor then
			warn("Flatten.toggleButtonFn() should not be used when FFlagTerrainToolsRefactor is true")
		end
		if container == "SnapToGrid" then
			self.props.dispatchSetSnapToGrid(not self.props.snapToGrid)
		elseif container == "IgnoreWater" then
			self.props.dispatchSetIgnoreWater(not self.props.ignoreWater)
		elseif container == "PlaneLock" then
			self.props.dispatchSetPlaneLock(not self.props.planeLock)
		elseif container == "HeightPicker" then
			self.props.dispatchSetHeightPicker(not self.props.heightPicker)
		end
	end

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

	self.setTextFn = function (text, container)
		if FFlagTerrainToolsRefactor then
			warn("Flatten.setTextFn() should not be used when FFlagTerrainToolsRefactor is true")
		end
		if container == "Pivot" then
			if text == PivotType.Top or text == PivotType.Bottom or text == PivotType.Center then
				self.props.dispatchChangePivot(text)
			end
		end

		text = string.gsub(text, "^[^0-9^%.^%-][^0-9^%.]", "")

		if container == "BaseSize" then
			self.props.dispatchChangeBaseSize(text)
			if self.props.baseSizeHeightLocked then
				self.props.dispatchChangeHeight(text)
			end
		elseif container == "Height" then
			self.props.dispatchChangeHeight(text)
			if self.props.baseSizeHeightLocked then
				self.props.dispatchChangeBaseSize(text)
			end
		elseif container == "Strength" then
			self.props.dispatchChangeStrength(text)
		elseif container == "PlanePositionY" then
			self.props.dispatchChangePlanePositionY(text)
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

	if not FFlagTerrainToolsUseFragmentsForToolPanel then
		self.onContentSizeChanged = function()
			local mainFrame = self.mainFrameRef.current
			local layout = self.layoutRef.current
			if mainFrame and layout then
				mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
			end
		end
	end

	self.brushSizeCallback = function(baseSize, height)
		self.props.dispatchChangeBaseSize(baseSize)
		self.props.dispatchChangeHeight(height)
	end

	self.brushStrengthCallback = function(strength)
		self.props.dispatchChangeStrength(tostring(strength))
	end

	self.updateBrushProperties = function()
		self.terrainBrush:updateSettings({
			currentTool = ToolId.Flatten,
			brushShape = self.props.brushShape or BrushShape.Sphere,
			cursorSize = self.props.baseSize or Constants.INITIAL_BRUSH_SIZE,
			cursorHeight = self.props.height or Constants.INITIAL_BRUSH_SIZE,
			pivot = self.props.pivot or PivotType.Center,
			strength = self.props.strength or Constants.INITIAL_BRUSH_STRENGTH,
			flattenMode = self.props.flattenMode,
			planePositionY = self.props.planePositionY or Constants.INITIAL_PLANE_POSITION_Y,
			heightPicker = self.props.heightPicker,
			fixedPlane = self.props.planeLock, -- TODO: DEVTOOLS-3102 add proper fixedPlane to value loop
			snapToGrid = self.props.snapToGrid,
			ignoreWater = self.props.ignoreWater,
		})
	end

	self.connectionYChanged = self.terrainBrush:subscribeToPlanePositionYChanged(function(planePositionY)
		local sigFig = math.floor(planePositionY * 1000)/1000
		self.props.dispatchChangePlanePositionY(sigFig)
	end)

	self.connectionPickerSet = self.terrainBrush:subscribeToHeightPickerSet(self.props.dispatchSetHeightPicker)

	self.brushSizeChangedConnection = self.terrainBrush:subscribeToRequestBrushSizeChanged(self.brushSizeCallback)
	self.brushStrengthChangedConnection = self.terrainBrush:subscribeToRequestBrushStrengthChanged(
		self.brushStrengthCallback)

	-- Starts the terrain brush with Flatten tool only if
	-- active tool in plugin activation controller
	-- Starts the terrain brush with Flatten tool only if
	-- active tool in plugin activation controller is Flatten
	self.safeStartWithTool = function()
		-- :getActiveTool() returns ToolId.None if no tool is selected, so this works in that case too
		if self.pluginActivationController:getActiveTool() == self.props.toolName then
			coroutine.wrap(function()
				self.terrainBrush:startWithTool(self.props.toolName)
			end)()
		end
	end

	-- When my tool becomes active, we want to run the terrain brush
	self.onToolActivatedConnection = self.pluginActivationController:subscribeToToolActivated(self.safeStartWithTool)

	-- Stop the terrain brush if the tool that was deselected is my tool
	self.onToolDeactivatedConnection = self.pluginActivationController:subscribeToToolDeactivated(function(toolId)
		if toolId == self.props.toolName then
			self.terrainBrush:stop()
		end
	end)
end

function Flatten:didUpdate()
	self:updateBrushProperties()
end

function Flatten:didMount()
	self.safeStartWithTool()
	self:updateBrushProperties()
end

function Flatten:render()
	local brushShape = self.props.brushShape or BrushShape.Cube
	local baseSize = self.props.baseSize or Constants.INITIAL_BRUSH_SIZE
	local height = self.props.height or Constants.INITIAL_BRUSH_SIZE
	local baseSizeHeightLocked = self.props.baseSizeHeightLocked
	local strength = self.props.strength or 1
	local pivot = self.props.pivot or PivotType.Center
	local planeLock = self.props.planeLock or false
	local snapToGrid = self.props.snapToGrid or false
	local ignoreWater = self.props.ignoreWater or false
	local flattenMode = self.props.flattenMode or FlattenMode.Both
	local planePositionY = self.props.planePositionY or Constants.INITIAL_PLANE_POSITION_Y
	local heightPicker = self.props.heightPicker or false

	local children = {
		BrushSettings = Roact.createElement(BrushSettings, {
			LayoutOrder = 1,
			currentTool = script.Name,
			brushShape = brushShape,
			baseSize = baseSize,
			height = height,
			baseSizeHeightLocked = baseSizeHeightLocked,
			strength = strength,
			flattenMode = flattenMode,
			pivot = pivot,
			fixedPlane = planeLock, -- TODO: DEVTOOLS-3102 add proper fixedplane to value loop
			planePositionY = planePositionY,
			heightPicker = heightPicker,
			snapToGrid = snapToGrid,
			ignoreWater = ignoreWater,

			setText = self.setTextFn,
			toggleButton = self.toggleButtonFn,
			toggleBaseSizeHeightLocked = self.toggleBaseSizeHeightLocked,

			setBrushShape = self.setBrushShape,

			setFlattenMode = FFlagTerrainToolsRefactor and self.props.dispatchChooseFlattenMode
				or function(flattenMode)
				self.props.dispatchChooseFlattenMode(flattenMode)
			end,
			setHeightPicker = FFlagTerrainToolsRefactor and self.props.dispatchSetHeightPicker or function()
				heightPicker = not heightPicker
				self.props.dispatchSetHeightPicker(not self.props.heightPicker)
			end,

			setBaseSize = self.setBaseSize,
			setHeight = self.setHeight,
			setStrength = self.props.dispatchChangeStrength,
			setPlanePositionY = self.props.dispatchChangePlanePositionY,
			setPivot = self.props.dispatchChangePivot,
			setPlaneLock = self.props.dispatchSetPlaneLock,
			setSnapToGrid = self.props.dispatchSetSnapToGrid,
			setIgnoreWater = self.props.dispatchSetIgnoreWater,
		}),
	}

	if FFlagTerrainToolsUseFragmentsForToolPanel then
		return Roact.createFragment(children)
	else
		children.Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			[Roact.Ref] = self.layoutRef,
			[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
		})

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Ref] = self.mainFrameRef,
		}, children)
	end
end

function Flatten:willUnmount()
	if self.connectionYChanged then
		self.connectionYChanged:disconnect()
		self.connectionYChanged = nil
	end

	if self.connectionPickerSet then
		self.connectionPickerSet:disconnect()
		self.connectionPickerSet = nil
	end

	if self.brushSizeChangedConnection then
		self.brushSizeChangedConnection:disconnect()
		self.brushSizeChangedConnection = nil
	end

	if self.brushStrengthChangedConnection then
		self.brushStrengthChangedConnection:disconnect()
		self.brushStrengthChangedConnection = nil
	end

	if self.onToolActivatedConnection then
		self.onToolActivatedConnection:disconnect()
		self.onToolActivatedConnection = nil
	end

	if self.onToolDeactivatedConnection then
		self.onToolDeactivatedConnection:disconnect()
		self.onToolDeactivatedConnection = nil
	end

	-- If the flatten brush is unmounting, but my tool is still active
	-- Stop the terrain brush anyway
	-- This case happens when Flatten unmounts before ToolSelectionListener:didUpdate()
	-- Or when Roact.unmount() was used on the whole tree because the plugin window is closing
	if self.pluginActivationController:getActiveTool() == self.props.toolName then
		self.terrainBrush:stop()
	end
end

local function mapStateToProps(state, props)
	return {
		toolName = ToolId.Flatten,

		baseSize = state[REDUCER_KEY].baseSize,
		height = state[REDUCER_KEY].height,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		strength = state[REDUCER_KEY].strength,
		flattenMode = state[REDUCER_KEY].flattenMode,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = state[REDUCER_KEY].planeLock,
		planePositionY = state[REDUCER_KEY].planePositionY,
		heightPicker = state[REDUCER_KEY].heightPicker,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToFlatten = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChooseBrushShape = function (shape)
			dispatchToFlatten(ChooseBrushShape(shape))
		end,
		dispatchChangeBaseSize = function (size)
			dispatchToFlatten(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToFlatten(ChangeHeight(height))
		end,
		dispatchChangeStrength = function (strength)
			dispatchToFlatten(ChangeStrength(strength))
		end,
		dispatchChooseFlattenMode = function (flattenMode)
			dispatchToFlatten(ChooseFlattenMode(flattenMode))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToFlatten(ChangePivot(pivot))
		end,
		dispatchSetPlaneLock = function (planeLock)
			dispatchToFlatten(SetPlaneLock(planeLock))
		end,
		dispatchChangePlanePositionY = function (planePositionY)
			dispatchToFlatten(ChangePlanePositionY(planePositionY))
		end,
		dispatchSetHeightPicker = function (heightPicker)
			dispatchToFlatten(SetHeightPicker(heightPicker))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToFlatten(SetSnapToGrid(snapToGrid))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToFlatten(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToFlatten(SetBaseSizeHeightLocked(locked))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Flatten)
end
