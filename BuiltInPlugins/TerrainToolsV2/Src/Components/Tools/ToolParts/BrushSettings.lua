--[[
	BrushSettings.lua
]]
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local DraggerFramework = Plugin.Packages.DraggerFramework
local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local DraggerSchema = require(Plugin.Src.PlaneDraggerSchema.DraggerSchema)
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local MoveHandles = require(DraggerFramework.Handles.MoveHandles)
local RotateHandles = require(DraggerFramework.Handles.RotateHandles)

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PlaneLockType = TerrainEnums.PlaneLockType

local ToolParts = script.Parent
local LabeledSlider = require(ToolParts.LabeledSlider)
local LabeledToggle = require(ToolParts.LabeledToggle)
local Panel = require(ToolParts.Panel)
local VectorTextInput = require(ToolParts.VectorTextInput)

local BrushProperties = ToolParts.BrushProperties
local BaseSizeSlider = require(BrushProperties.BaseSizeSlider)
local BrushShapeSelector = require(BrushProperties.BrushShapeSelector)
local FlattenModeSelector = require(BrushProperties.FlattenModeSelector)
local HeightSelectionToggle = require(BrushProperties.HeightSelectionToggle)
local PlaneLockSelector = require(BrushProperties.PlaneLockSelector)
local PivotSelector = require(BrushProperties.PivotSelector)
local PlaneController = require(BrushProperties.PlaneController)

local BrushSettings = Roact.PureComponent:extend(script.Name)

local PLANE_OFFSET = 50

local function convertToDegrees(x, y, z)
	return math.deg(x), math.deg(y), math.deg(z)
end

local function roundVector(vec)
	return Vector3.new(math.round(vec.X), math.round(vec.Y), math.round(vec.Z))
end

function BrushSettings:init(initialProps)
	self._cursorGridObject = {planeCFrame = initialProps.planeCFrame}
	self._Selection = DraggerSchema.Selection.new(self._cursorGridObject)
	self._draggerContext = DraggerContext_PluginImpl.new(Plugin.Parent, game, settings(), self._Selection)
	self._draggerContext.updatePlaneFn = function(newCFrame) self.props.setPlaneCFrame(newCFrame) end
	self._draggerContext.planeCFrame = self.props.planeCFrame

	self._draggerProps = {
		Mouse = Plugin.Parent:GetMouse(),
		DraggerContext = self._draggerContext,
		DraggerSchema = DraggerSchema,
		DraggerSettings = {
			AnalyticsName = "AdjustablePlaneLock",
			AllowDragSelect = true,
			AllowFreeformDrag = true,
			ShowLocalSpaceIndicator = true,
			ShowPivotIndicator = true,
			HandlesList = {
				MoveHandles.new(self._draggerContext, {
					ShowBoundingBox = false,
					Summonable = false,
					Outset = 1,
				}, DraggerSchema.TransformHandlesImplementation.new(
					self._draggerContext)),
				RotateHandles.new(self._draggerContext, {
					ShowBoundingBox = false,
					Summonable = false,
					Outset = 1,
				}, DraggerSchema.TransformHandlesImplementation.new(
					self._draggerContext))
			},
		},
	}

	self.resetPlaneCFrame = function()
		local root = game:GetService("Workspace").CurrentCamera
		local offset = Vector3.new(0, 0, -PLANE_OFFSET)
		local gridCFrame = root.CFrame * CFrame.new(offset)
		local cframe = CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0) + roundVector(gridCFrame.Position)

		self.props.setPlaneCFrame(cframe)
		self._cursorGridObject.planeCFrame = cframe

		self._Selection.SelectionChanged:Fire()
	end

	self.toggleEditPlaneMode = function()
		self.props.setEditPlaneMode(not self.props.editPlaneMode)
	end

	self.updatePosition = function(axis, text)
		local num = tonumber(text)

		if num then
			local cframe = self.props.planeCFrame
			if axis == "X" then
				cframe = cframe + Vector3.new(num - cframe.Position.X, 0, 0)
			elseif axis == "Y" then
				cframe = cframe + Vector3.new(0, num - cframe.Position.Y, 0)
			elseif axis == "Z" then
				cframe = cframe + Vector3.new(0, 0, num - cframe.Position.Z)
			end
			self.props.setPlaneCFrame(cframe)
			self._cursorGridObject.planeCFrame = cframe
		end

		self._Selection.SelectionChanged:Fire()
	end

	self.onPositionVectorFocusLost = function(_, axis, _, text)
		self.updatePosition(axis, text)
	end

	self.updateRotation = function(axis, text)
		local num = tonumber(text)
		if num == nil then
			return
		end
		num = math.rad(num)

		if num then
			local x, y, z = self.props.planeCFrame:ToEulerAnglesXYZ()
			local cframe = CFrame.new(Vector3.new())

			if axis == "X" then
				cframe = CFrame.fromEulerAnglesXYZ(num, y, z)
			elseif axis == "Y" then
				cframe = CFrame.fromEulerAnglesXYZ(x, num, z)
			elseif axis == "Z" then
				cframe = CFrame.fromEulerAnglesXYZ(x, y, num)
			end

			self.props.setPlaneCFrame(cframe + self.props.planeCFrame.Position)
			self._cursorGridObject.planeCFrame = cframe
		end

		self._Selection.SelectionChanged:Fire()
	end

	self.onRotationVectorFocusLost = function(_, axis, _, text)
		self.updateRotation(axis, text)
	end

	self.setPlaneLock = function(planeLock)
		if planeLock ~= PlaneLockType.Manual then
			self.props.setEditPlaneMode(false)
		end

		self.props.setPlaneLock(planeLock)
	end
