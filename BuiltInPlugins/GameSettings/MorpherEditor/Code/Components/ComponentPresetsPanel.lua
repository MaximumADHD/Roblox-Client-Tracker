local paths = require(script.Parent.Parent.Paths)

local PresetsPanel = paths.Roact.Component:extend("ComponentPresetsPanel")

local createDefaultModel = nil
local createClassicModel1 = nil
local createClassicModel2 = nil
local createRthroModel = nil
local createPlayerChoiceModel = nil
local addPresetButtons = nil

function PresetsPanel:render()
    local layoutOrder = paths.UtilityClassLayoutOrder.new()
    local boundaries = self.props.boundaries

    local children = {
        ComponentTitleBar = paths.Roact.createElement(paths.ComponentTitleBar, {
                ThemeData = self.props.ThemeData,
                LayoutOrder = layoutOrder:getNextOrder(),
                IsEnabled = self.props.IsEnabled,
                Text = "Presets"
            }
        )
    }

    addPresetButtons(self, children, layoutOrder, boundaries)
    local numChildPanels = paths.UtilityFunctionsTable.countDictionaryKeys(children)
    children.UIListLayoutVertical = paths.UtilityFunctionsCreate.verticalFillUIListLayout()
    return paths.UtilityFunctionsCreate.virticalChildFittedFrame(self.props.LayoutOrder, children, numChildPanels)
end

function PresetsPanel:init()
    self.createDefaultModel = function(boundaries)
        local newTemplateModel = paths.StateModelTemplate.new(boundaries)

        newTemplateModel:setScaleHeightMin(1, boundaries)
        newTemplateModel:setScaleHeightMax(1, boundaries)

        newTemplateModel:setScaleWidthMin(1, boundaries)
        newTemplateModel:setScaleWidthMax(1, boundaries)

        newTemplateModel:setScaleHeadMin(1, boundaries)
        newTemplateModel:setScaleHeadMax(1, boundaries)

        newTemplateModel:setScaleBodyTypeMin(0, boundaries)
        newTemplateModel:setScaleBodyTypeMax(0, boundaries)

        newTemplateModel:setScaleProportionMin(0, boundaries)
        newTemplateModel:setScaleProportionMax(0, boundaries)

        newTemplateModel:setRigTypeR15()

        return newTemplateModel
    end

    self.createClassicModel1 = function(boundaries)
        local newTemplateModel = paths.StateModelTemplate.new(boundaries)
        newTemplateModel:setScaleHeightMin(1, boundaries)
        newTemplateModel:setScaleHeightMax(1, boundaries)

        newTemplateModel:setScaleWidthMin(1, boundaries)
        newTemplateModel:setScaleWidthMax(1, boundaries)

        newTemplateModel:setScaleHeadMin(1, boundaries)
        newTemplateModel:setScaleHeadMax(1, boundaries)

        newTemplateModel:setScaleBodyTypeMin(0, boundaries)
        newTemplateModel:setScaleBodyTypeMax(0, boundaries)

        newTemplateModel:setScaleProportionMin(0, boundaries)
        newTemplateModel:setScaleProportionMax(0, boundaries)

        newTemplateModel:setRigTypeR15()

        return newTemplateModel
    end

    self.createClassicModel2 = function(boundaries)
        local newTemplateModel = paths.StateModelTemplate.new(boundaries)
        newTemplateModel:setScaleHeightMin(1, boundaries)
        newTemplateModel:setScaleHeightMax(1, boundaries)

        newTemplateModel:setScaleWidthMin(1, boundaries)
        newTemplateModel:setScaleWidthMax(1, boundaries)

        newTemplateModel:setScaleHeadMin(1, boundaries)
        newTemplateModel:setScaleHeadMax(1, boundaries)

        newTemplateModel:setScaleBodyTypeMin(0, boundaries)
        newTemplateModel:setScaleBodyTypeMax(0, boundaries)

        newTemplateModel:setScaleProportionMin(0, boundaries)
        newTemplateModel:setScaleProportionMax(0, boundaries)

        newTemplateModel:setRigTypeR15()

        newTemplateModel:setAsset(paths.ConstantAvatar.AssetTypes.Head, 2432102561, false)

        return newTemplateModel
    end

    self.createRthroModel = function(boundaries)
        local newTemplateModel = paths.StateModelTemplate.new(boundaries)
        newTemplateModel:setScaleHeightMin(1, boundaries)
        newTemplateModel:setScaleHeightMax(1, boundaries)

        newTemplateModel:setScaleWidthMin(1, boundaries)
        newTemplateModel:setScaleWidthMax(1, boundaries)

        newTemplateModel:setScaleHeadMin(1, boundaries)
        newTemplateModel:setScaleHeadMax(1, boundaries)

        newTemplateModel:setScaleBodyTypeMin(1, boundaries)
        newTemplateModel:setScaleBodyTypeMax(1, boundaries)

        newTemplateModel:setScaleProportionMin(0, boundaries)
        newTemplateModel:setScaleProportionMax(0, boundaries)

        newTemplateModel:setRigTypeR15()

        return newTemplateModel
    end

    self.createPlayerChoiceModel = function(boundaries)
        return paths.StateModelTemplate.new(boundaries)
    end

    addPresetButtons = function(self, tableToPopulate, layoutOrder, boundaries)
        local presetTypes = {
            { Text="Default", Func=self.createDefaultModel },
            { Text="Classic (proportions and scale only)", Func=self.createClassicModel1 },
            { Text="Classic (with classic head override)", Func=self.createClassicModel2 },
            { Text="Rthro", Func=self.createRthroModel },
            { Text="Player Choice", Func=self.createPlayerChoiceModel }
        }

        for _, preset in ipairs(presetTypes) do
            tableToPopulate[preset.Text] = paths.Roact.createElement(paths.ComponentButtonRow, {
                    ThemeData = self.props.ThemeData,
                    LayoutOrder = layoutOrder:getNextOrder(),
                    Text = preset.Text,
                    IsEnabled = self.props.IsEnabled,

                    onClick = function()
                        self.props.clobberTemplate(self.props.template, preset.Func(boundaries))
                    end
                }
            )
        end
    end
end

PresetsPanel = paths.RoactRodux.UNSTABLE_connect2(
    function(state, props)
        return {
            boundaries = state.StateMorpher.StateSettings.scaleBoundaries.boundaries
        }
    end
)(PresetsPanel)

return PresetsPanel