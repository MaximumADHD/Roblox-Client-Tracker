local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local RoactStudioWidgets = Plugin.RoactStudioWidgets

local ContextServices = require(Plugin.Framework).ContextServices
local withContext = ContextServices.withContext
local FrameworkUtil = require(Plugin.Framework).Util
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator

local ConstantLayout = require(Page.Util.ConstantLayout)
local StateInterfaceSettings = require(Page.Util.StateInterfaceSettings)
local StateInterfaceTemplates = require(Page.Util.StateInterfaceTemplates)
local StateInterfaceTheme = require(Page.Util.StateInterfaceTheme)
local StateModelTemplate = require(Page.Util.StateModelTemplate)

local DividerRow = require(Page.Components.DividerRow)
local RangeSlider = require(RoactStudioWidgets.RangeSlider)
local TitleBar = require(Page.Components.TitleBar)

local ScalePanel = Roact.Component:extend("ComponentScalePanel")

local function createSliderRow(self, order, text, boundary, getMin, getMax, setMin, setMax)
	local currentStateTemplate =  StateInterfaceTemplates.getStateModelTemplate(self.props)
	local boundaries = self.props.StateSettings.scaleBoundaries.boundaries

	local function toIntegerPercentage(val)
		local percentage = val * 100
		local shouldRoundUp = (percentage - math.floor(percentage)) >= 0.5
		return shouldRoundUp and math.ceil(percentage) or math.floor(percentage)
	end

	local function toBoundary(value)
		value = value / 100
		if boundary.increment > 0.001 then
			local prevSnap = math.max(boundary.increment*math.floor(value/boundary.increment), boundary.min)
			local nextSnap = math.min(prevSnap+boundary.increment, boundary.max)
			return math.abs(prevSnap-value) < math.abs(nextSnap-value) and prevSnap or nextSnap
		end
		return math.min(boundary.max, math.max(boundary.min, value))
	end

	local minIntegerPercent = toIntegerPercentage(boundary.min)
	local maxIntegerPercent = toIntegerPercentage(boundary.max)

	local props = self.props
	local localization = props.Localization
	local mouse = props.Mouse

	return Roact.createElement(RangeSlider, {
		LayoutOrder = order,
		Title = text,
		Enabled = self.props.IsEnabled,

		Min = minIntegerPercent,
		Max = maxIntegerPercent,
		SnapIncrement = toIntegerPercentage(boundary.increment),
		LowerRangeValue = toIntegerPercentage(getMin(currentStateTemplate)),
		UpperRangeValue = toIntegerPercentage(getMax(currentStateTemplate)),
		Mouse = mouse:get(),

		MinLabelText = localization:getText("General", "ScaleSliderLabel",
			{number = tostring(minIntegerPercent)}),
		MaxLabelText = localization:getText("General", "ScaleSliderLabel",
			{number = tostring(maxIntegerPercent)}),
		UnitsLabelText = localization:getText("General", "ScaleSliderUnits"),

		SetValues = function(newMin, newMax)
			local newTemplateModel = StateModelTemplate.makeCopy(currentStateTemplate)

			local currentMax = getMax(currentStateTemplate)
			setMin(newTemplateModel, math.min(currentMax, toBoundary(newMin)), boundaries)
			local currentMin = getMin(currentStateTemplate)
			setMax(newTemplateModel, math.max(currentMin, toBoundary(newMax)), boundaries)

			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end,

		SetUpperRangeValue = function(newValue)
			local newTemplateModel = StateModelTemplate.makeCopy(StateInterfaceTemplates.getStateModelTemplate(self.props))
			setMax(newTemplateModel, math.max(getMin(newTemplateModel), toBoundary(newValue)), boundaries)
			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end,
	})
end

function ScalePanel:init()
	self.frameRef = Roact.createRef()
end

function ScalePanel:render()
	local props = self.props
	local localization = props.Localization

	if StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR6() then
		return nil
	end

	local layoutOrder = LayoutOrderIterator.new()

	local children = {
		UIListLayoutVertical = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = ConstantLayout.VirticalPadding,

			[Roact.Change.AbsoluteContentSize] = function(rbx)
				self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
			end
		}),
		ComponentDividerRowAboveScale = Roact.createElement(DividerRow, {
			ThemeData = self.props.ThemeData,
			LayoutOrder = layoutOrder:getNextOrder(),
		}),
		ComponentTitleBar = Roact.createElement(TitleBar, {
			ThemeData = self.props.ThemeData,
			LayoutOrder = layoutOrder:getNextOrder(),
			IsEnabled = self.props.IsEnabled,
			Text = localization:getText("General", "TitleScale"),
			IsPlayerChoiceTitleStyle = false
		}),
	}

	local template = StateModelTemplate
	local sliderRowsData = {
		{ localization:getText("General", "ScaleHeight"), StateInterfaceSettings.getHeightBoundaries(self.props),
			template.getScaleHeightMin, template.getScaleHeightMax, template.setScaleHeightMin, template.setScaleHeightMax },
		{ localization:getText("General", "ScaleWidth"), StateInterfaceSettings.getWidthBoundaries(self.props),
			template.getScaleWidthMin, template.getScaleWidthMax, template.setScaleWidthMin, template.setScaleWidthMax },
		{ localization:getText("General", "ScaleHead"), StateInterfaceSettings.getHeadBoundaries(self.props),
			template.getScaleHeadMin, template.getScaleHeadMax, template.setScaleHeadMin, template.setScaleHeadMax },
		{ localization:getText("General", "ScaleBodyType"), StateInterfaceSettings.getBodyTypeBoundaries(self.props),
			template.getScaleBodyTypeMin, template.getScaleBodyTypeMax, template.setScaleBodyTypeMin, template.setScaleBodyTypeMax },
		{ localization:getText("General", "ScaleProportions"), StateInterfaceSettings.getProportionBoundaries(self.props),
			template.getScaleProportionMin, template.getScaleProportionMax, template.setScaleProportionMin, template.setScaleProportionMax },
	}

	for _, preset in ipairs(sliderRowsData) do
		children[preset[1]] = createSliderRow(self, layoutOrder:getNextOrder(), preset[1], preset[2], preset[3], preset[4], preset[5], preset[6])
	end

	return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = StateInterfaceTheme.getBackgroundColor(self.props),
			LayoutOrder = self.props.LayoutOrder,

			[Roact.Ref] = self.frameRef,
		},
		children
	)
end


ScalePanel = withContext({
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(ScalePanel)



ScalePanel = RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			StateSettings = state.MorpherEditorRoot.StateMorpher.StateSettings
		}
	end
)(ScalePanel)

return ScalePanel
