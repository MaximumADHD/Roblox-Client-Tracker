--[[
	BrushSettings.lua
]]
local FFlagTerrainToolsPartInteractToggle = game:GetFastFlag("TerrainToolsPartInteractToggle")
local FFlagTerrainToolsV2WithContext = game:GetFastFlag("TerrainToolsV2WithContext")
local FFlagTerrainToolsEditPlaneLock = game:GetFastFlag("TerrainToolsEditPlaneLock")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

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

if FFlagTerrainToolsEditPlaneLock then
	function BrushSettings:init()
		self.resetPlaneLock = function()
			local root = game:GetService("Workspace").CurrentCamera
			local offset = Vector3.new(0, 0, -PLANE_OFFSET)
			local gridCFrame = root.CFrame * CFrame.new(offset)
			local cframe = CFrame.fromMatrix(
				Vector3.new(),
				root.CFrame.XVector,
				root.CFrame.YVector,
				root.CFrame.ZVector
			)

			local x, y, _ = cframe:ToEulerAnglesXYZ()
			x = math.rad(math.round(math.deg(x)))
			y = math.rad(math.round(math.deg(y)))
			cframe = CFrame.Angles(x, 0, 0) * CFrame.Angles(0, y, 0) * CFrame.new()
			cframe = cframe + roundVector(gridCFrame.Position)

			self.props.setPlaneCFrame(cframe)
		end
		
		self.toggleEditPlaneMode = function()
			self.props.setEditPlaneMode(not self.editPlaneMode)
		end

		self.updatePosition = function(axis, text)
			local num = tonumber(text)

			if num then
				local cframe = self.props.planeCFrame
				if axis == "X" then
					self.props.setPlaneCFrame(cframe + Vector3.new(num - cframe.Position.X, 0, 0))
				elseif axis == "Y" then
					self.props.setPlaneCFrame(cframe + Vector3.new(0, num - cframe.Position.Y, 0))
				elseif axis == "Z" then
					self.props.setPlaneCFrame(cframe + Vector3.new(0, 0, num - cframe.Position.Z))
				end
			end
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
				local x, y = self.props.planeCFrame:ToEulerAnglesXYZ()
				local cframe = CFrame.new(Vector3.new())

				if axis == "X" then
					cframe = CFrame.Angles(num, 0, 0) * CFrame.Angles(0, y, 0) * cframe
				elseif axis == "Y" then
					cframe = CFrame.Angles(x, 0, 0) * CFrame.Angles(0, num, 0) * cframe
				end

				self.props.setPlaneCFrame(cframe + self.props.planeCFrame.Position)
			end
		end

		self.onRotationVectorFocusLost = function(_, axis, _, text)
			self.updateRotation(axis, text)
		end

		if not self.props.planeCFrame then
			self.resetPlaneLock()
		end
	end
end

