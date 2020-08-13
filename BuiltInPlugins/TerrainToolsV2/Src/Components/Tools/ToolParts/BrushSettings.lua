--[[
	BrushSettings.lua
]]

local FFlagTerrainToolsReplaceSrcTogglesOff = game:GetFastFlag("TerrainToolsReplaceSrcTogglesOff")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape

local ToolParts = script.Parent
local LabeledSlider = require(ToolParts.LabeledSlider)
local LabeledToggle = require(ToolParts.LabeledToggle)
local Panel = require(ToolParts.Panel)

local BrushProperties = ToolParts.BrushProperties
local BaseSizeSlider = require(BrushProperties.BaseSizeSlider)
local BrushShapeSelector = require(BrushProperties.BrushShapeSelector)
local FlattenModeSelector = require(BrushProperties.FlattenModeSelector)
local HeightSelectionToggle = require(BrushProperties.HeightSelectionToggle)
local PivotSelector = require(BrushProperties.PivotSelector)

local BrushSettings = Roact.PureComponent:extend(script.Name)

function BrushSettings:render()
	return withLocalization(function(localization)
		local layoutOrder = self.props.LayoutOrder
		local isSubsection = self.props.isSubsection

		local showHeight = self.props.brushShape ~= BrushShape.Sphere
		local showStrength = self.props.strength ~= nil
		local showSnapToGrid = self.props.snapToGrid ~= nil
		local showIgnoreWater = self.props.ignoreWater ~= nil
		local showPlaneLockToggle = self.props.planeLock ~= nil
		local disablePlaneLockToggle = FFlagTerrainToolsReplaceSrcTogglesOff and self.props.disablePlaneLock
		local disableIgnoreWaterToggle = FFlagTerrainToolsReplaceSrcTogglesOff and self.props.disableIgnoreWater
		local showFixedPlaneToggle = self.props.fixedPlane ~= nil

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
				LayoutOrder = 1,
				brushShape = self.props.brushShape,
				setBrushShape = self.props.setBrushShape,
			}),

			BaseSizeSlider = Roact.createElement(BaseSizeSlider, {
				LayoutOrder = 2,
				baseSize = self.props.baseSize,
				setBaseSize = self.props.setBaseSize,
				ShowLock = showHeight,
				IsLocked = self.props.baseSizeHeightLocked,
				ToggleLock = self.props.toggleBaseSizeHeightLocked,
			}),

			HeightSlider = showHeight and Roact.createElement(LabeledSlider, {
				LayoutOrder = 3,
				Text = localization:getText("BrushSettings", "Height"),
				Min = Constants.MIN_BRUSH_SIZE,
				Max = Constants.MAX_BRUSH_SIZE,
				SnapIncrement = 1,
				Value = self.props.height,
				SetValue = self.props.setHeight,
			}),

			StrengthSlider = showStrength and Roact.createElement(LabeledSlider, {
				LayoutOrder = 4,
				Text = localization:getText("BrushSettings", "Strength"),
				Min = 0.1,
				Max = 1,
				SnapIncrement = 0.1,
				Value = self.props.strength,
				SetValue = self.props.setStrength,
			}),

			FlattenModeSelector = showFlattenModes and Roact.createElement(FlattenModeSelector, {
				LayoutOrder = 5,
				flattenMode = self.props.flattenMode,
				setFlattenMode = self.props.setFlattenMode,
			}),

			PivotSelector = Roact.createElement(PivotSelector, {
				LayoutOrder = 6,
				pivot = self.props.pivot,
				setPivot = self.props.setPivot,
			}),

			PlaneLockToggle = showPlaneLockToggle and Roact.createElement(LabeledToggle, {
				LayoutOrder = 7,
				Text = localization:getText("BrushSettings", "PlaneLock"),
				IsOn = self.props.planeLock,
				SetIsOn = self.props.setPlaneLock,
				Disabled = disablePlaneLockToggle,
			}),

			FixedPlaneToggle = showFixedPlaneToggle and Roact.createElement(LabeledToggle, {
				LayoutOrder = 8,
				Text = localization:getText("BrushSettings", "FixedPlane"),
				IsOn = self.props.fixedPlane,
				SetIsOn = setFixedPlane,
			}),

			HeightSelectionToggle = showHeightSelectionToggle and Roact.createElement(HeightSelectionToggle, {
				LayoutOrder = 9,
				Label = localization:getText("BrushSettings", "PlanePosition"),
				heightPicker = self.props.heightPicker,
				setHeightPicker = self.props.setHeightPicker,
				planePositionY = self.props.planePositionY,
				setPlanePositionY = self.props.setPlanePositionY,
			}),

			SnapToGridToggle = showSnapToGrid and Roact.createElement(LabeledToggle, {
				LayoutOrder = 10,
				Text = localization:getText("BrushSettings", "SnapToGrid"),
				IsOn = self.props.snapToGrid,
				SetIsOn = self.props.setSnapToGrid,
			}),

			IgnoreWaterToggle = showIgnoreWater and Roact.createElement(LabeledToggle, {
				LayoutOrder = 11,
				Text = localization:getText("BrushSettings", "IgnoreWater"),
				IsOn = self.props.ignoreWater,
				SetIsOn = self.props.setIgnoreWater,
				Disabled = disableIgnoreWaterToggle,
			}),
		})
	end)
end

return BrushSettings
