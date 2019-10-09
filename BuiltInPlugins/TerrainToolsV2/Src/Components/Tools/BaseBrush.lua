--[[
	Displays panels associated with the BaseBrush tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BrushSettings = require(ToolParts.BrushSettings)
local MaterialSettings = require(ToolParts.MaterialSettings)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangeStrength = require(Actions.ChangeStrength)
local ChangePivot = require(Actions.ChangePivot)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetMaterial = require(Actions.SetMaterial)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)
local SetMaterial = require(Actions.SetMaterial)

local Functions = Plugin.Src.Components.Functions
local TerrainBrush = require(Functions.TerrainBrush)

local Constants = require(Plugin.Src.Util.Constants)
local PivotType = Constants.PivotType

local BaseBrush = Roact.Component:extend(script.Name)

function BaseBrush:init(initialProps)
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
			self.props.dispatchChangeHeight(text) -- TODO: DEVTOOLS-3101 add Base + Height UI; this stays bound til then
		elseif self.props.dispatchChangeHeight and container == "Height" then
			self.props.dispatchChangeHeight(text)
		elseif self.props.dispatchChangeStrength and container == "Strength" then
			self.props.dispatchChangeStrength(text)
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
		self.props.dispatchChangeBaseSize(baseSize)
		self.props.dispatchChangeHeight(height)
	end

	self.brushStrengthCallback = function(strength)
		self.props.dispatchChangeStrength(strength)
	end

	self.updateBrushProperties = function()
		local hasSizeCallback = self.props.dispatchChangeBaseSize ~= nil
		local hasStrengthCallback = self.props.dispatchChangeStrength ~= nil

		local planeLockState = true
		-- defaults to true if planelock is not defined
		if self.props.dispatchSetPlaneLock then
			planeLockState = self.props.planeLock
		end
		TerrainBrush.ChangeProperties({
			brushShape = self.props.brushShape or "Sphere",
			baseSize = self.props.baseSize or 10,
			height = self.props.height or 10,
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

function BaseBrush:didUpdate()
	self.updateBrushProperties()
end

function BaseBrush:didMount()
	self.updateBrushProperties()
end

function BaseBrush:render()
	local baseSize = self.props.baseSize
	local brushShape = self.props.brushShape
	local height = self.props.height
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
			ignoreWater = ignoreWater,
			pivot = pivot,
			planeLock = planeLock,
			snapToGrid = snapToGrid,
			strength = strength,

			setBrushShape = function(brushShape)
				if self.props.dispatchChooseBrushShape then
					self.props.dispatchChooseBrushShape(brushShape)
				end
			end,
			setText = self.setTextFn,
			toggleButton = self.toggleButtonFn,
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