end

function BrushSettings:willUpdate(nextProps)
	self._cursorGridObject.planeCFrame = nextProps.planeCFrame
end

function BrushSettings:render()
	if not self.props.planeCFrame and self.props.planeLock == PlaneLockType.Manual and self.props.setPlaneCFrame then
		self.resetPlaneCFrame()
	end

	local localization = self.props.Localization

	local layoutOrder = self.props.LayoutOrder
	local LayoutOrderIterator = LayoutOrderIterator.new()
	local isSubsection = self.props.isSubsection

	local showHeight = self.props.brushShape ~= BrushShape.Sphere
	local showStrength = self.props.strength ~= nil
	local showSnapToVoxels = self.props.snapToVoxels ~= nil
	local showIgnoreWater = self.props.ignoreWater ~= nil
	local showIgnoreParts = self.props.ignoreParts ~= nil
	local showPlaneLockToggle = self.props.planeLock ~= nil
	local disablePlaneLockToggle = self.props.disablePlaneLock
	local disableIgnoreWaterToggle = self.props.disableIgnoreWater
	local showFixedPlaneToggle = self.props.fixedPlane ~= nil

	local editPlaneMode = self.props.editPlaneMode
	local planeCFrame = self.props.planeCFrame
	local showEditPlaneMode = self.props.planeLock == PlaneLockType.Manual and Constants.ToolUsesPlaneLock[self.props.currentTool]

	local showFlattenModes = self.props.flattenMode ~= nil
	local showHeightSelectionToggle = self.props.fixedPlane and self.props.planePositionY ~= nil
	local setFixedPlane = self.props.setFixedPlane

	return Roact.createElement(Panel, {
		Title = localization:getText("BrushSettings", "BrushSettings"),
		Padding = UDim.new(0, 12),
		LayoutOrder = layoutOrder,
		isSubsection = isSubsection,
	}, {
		BrushShapeSelector = Roact.createElement(BrushShapeSelector, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			brushShape = self.props.brushShape,
			setBrushShape = self.props.setBrushShape,
		}),

		BaseSizeSlider = Roact.createElement(BaseSizeSlider, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			baseSize = self.props.baseSize,
			setBaseSize = self.props.setBaseSize,
			ShowLock = showHeight,
			IsLocked = self.props.baseSizeHeightLocked,
			ToggleLock = self.props.toggleBaseSizeHeightLocked,
		}),

		HeightSlider = showHeight and Roact.createElement(LabeledSlider, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "Height"),
			Min = Constants.MIN_BRUSH_SIZE,
			Max = Constants.MAX_BRUSH_SIZE,
			SnapIncrement = 1,
			Value = self.props.height,
			SetValue = self.props.setHeight,
		}),

		StrengthSlider = showStrength and Roact.createElement(LabeledSlider, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "Strength"),
			Min = 0.1,
			Max = 1,
			SnapIncrement = 0.1,
			Value = self.props.strength,
			SetValue = self.props.setStrength,
		}),

		FlattenModeSelector = showFlattenModes and Roact.createElement(FlattenModeSelector, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			flattenMode = self.props.flattenMode,
			setFlattenMode = self.props.setFlattenMode,
		}),

		PivotSelector = Roact.createElement(PivotSelector, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			pivot = self.props.pivot,
			setPivot = self.props.setPivot,
		}),

		PlaneLock = showPlaneLockToggle and Roact.createElement(PlaneLockSelector, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			planeLock = self.props.planeLock,
			setPlaneLock = self.setPlaneLock,
		}),

		PlaneController = showEditPlaneMode and Roact.createElement(PlaneController, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			EditPlaneMode = editPlaneMode,
			Reset = self.resetPlaneCFrame,
			SetEditPlaneMode = self.props.setEditPlaneMode,
		}),

		Dragger = editPlaneMode and showEditPlaneMode and Roact.createElement(DraggerToolComponent,
			self._draggerProps),

		PositionInput = editPlaneMode and showEditPlaneMode and Roact.createElement(VectorTextInput, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "Position"),
			Key = "Position",
			Vector = planeCFrame.Position,
			Precisions = {X = 2, Y = 2, Z = 2},
			OnFocusLost = self.onPositionVectorFocusLost,
		}),

		RotateInput = editPlaneMode and showEditPlaneMode and Roact.createElement(VectorTextInput, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "Rotation"),
			Key = "Rotation",
			Vector = Vector3.new(convertToDegrees(self.props.planeCFrame:toEulerAnglesXYZ())),
			Precisions = {X = 2, Y = 2, Z = 2},
			OnFocusLost = self.onRotationVectorFocusLost,
		}),

		FixedPlaneToggle = showFixedPlaneToggle and Roact.createElement(LabeledToggle, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "FixedPlane"),
			IsOn = self.props.fixedPlane,
			SetIsOn = setFixedPlane,
		}),

		HeightSelectionToggle = showHeightSelectionToggle and Roact.createElement(HeightSelectionToggle, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Label = localization:getText("BrushSettings", "PlanePosition"),
			heightPicker = self.props.heightPicker,
			setHeightPicker = self.props.setHeightPicker,
			planePositionY = self.props.planePositionY,
			setPlanePositionY = self.props.setPlanePositionY,
		}),

		SnapToVoxelsToggle = showSnapToVoxels and Roact.createElement(LabeledToggle, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "SnapToVoxels"),
			IsOn = self.props.snapToVoxels,
			SetIsOn = self.props.setSnapToVoxels,
		}),

		IgnoreWaterToggle = showIgnoreWater and Roact.createElement(LabeledToggle, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "IgnoreWater"),
			IsOn = self.props.ignoreWater,
			SetIsOn = self.props.setIgnoreWater,
			Disabled = disableIgnoreWaterToggle,
		}),

		IgnorePartsToggle = showIgnoreParts and Roact.createElement(LabeledToggle, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "IgnoreParts"),
			IsOn = self.props.ignoreParts,
			SetIsOn = self.props.setIgnoreParts,
		}) or nil,
	})
end

BrushSettings = withContext({
	Localization = ContextServices.Localization,
})(BrushSettings)

return BrushSettings
