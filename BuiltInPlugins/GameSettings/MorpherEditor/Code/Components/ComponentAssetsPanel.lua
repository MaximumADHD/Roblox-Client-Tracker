local paths = require(script.Parent.Parent.Paths)
local fastFlags = require(script.Parent.Parent.FastFlags)

local AssetsPanel = paths.Roact.Component:extend("ComponentAssetsPanel")

local createRowsForBodyParts = nil
local createRowsForClothes = nil

function AssetsPanel:render()
    local layoutOrder = paths.UtilityClassLayoutOrder.new()

    local children = {}
    createRowsForBodyParts(self, children, layoutOrder)
    createRowsForClothes(self, children, layoutOrder)

    local numChildPanels = paths.UtilityFunctionsTable.countDictionaryKeys(children)
    children.UIListLayoutVertical = paths.UtilityFunctionsCreate.verticalFillUIListLayout()
    return paths.UtilityFunctionsCreate.virticalChildFittedFrame(self.props.LayoutOrder, children, numChildPanels)
end

local createInputRow = function(self, label, assetTypeId, layoutOrder)
    local template = paths.StateInterfaceTemplates.getStateModelTemplate(self.props)
    local assetId, playerChoice = template:getAsset(assetTypeId)
    return paths.Roact.createElement(paths.ComponentTextInputRow, {
            ThemeData = self.props.ThemeData,
            LayoutOrder = layoutOrder:getNextOrder(),
            LabelText = label,
            InputBoxText = assetId,
            PlayerChoice = playerChoice,
            IsEnabled = (function() if fastFlags.isCheckboxDisabledStateFixFlagOn() then return self.props.IsEnabled else return nil end end)(),

            setValue = function(val)
                local id = tonumber(val)
                if id and id ~= assetId then
                    local newTemplateModel = paths.StateModelTemplate.makeCopy(template)
                    newTemplateModel:setAsset(assetTypeId, val, false)
                    self.props.clobberTemplate(self.props.template, newTemplateModel)
                end
            end,

            setPlayerChoiceValue = function(val)
                local newTemplateModel = paths.StateModelTemplate.makeCopy(template)
                newTemplateModel:setAsset(assetTypeId, nil, val)
                self.props.clobberTemplate(self.props.template, newTemplateModel)
            end
        }
    )
end

local function createRowsForAssets(self, tableToPopulate, layoutOrder, sectionTitle, inputRowsData)
    tableToPopulate[sectionTitle] = paths.Roact.createElement(paths.ComponentTitleBar, {
            ThemeData = self.props.ThemeData,
            LayoutOrder = layoutOrder:getNextOrder(),
            IsEnabled = self.props.IsEnabled,
            Text = sectionTitle,
            IsPlayerChoiceTitleStyle = true
        }
    )

    for _, row in pairs(inputRowsData) do
        local label, assetTypeId = row[1], row[2]
        tableToPopulate[row[1]] = createInputRow(self, label, assetTypeId, layoutOrder)
    end
end

createRowsForBodyParts = function(self, tableToPopulate, layoutOrder)
    local inputRowsData = {
        { "Face", paths.ConstantAvatar.AssetTypes.Face },
        { "Head", paths.ConstantAvatar.AssetTypes.Head },
        { "Torso", paths.ConstantAvatar.AssetTypes.Torso },
        { "Left Arm", paths.ConstantAvatar.AssetTypes.LeftArm },
        { "Right Arm", paths.ConstantAvatar.AssetTypes.RightArm },
        { "Left Leg", paths.ConstantAvatar.AssetTypes.LeftLeg },
        { "Right Leg", paths.ConstantAvatar.AssetTypes.RightLeg }
    }
    createRowsForAssets(self, tableToPopulate, layoutOrder, "Body Parts", inputRowsData)
end

createRowsForClothes = function(self, tableToPopulate, layoutOrder)
    local inputRowsData = {
        { "T-Shirt ID", paths.ConstantAvatar.AssetTypes.ShirtGraphic },
        { "Shirt ID", paths.ConstantAvatar.AssetTypes.Shirt },
        { "Pants ID", paths.ConstantAvatar.AssetTypes.Pants }
    }
    createRowsForAssets(self, tableToPopulate, layoutOrder, "Clothing", inputRowsData)
end

return AssetsPanel