local paths = require(script.Parent.Parent.Paths)

local ScalePanel = paths.Roact.Component:extend("ComponentScalePanel")

local createAllScaleSliderRows = nil

function ScalePanel:didMount()
    self.props.getScaleBoundaries()
end

function ScalePanel:render()
    if paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR6() then
        return paths.UtilityFunctionsCreate.noOptFrame()
    end

    local layoutOrder = paths.UtilityClassLayoutOrder.new()

    local children = {
        ComponentTitleBar = paths.Roact.createElement(paths.ComponentTitleBar, {
                ThemeData = self.props.ThemeData,
                LayoutOrder = layoutOrder:getNextOrder(),
                IsEnabled = self.props.IsEnabled,
                Text = "Scale",
                IsPlayerChoiceTitleStyle = false
            }
        )
    }

    createAllScaleSliderRows(self, children, layoutOrder)
    local numChildPanels = paths.UtilityFunctionsTable.countDictionaryKeys(children)
    children.UIListLayoutVertical = paths.UtilityFunctionsCreate.verticalFillUIListLayout()
    return paths.UtilityFunctionsCreate.virticalChildFittedFrame(self.props.LayoutOrder, children, numChildPanels)
end

createSliderRow = function(self, order, text, boundary, getMin, getMax, setMin, setMax)
    local function toIntegerPercentageString(val)
        local percentage = val * 100
        local shouldRoundUp = (percentage - math.floor(percentage)) >= 0.5
        return tostring(shouldRoundUp and math.ceil(percentage) or math.floor(percentage)) .."%"
    end

    local currentStateTemplate =  paths.StateInterfaceTemplates.getStateModelTemplate(self.props)
    local boundaries = self.props.StateSettings.scaleBoundaries.boundaries

    return paths.Roact.createElement(paths.ComponentSliderRow, {
            ThemeData = self.props.ThemeData,
            LayoutOrder = order,
            Text = text,
            Enabled = self.props.IsEnabled,
            SliderMin = boundary.min,
            SliderMax = boundary.max,
            SliderSnapIncrement = boundary.increment,
            SliderCaretLowerRangeValue = getMin(currentStateTemplate),
            SliderCaretUpperRangeValue = getMax(currentStateTemplate),

            SliderCaretLowerRangeText = toIntegerPercentageString(getMin(currentStateTemplate)),
            SliderCaretUpperRangeText = toIntegerPercentageString(getMax(currentStateTemplate)),

            setLowerRangeValue = function(newValue)
                local newTemplateModel = paths.StateModelTemplate.makeCopy(currentStateTemplate)
                setMin(newTemplateModel, newValue, boundaries)
                self.props.clobberTemplate(self.props.template, newTemplateModel)
            end,

            setUpperRangeValue = function(newValue)
                local newTemplateModel = paths.StateModelTemplate.makeCopy(currentStateTemplate)
                setMax(newTemplateModel, newValue, boundaries)
                self.props.clobberTemplate(self.props.template, newTemplateModel)
            end
        }
    )
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
        { "Proportions", paths.StateInterfaceSettings.getProportionBoundaries(self.props),
            template.getScaleProportionMin, template.getScaleProportionMax, template.setScaleProportionMin,
            template.setScaleProportionMax },
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