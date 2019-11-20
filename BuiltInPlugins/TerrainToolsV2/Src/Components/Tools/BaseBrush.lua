--[[
	Displays panels associated with the BaseBrush tool
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local FFlagTerrainToolsRefactorTerrainBrush = game:GetFastFlag("TerrainToolsRefactorTerrainBrush")

local StudioPlugin = require(Plugin.Src.ContextServices.StudioPlugin)
local TerrainInterface = FFlagTerrainToolsRefactorTerrainBrush and require(Plugin.Src.ContextServices.TerrainInterface)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BrushSettings = require(ToolParts.BrushSettings)
local MaterialSettings = require(ToolParts.MaterialSettings)

local Functions = Plugin.Src.Components.Functions
local TerrainBrush = not FFlagTerrainToolsRefactorTerrainBrush and require(Functions.TerrainBrush) or nil

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType

local FFlagTerrainToolsEnableHeightSlider = game:GetFastFlag("TerrainToolsEnableHeightSlider")

local BaseBrush = Roact.PureComponent:extend(script.Name)

function BaseBrush:init(initialProps)
	assert(TerrainEnums.ToolId[initialProps.toolName], "cannot use basebrush if brush type is not known")

	if FFlagTerrainToolsRefactorTerrainBrush then
		self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
		assert(self.pluginActivationController, "BaseBrush requires a PluginActivationController from context")

		self.terrainBrush = TerrainInterface.getTerrainBrush(self)
		assert(self.terrainBrush, "BaseBrush requires a TerrainBrush from context")
	end

	self.layoutRef = Roact.createRef()
	self.mainFrameRef = Roact.createRef()

	-- TODO: refactor into dispatch functions to work more directly with buttons
	self.toggleButtonFn = function(container)
		if self.props.dispatchSetSnapToGrid ~= nil and container == "SnapToGrid" then
			self.props.dispatchSetSnapToGrid(not self.props.snapToGrid)
		elseif self.props.dispatchSetIgnoreWater ~= nil and container == "IgnoreWater" then
			self.props.dispatchSetIgnoreWater(not self.props.ignoreWater)
		elseif self.props.dispatchSetAutoMaterial ~= nil  and container == "AutoMaterial" then
			self.props.dispatchSetAutoMaterial(not self.props.autoMaterial)
		elseif self.props.dispatchSetPlaneLock ~= nil and container == "PlaneLock" then
			self.props.dispatchSetPlaneLock(not self.props.planeLock)
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
		if self.props.dispatchChangePivot and container == "Pivot" then
			if text == PivotType.Top or text == PivotType.Bottom or text == PivotType.Center then
				self.props.dispatchChangePivot(text)
			end
		elseif self.props.dispatchSetMaterial and container == "Material" then
			self.props.dispatchSetMaterial(text)
			return
		end

		text = string.gsub(text, "^[^0-9^%.^%-][^0-9^%.]", "")

		if self.props.dispatchChangeBaseSize and container == "BaseSize" then
			self.props.dispatchChangeBaseSize(text)
			if FFlagTerrainToolsEnableHeightSlider then
				if self.props.baseSizeHeightLocked then
					self.props.dispatchChangeHeight(text)
				end
			else
				self.props.dispatchChangeHeight(text)
			end
		elseif self.props.dispatchChangeHeight and container == "Height" then
			self.props.dispatchChangeHeight(text)
			if FFlagTerrainToolsEnableHeightSlider and self.props.baseSizeHeightLocked then
				self.props.dispatchChangeBaseSize(text)
			end
		elseif self.props.dispatchChangeStrength and container == "Strength" then
			self.props.dispatchChangeStrength(text)
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

	self.onContentSizeChanged = function()
		local mainFrame = self.mainFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and layout then
			mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
		end
	end

	self.brushSizeCallback = function(baseSize, height)
		if self.props.dispatchChangeBaseSize then
			self.props.dispatchChangeBaseSize(baseSize)
			self.props.dispatchChangeHeight(height)
		end
	end

	self.brushStrengthCallback = function(strength)
		if self.props.dispatchChangeStrength then
			self.props.dispatchChangeStrength(strength)
		end
	end

	self.updateBrushProperties = function()
		local hasSizeCallback = self.props.dispatchChangeBaseSize ~= nil
		local hasStrengthCallback = self.props.dispatchChangeStrength ~= nil

		local planeLockState = true
		-- defaults to true if planelock is not defined
		if self.props.dispatchSetPlaneLock then
			planeLockState = self.props.planeLock
		end

		local height
		if FFlagTerrainToolsEnableHeightSlider then
			height = self.props.height
		else
			height = self.props.baseSize
		end

		if FFlagTerrainToolsRefactorTerrainBrush then
			self.terrainBrush:updateSettings({
				currentTool = self.props.toolName,
				brushShape = self.props.brushShape or BrushShape.Sphere,
				cursorSize = self.props.baseSize or Constants.INITIAL_BRUSH_SIZE,
				cursorHeight = height or Constants.INITIAL_BRUSH_SIZE,
				pivot = self.props.pivot or PivotType.Center,
				strength = self.props.strength or Constants.INITIAL_BRUSH_STRENGTH,
				planeLock = planeLockState,
				snapToGrid = self.props.snapToGrid,
				ignoreWater = self.props.ignoreWater,
				autoMaterial = self.props.autoMaterial,
				material = self.props.material,
			})
		else
			TerrainBrush.ChangeProperties({
				brushShape = self.props.brushShape or BrushShape.Sphere,
				baseSize = self.props.baseSize or 10,
				height = height or 10,
				pivot = self.props.pivot or PivotType.Center,
				strength = self.props.strength or 1,
				planeLock = planeLockState,
				snapToGrid = self.props.snapToGrid,
				ignoreWater = self.props.ignoreWater,
				autoMaterial = self.props.autoMaterial,
				material = self.props.material,

				brushSizeCallback = hasSizeCallback and self.brushSizeCallback or nil,
				brushStrengthCallback = hasStrengthCallback and self.brushStrengthCallback or nil,
			})
		end
	end

	self.DEPRECATED_initializeBrush = function()
		local plugin = StudioPlugin.getPlugin(self)
		local mouse = plugin:GetMouse()

		coroutine.wrap(function()
			TerrainBrush.Init(self.props.toolName, mouse)
		end)()
	end

	if FFlagTerrainToolsRefactorTerrainBrush then
		self.brushSizeChangedConnection = self.terrainBrush:subscribeToRequestBrushSizeChanged(self.brushSizeCallback)
		self.brushStrengthChangedConnection = self.terrainBrush:subscribeToRequestBrushStrengthChanged(self.brushStrengthCallback)

		-- Starts the terrain brush with the base brush's tool only if
		-- active tool in plugin activation co
		-- Starts the terrain brush with the base brush's tool only if
		-- active tool in plugin activation controller is base brush's tool
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
end

function BaseBrush:didUpdate(previousProps, previousState)
	if previousProps.toolName ~= self.props.toolName then
		if FFlagTerrainToolsRefactorTerrainBrush then
			self.safeStartWithTool()
		else
			self:DEPRECATED_initializeBrush()
		end
	end
	self.updateBrushProperties()
end

function BaseBrush:didMount()
	if FFlagTerrainToolsRefactorTerrainBrush then
		self.safeStartWithTool()
	else
		self:DEPRECATED_initializeBrush()
	end
	self.updateBrushProperties()
end

function BaseBrush:willUnmount()
	if FFlagTerrainToolsRefactorTerrainBrush then
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

		-- If the base brush is unmounting, but my tool is still active
		-- Stop the terrain brush anyway
		-- This case happens when BaseBrush unmounts before ToolSelectionListener:didUpdate()
		-- Or when Roact.unmount() was used on the whole tree because the plugin window is closing
		if self.pluginActivationController:getActiveTool() == self.props.toolName then
			self.terrainBrush:stop()
		end
	else
		TerrainBrush.Close()
	end
end

function BaseBrush:render()
	local baseSize = self.props.baseSize
	local brushShape = self.props.brushShape
	local height = self.props.height
	local baseSizeHeightLocked = self.props.baseSizeHeightLocked
	local pivot = self.props.pivot
	local strength = self.props.strength
	local planeLock = self.props.planeLock
	local snapToGrid = self.props.snapToGrid
	local ignoreWater = self.props.ignoreWater
	local autoMaterial = self.props.autoMaterial
	local mat = self.props.material

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.mainFrameRef,
	}, {
		UILayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			[Roact.Ref] = self.layoutRef,
			[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
		}),

		BrushSettings = Roact.createElement(BrushSettings, {
			LayoutOrder = 1,
			baseSize = baseSize,
			brushShape = brushShape,
			height = height,
			baseSizeHeightLocked = baseSizeHeightLocked,
			ignoreWater = ignoreWater,
			pivot = pivot,
			planeLock = planeLock,
			snapToGrid = snapToGrid,
			strength = strength,

			setBrushShape = FFlagTerrainToolsEnableHeightSlider and self.setBrushShape or function(brushShape)
				if self.props.dispatchChooseBrushShape then
					self.props.dispatchChooseBrushShape(brushShape)
				end
			end,
			setText = self.setTextFn,
			toggleButton = self.toggleButtonFn,
			toggleBaseSizeHeightLocked = self.toggleBaseSizeHeightLocked,
		}),

		MaterialSettings = mat and Roact.createElement(MaterialSettings, {
			autoMaterial = autoMaterial,
			material = mat,
			toggleButton = self.toggleButtonFn,
			setText = self.setTextFn,
			LayoutOrder = 2,
		}),
	})
end

return BaseBrush
