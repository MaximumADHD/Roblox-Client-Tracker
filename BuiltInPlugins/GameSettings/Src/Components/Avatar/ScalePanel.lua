local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local RoactStudioWidgets = Plugin.RoactStudioWidgets
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ContextServices = require(Plugin.Framework.ContextServices)

local ConstantLayout = require(Plugin.Src.Util.ConstantLayout)
local StateInterfaceSettings = require(Plugin.Src.Util.StateInterfaceSettings)
local StateInterfaceTemplates = require(Plugin.Src.Util.StateInterfaceTemplates)
local StateInterfaceTheme = require(Plugin.Src.Util.StateInterfaceTheme)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)
local UtilityClassLayoutOrder = require(Plugin.Src.Util.UtilityClassLayoutOrder)

local DividerRow = require(Plugin.Src.Components.DividerRow)
local RangeSlider = require(RoactStudioWidgets.RangeSlider)
local TitleBar = require(Plugin.Src.Components.TitleBar)

-- TODO (awarwick) 5/16/2020 Remove with FFlagGameSettingsNetworkRefactor
local GetScaleBoundaries = require(Plugin.Src.Thunks.DEPRECATED_GetScaleBoundaries)

local ScalePanel = Roact.Component:extend("ComponentScalePanel")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

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

	if FFlagStudioConvertGameSettingsToDevFramework then
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
	else
		return withLocalization(function(localized)
			return Roact.createElement(RangeSlider, {
				LayoutOrder = order,
				Title = text,
				Enabled = self.props.IsEnabled,
	
				Min = minIntegerPercent,
				Max = maxIntegerPercent,
				SnapIncrement = toIntegerPercentage(boundary.increment),
				LowerRangeValue = toIntegerPercentage(getMin(currentStateTemplate)),
				UpperRangeValue = toIntegerPercentage(getMax(currentStateTemplate)),
				Mouse = self.props.Mouse,
	
				MinLabelText = localized.Morpher.Scale.SliderLabel(
					{number = tostring(minIntegerPercent)}),
				MaxLabelText = localized.Morpher.Scale.SliderLabel(
					{number = tostring(maxIntegerPercent)}),
				UnitsLabelText = localized.Morpher.Scale.SliderUnits,
	
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
		end)
	end
end

function ScalePanel:init()
	self.frameRef = Roact.createRef()
end

if not game:GetFastFlag("GameSettingsNetworkRefactor") then
	function ScalePanel:didMount()
		self.props.getScaleBoundaries()
	end
end

function ScalePanel:DEPRECATED_render()
	if StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR6() then
		return nil
	end

	local layoutOrder = UtilityClassLayoutOrder.new()

	return withLocalization(function(localized)
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
				Text = localized.Morpher.Title.Scale,
				IsPlayerChoiceTitleStyle = false
			}),
		}

		local template = StateModelTemplate
		local sliderRowsData = {
			{ localized.Morpher.Scale.Height, StateInterfaceSettings.getHeightBoundaries(self.props),
				template.getScaleHeightMin, template.getScaleHeightMax, template.setScaleHeightMin, template.setScaleHeightMax },
			{ localized.Morpher.Scale.Width, StateInterfaceSettings.getWidthBoundaries(self.props),
				template.getScaleWidthMin, template.getScaleWidthMax, template.setScaleWidthMin, template.setScaleWidthMax },
			{ localized.Morpher.Scale.Head, StateInterfaceSettings.getHeadBoundaries(self.props),
				template.getScaleHeadMin, template.getScaleHeadMax, template.setScaleHeadMin, template.setScaleHeadMax },
			{ localized.Morpher.Scale.BodyType, StateInterfaceSettings.getBodyTypeBoundaries(self.props),
				template.getScaleBodyTypeMin, template.getScaleBodyTypeMax, template.setScaleBodyTypeMin, template.setScaleBodyTypeMax },
			{ localized.Morpher.Scale.Proportions, StateInterfaceSettings.getProportionBoundaries(self.props),
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
	end)
end

function ScalePanel:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local localization = props.Localization

	if StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR6() then
		return nil
	end

	local layoutOrder = UtilityClassLayoutOrder.new()

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

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(ScalePanel, {
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})
end

ScalePanel = RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			StateSettings = state.MorpherEditorRoot.StateMorpher.StateSettings
		}
	end,

	function(dispatch)
		if game:GetFastFlag("GameSettingsNetworkRefactor") then return {} end
		return {
			getScaleBoundaries = function()
				dispatch(GetScaleBoundaries())
			end
		}
	end
)(ScalePanel)

return ScalePanel