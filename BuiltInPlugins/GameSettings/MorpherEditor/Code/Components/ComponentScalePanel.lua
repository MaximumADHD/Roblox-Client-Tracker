local paths = require(script.Parent.Parent.Paths)

local ScalePanel = paths.Roact.Component:extend("ComponentScalePanel")

local createAllScaleSliderRows = nil

function ScalePanel:init()
	self.frameRef = paths.Roact.createRef()
end

function ScalePanel:didMount()
    self.props.getScaleBoundaries()
end

function ScalePanel:render()
	if paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR6() then
		return nil
	end

	local layoutOrder = paths.UtilityClassLayoutOrder.new()

	local children = {
		UIListLayoutVertical = paths.Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = paths.ConstantLayout.VirticalPadding,

			[paths.Roact.Change.AbsoluteContentSize] = function(rbx)
				self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
			end
		}),
		ComponentDividerRowAboveScale = paths.Roact.createElement(paths.ComponentDividerRow, {
			ThemeData = self.props.ThemeData,
			LayoutOrder = layoutOrder:getNextOrder(),
		}),
		ComponentTitleBar = paths.Roact.createElement(paths.ComponentTitleBar, {
			ThemeData = self.props.ThemeData,
			LayoutOrder = layoutOrder:getNextOrder(),
			IsEnabled = self.props.IsEnabled,
			Text = "Scale",
			IsPlayerChoiceTitleStyle = false
		}),
	}

	createAllScaleSliderRows(self, children, layoutOrder)

	return paths.Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = paths.StateInterfaceTheme.getBackgroundColor(self.props),
			LayoutOrder = self.props.LayoutOrder,

			[paths.Roact.Ref] = self.frameRef,
		},
		children
	)
end

createSliderRow = function(self, order, text, boundary, getMin, getMax, setMin, setMax)
	local function toIntegerPercentageString(val)
		local percentage = val * 100
		local shouldRoundUp = (percentage - math.floor(percentage)) >= 0.5
		return tostring(shouldRoundUp and math.ceil(percentage) or math.floor(percentage)) .."%"
	end

	local currentStateTemplate =  paths.StateInterfaceTemplates.getStateModelTemplate(self.props)
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

	return paths.Roact.createElement(paths.StudioWidgetRangeSlider, {
		LayoutOrder = order,
		Title = text,
		Enabled = self.props.IsEnabled,

		Min = toIntegerPercentage(boundary.min),
		Max = toIntegerPercentage(boundary.max),
		SnapIncrement = toIntegerPercentage(boundary.increment),
		LowerRangeValue = toIntegerPercentage(getMin(currentStateTemplate)),
		UpperRangeValue = toIntegerPercentage(getMax(currentStateTemplate)),
		Mouse = self.props.Mouse,
		SetValues = function(newMin, newMax)
			local newTemplateModel = paths.StateModelTemplate.makeCopy(currentStateTemplate)

			local currentMax = getMax(currentStateTemplate)
			setMin(newTemplateModel, math.min(currentMax, toBoundary(newMin)), boundaries)
			local currentMin = getMin(currentStateTemplate)
			setMax(newTemplateModel, math.max(currentMin, toBoundary(newMax)), boundaries)

			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end,

		SetUpperRangeValue = function(newValue)
			local newTemplateModel = paths.StateModelTemplate.makeCopy(paths.StateInterfaceTemplates.getStateModelTemplate(self.props))
			setMax(newTemplateModel, math.max(getMin(newTemplateModel), toBoundary(newValue)), boundaries)
			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end,
	})
end

createAllScaleSliderRows = function(self, tableToPopulate, layoutOrder)
	local template = paths.StateModelTemplate
	local sliderRowsData = {
		{ "Height", paths.StateInterfaceSettings.getHeightBoundaries(self.props), template.getScaleHeightMin,
			template.getScaleHeightMax, template.setScaleHeightMin, template.setScaleHeightMax },
		{ "Width", paths.StateInterfaceSettings.getWidthBoundaries(self.props), template.getScaleWidthMin,
			template.getScaleWidthMax, template.setScaleWidthMin, template.setScaleWidthMax },
		{ "Head", paths.StateInterfaceSettings.getHeadBoundaries(self.props), template.getScaleHeadMin,
			template.getScaleHeadMax, template.setScaleHeadMin, template.setScaleHeadMax },
		{ "Body Type", paths.StateInterfaceSettings.getBodyTypeBoundaries(self.props), template.getScaleBodyTypeMin,
			template.getScaleBodyTypeMax, template.setScaleBodyTypeMin, template.setScaleBodyTypeMax },
		{ "Proportions", paths.StateInterfaceSettings.getProportionBoundaries(self.props), template.getScaleProportionMin,
			template.getScaleProportionMax, template.setScaleProportionMin, template.setScaleProportionMax },
	}

	for _, preset in ipairs(sliderRowsData) do
			tableToPopulate[preset[1]] = createSliderRow(self, layoutOrder:getNextOrder(), preset[1], preset[2], preset[3], preset[4], preset[5], preset[6])
		end
	end

ScalePanel = paths.RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			StateSettings = state.StateMorpher.StateSettings
		}
	end,

	function(dispatch)
		return {
			getScaleBoundaries = function()
				dispatch(paths.ThunkGetScaleBoundaries())
			end
		}
	end
)(ScalePanel)

return ScalePanel