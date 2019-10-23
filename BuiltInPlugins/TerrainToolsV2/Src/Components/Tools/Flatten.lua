--[[
	Displays panels associated with the Flatten tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local TexturePath = "rbxasset://textures/TerrainTools/"

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BrushSettings = require(ToolParts.BrushSettings)
local MaterialSettings = require(ToolParts.MaterialSettings)

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
local SetSnapToGrid = require(Actions.SetSnapToGrid)
local SetIgnoreWater = require(Actions.SetIgnoreWater)

local Functions = Plugin.Src.Components.Functions
local TerrainBrush = require(Functions.TerrainBrush)

local Constants = require(Plugin.Src.Util.Constants)
local PivotType = Constants.PivotType
local FlattenMode = Constants.FlattenMode

local REDUCER_KEY = "FlattenTool"
local Flatten = Roact.Component:extend(script.Name)

function Flatten:init(initialProps)
	self.layoutRef = Roact.createRef()
	self.mainFrameRef = Roact.createRef()

	self.toggleButtonFn = function(container)
		bool = not bool
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

	self.setTextFn = function (text, container)
		if container == "Pivot" then
			if text == PivotType.Top or text == PivotType.Bottom or text == PivotType.Center then
				self.props.dispatchChangePivot(text)
			end
		end

		text = string.gsub(text, "^[^0-9^%.^%-][^0-9^%.]", "")

		if container == "BaseSize" then
			self.props.dispatchChangeBaseSize(text)
		elseif container == "Height" then
			self.props.dispatchChangeHeight(text)
		elseif container == "Strength" then
			self.props.dispatchChangeStrength(text)
		elseif container == "PlanePositionY" then
			self.props.dispatchChangePlanePositionY(text)
		end

	end

	self.connectionYChanged = TerrainBrush.PlanePositionYChanged:connect(function(planePositionY)
		local sigFig = math.floor(planePositionY * 1000)/1000
		self.props.dispatchChangePlanePositionY(sigFig)
	end)
	self.connectionPickerSet = TerrainBrush.HeightPickerSet:connect(self.props.dispatchSetHeightPicker)

	self.onContentSizeChanged = function()
		local mainFrame = self.mainFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and layout then
			mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
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
		TerrainBrush.ChangeProperties({
			brushShape = self.props.brushShape or "Sphere",
			baseSize = self.props.baseSize or 10,
			height = self.props.baseSize or 10, -- change back to height when we make height an option
			pivot = self.props.pivot or PivotType.Center,
			strength = self.props.strength or 1,
			flattenMode = self.props.flattenMode,
			planePositionY = self.props.planePositionY,
			heightPicker = self.props.heightPicker,
			fixedPlane = self.props.planeLock, -- TODO: DEVTOOLS-3102 add proper fixedPlane to value loop
			snapToGrid = self.props.snapToGrid,
			ignoreWater = self.props.ignoreWater,

			brushSizeCallback = self.brushSizeCallback,
			brushStrengthCallback = self.brushStrengthCallback,
		})
	end
end

function Flatten:didUpdate()
	self:updateBrushProperties()
end

function Flatten:didMount()
	self:updateBrushProperties()
end

function Flatten:render()
	local brushShape = self.props.brushShape or "Cube"
	local baseSize = self.props.baseSize or 6
	local height = self.props.height or 6
	local strength = self.props.strength or 1
	local pivot = self.props.pivot or PivotType.Center
	local planeLock = self.props.planeLock or false
	local snapToGrid = self.props.snapToGrid or false
	local ignoreWater = self.props.ignoreWater or false
	local flattenMode = self.props.flattenMode or FlattenMode.Both
	local planePositionY = self.props.planePositionY or 30
	local heightPicker = self.props.heightPicker or false

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.mainFrameRef,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			[Roact.Ref] = self.layoutRef,
			[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
		}),

		BrushSettings = Roact.createElement(BrushSettings, {
			LayoutOrder = 1,
			currentTool = script.Name,
			brushShape = brushShape,
			baseSize = baseSize,
			height = height,
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

			setBrushShape = function(brushShape)
				self.props.dispatchChooseBrushShape(brushShape)
			end,
			setFlattenMode = function(flattenMode)
				self.props.dispatchChooseFlattenMode(flattenMode)
			end,
			setHeightPicker = function()
				heightPicker = not heightPicker
				self.props.dispatchSetHeightPicker(not self.props.heightPicker)
			end,

		}),
	})
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
end

local function MapStateToProps (state, props)
	return {
		baseSize = state[REDUCER_KEY].baseSize,
		height = state[REDUCER_KEY].height,
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

local function MapDispatchToProps (dispatch)
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
	}
end

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(Flatten)