function BrushSettings:render()
	local localization = self.props.Localization:get()

	local layoutOrder = self.props.LayoutOrder
	local LayoutOrderIterator = LayoutOrderIterator.new()
	local isSubsection = self.props.isSubsection

	local showHeight = self.props.brushShape ~= BrushShape.Sphere
	local showStrength = self.props.strength ~= nil
	local showSnapToGrid = self.props.snapToGrid ~= nil
	local showIgnoreWater = self.props.ignoreWater ~= nil
	local showIgnoreParts = self.props.ignoreParts ~= nil
	local showPlaneLockToggle = self.props.planeLock ~= nil
	local disablePlaneLockToggle = self.props.disablePlaneLock
	local disableIgnoreWaterToggle = self.props.disableIgnoreWater
	local showFixedPlaneToggle = self.props.fixedPlane ~= nil

	local editPlaneMode = self.props.editPlaneMode
	local planeCFrame = self.props.planeCFrame
	local showEditPlaneMode = self.props.planeLock == PlaneLockType.Manual

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
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 1,
			brushShape = self.props.brushShape,
			setBrushShape = self.props.setBrushShape,
		}),

		BaseSizeSlider = Roact.createElement(BaseSizeSlider, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 2,
			baseSize = self.props.baseSize,
			setBaseSize = self.props.setBaseSize,
			ShowLock = showHeight,
			IsLocked = self.props.baseSizeHeightLocked,
			ToggleLock = self.props.toggleBaseSizeHeightLocked,
		}),

		HeightSlider = showHeight and Roact.createElement(LabeledSlider, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 3,
			Text = localization:getText("BrushSettings", "Height"),
			Min = Constants.MIN_BRUSH_SIZE,
			Max = Constants.MAX_BRUSH_SIZE,
			SnapIncrement = 1,
			Value = self.props.height,
			SetValue = self.props.setHeight,
		}),

		StrengthSlider = showStrength and Roact.createElement(LabeledSlider, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 4,
			Text = localization:getText("BrushSettings", "Strength"),
			Min = 0.1,
			Max = 1,
			SnapIncrement = 0.1,
			Value = self.props.strength,
			SetValue = self.props.setStrength,
		}),

		FlattenModeSelector = showFlattenModes and Roact.createElement(FlattenModeSelector, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 5,
			flattenMode = self.props.flattenMode,
			setFlattenMode = self.props.setFlattenMode,
		}),

		PivotSelector = Roact.createElement(PivotSelector, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 6,
			pivot = self.props.pivot,
			setPivot = self.props.setPivot,
		}),

		PlaneLockToggle = not FFlagTerrainToolsEditPlaneLock and showPlaneLockToggle and Roact.createElement(LabeledToggle, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 7,
			Text = localization:getText("BrushSettings", "PlaneLock"),
			IsOn = self.props.planeLock,
			SetIsOn = self.props.setPlaneLock,
			Disabled = disablePlaneLockToggle,
		}),

		PlaneLock = FFlagTerrainToolsEditPlaneLock and showPlaneLockToggle and Roact.createElement(PlaneLockSelector, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			planeLock = self.props.planeLock,
			setPlaneLock = self.props.setPlaneLock,
		}),

		PlaneController = FFlagTerrainToolsEditPlaneLock and showEditPlaneMode and Roact.createElement(PlaneController, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			EditPlaneMode = editPlaneMode,
			Reset = self.resetPlaneLock,
			SetEditPlaneMode = self.props.setEditPlaneMode,
		}),
		
		PositionInput = FFlagTerrainToolsEditPlaneLock and editPlaneMode and showEditPlaneMode and Roact.createElement(VectorTextInput, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "Position"),
			Key = "Position",
			Vector = planeCFrame.Position,
			Precisions = {X = 2, Y = 2, Z = 2},
			OnFocusLost = self.onPositionVectorFocusLost,
		}),
		
		RotateInput = FFlagTerrainToolsEditPlaneLock and editPlaneMode and showEditPlaneMode and Roact.createElement(VectorTextInput, {
			LayoutOrder = LayoutOrderIterator:getNextOrder(),
			Text = localization:getText("BrushSettings", "Rotation"),
			Key = "Rotation",
			Vector = Vector3.new(convertToDegrees(planeCFrame:toEulerAnglesXYZ())),
			Precisions = {X = 2, Y = 2, Z = 2},
			Axes = {"X", "Y"},
			OnFocusLost = self.onRotationVectorFocusLost,
		}),

		FixedPlaneToggle = showFixedPlaneToggle and Roact.createElement(LabeledToggle, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 8,
			Text = localization:getText("BrushSettings", "FixedPlane"),
			IsOn = self.props.fixedPlane,
			SetIsOn = setFixedPlane,
		}),

		HeightSelectionToggle = showHeightSelectionToggle and Roact.createElement(HeightSelectionToggle, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 9,
			Label = localization:getText("BrushSettings", "PlanePosition"),
			heightPicker = self.props.heightPicker,
			setHeightPicker = self.props.setHeightPicker,
			planePositionY = self.props.planePositionY,
			setPlanePositionY = self.props.setPlanePositionY,
		}),

		SnapToGridToggle = showSnapToGrid and Roact.createElement(LabeledToggle, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 10,
			Text = localization:getText("BrushSettings", "SnapToGrid"),
			IsOn = self.props.snapToGrid,
			SetIsOn = self.props.setSnapToGrid,
		}),

		IgnoreWaterToggle = showIgnoreWater and Roact.createElement(LabeledToggle, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 11,
			Text = localization:getText("BrushSettings", "IgnoreWater"),
			IsOn = self.props.ignoreWater,
			SetIsOn = self.props.setIgnoreWater,
			Disabled = disableIgnoreWaterToggle,
		}),

		IgnorePartsToggle = (FFlagTerrainToolsPartInteractToggle and showIgnoreParts) and Roact.createElement(LabeledToggle, {
			LayoutOrder = FFlagTerrainToolsEditPlaneLock and LayoutOrderIterator:getNextOrder() or 12,
			Text = localization:getText("BrushSettings", "IgnoreParts"),
			IsOn = self.props.ignoreParts,
			SetIsOn = self.props.setIgnoreParts,
		}) or nil,
	})
end

if FFlagTerrainToolsV2WithContext then
	BrushSettings = withContext({
		Localization = ContextItems.UILibraryLocalization,
	})(BrushSettings)
else
	ContextServices.mapToProps(BrushSettings, {
		Localization = ContextItems.UILibraryLocalization,
	})
end


return BrushSettings
