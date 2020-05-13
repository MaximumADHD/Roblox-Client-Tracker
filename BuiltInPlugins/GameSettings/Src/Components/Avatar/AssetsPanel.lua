local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ContextServices = require(Plugin.Framework.ContextServices)

local ConstantAvatar = require(Plugin.Src.Util.ConstantAvatar)
local ConstantLayout = require(Plugin.Src.Util.ConstantLayout)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)
local StateInterfaceTemplates = require(Plugin.Src.Util.StateInterfaceTemplates)
local StateInterfaceTheme = require(Plugin.Src.Util.StateInterfaceTheme)
local UtilityClassLayoutOrder = require(Plugin.Src.Util.UtilityClassLayoutOrder)

local AssetInput = require(Plugin.Src.Components.Avatar.AssetInput)
local DividerRow = require(Plugin.Src.Components.DividerRow)
local TitleBar = require(Plugin.Src.Components.TitleBar)

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")

local AssetsPanel = Roact.Component:extend("ComponentAssetsPanel")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local createRowsForBodyParts = nil
local createRowsForClothes = nil

function AssetsPanel:init()
	self.frameRef = Roact.createRef()
end

function AssetsPanel:render()
	local layoutOrder = UtilityClassLayoutOrder.new()

	local children = {}

	children.UIListLayoutVertical = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		FillDirection = Enum.FillDirection.Vertical,
		Padding = ConstantLayout.VirticalPadding,

		[Roact.Change.AbsoluteContentSize] = function(rbx)
			self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
		end
	})

	local props = self.props
	local localization = props.Localization

	if FFlagStudioConvertGameSettingsToDevFramework then
		createRowsForBodyParts(self, children, layoutOrder, localization)
		createRowsForClothes(self, children, layoutOrder, localization)
		return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = StateInterfaceTheme.getBackgroundColor(self.props),
				LayoutOrder = (function()
					if FFlagAvatarSizeFixForReorganizeHeaders then
						return self.props.LayoutOrder
					end
					return layoutOrder:getNextOrder()
				end)(),

				[Roact.Ref] = self.frameRef,
			},
			children
		)
	else
		return withLocalization(function(localized)
			createRowsForBodyParts(self, children, layoutOrder, localized)
			createRowsForClothes(self, children, layoutOrder, localized)
			return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = StateInterfaceTheme.getBackgroundColor(self.props),
					LayoutOrder = (function()
						if FFlagAvatarSizeFixForReorganizeHeaders then
							return self.props.LayoutOrder
						end
						return layoutOrder:getNextOrder()
					end)(),

					[Roact.Ref] = self.frameRef,
				},
				children
			)
		end)
	end
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(AssetsPanel, {
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})
end

local DEPRECATED_createInputRow = function(self, label, assetTypeId, layoutOrderIterator)
	local template = StateInterfaceTemplates.getStateModelTemplate(self.props)
	local assetId, playerChoice = template:getAsset(assetTypeId)
	local layoutOrder = layoutOrderIterator:getNextOrder()

	return withLocalization(function(localized)
		return Roact.createElement(AssetInput, {
			InputBoxText = tostring(assetId),
			Title = label,
			LayoutOrder = layoutOrder,
			PlayerChoice = playerChoice,
			IsEnabled = self.props.IsEnabled,
			ErrorMessage = (function()
				local errorLocalizationKey = self.props.AssetOverrideErrors and self.props.AssetOverrideErrors[assetTypeId] or nil
				return errorLocalizationKey and localized.Morpher.Error[errorLocalizationKey]
			end)(),
			Mouse = self.props.Mouse,

			SetValue = function(text)
				local id = string.len(string.gsub(text, " ", "")) > 0 and tonumber(text) or 0
				if id ~= assetId then
					local newTemplateModel = StateModelTemplate.makeCopy(template)

					local validInput = id ~= 0
					newTemplateModel:setAsset(assetTypeId, id, not validInput)
					self.props.clobberTemplate(self.props.template, newTemplateModel)
				end
			end,

			SetPlayerChoiceValue = function(val)
				local newTemplateModel = StateModelTemplate.makeCopy(template)
				newTemplateModel:setAsset(assetTypeId, nil, val)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end
		})
	end)
end

local createInputRow = function(self, label, assetTypeId, layoutOrderIterator)
	local template = StateInterfaceTemplates.getStateModelTemplate(self.props)
	local assetId, playerChoice = template:getAsset(assetTypeId)
	local layoutOrder = layoutOrderIterator:getNextOrder()

	local props = self.props
	local localization = props.Localization

	return Roact.createElement(AssetInput, {
		InputBoxText = tostring(assetId),
		Title = label,
		LayoutOrder = layoutOrder,
		PlayerChoice = playerChoice,
		IsEnabled = self.props.IsEnabled,
		ErrorMessage = (function()
			local errorLocalizationKey = self.props.AssetOverrideErrors and self.props.AssetOverrideErrors[assetTypeId] or nil
			return errorLocalizationKey and localization:getText("General", "Error" .. errorLocalizationKey)
		end)(),
		Mouse = self.props.Mouse,

		SetValue = function(text)
			local id = string.len(string.gsub(text, " ", "")) > 0 and tonumber(text) or 0
			if id ~= assetId then
				local newTemplateModel = StateModelTemplate.makeCopy(template)

				local validInput = id ~= 0
				newTemplateModel:setAsset(assetTypeId, id, not validInput)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end
		end,

		SetPlayerChoiceValue = function(val)
			local newTemplateModel = StateModelTemplate.makeCopy(template)
			newTemplateModel:setAsset(assetTypeId, nil, val)
			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end
	})
end

local function createRowsForAssets(self, tableToPopulate, layoutOrder, sectionTitle, inputRowsData)
	tableToPopulate[sectionTitle.."Separator"] = Roact.createElement(DividerRow, {
		ThemeData = self.props.ThemeData,
		LayoutOrder = layoutOrder:getNextOrder(),
	})

	tableToPopulate[sectionTitle] = Roact.createElement(TitleBar, {
		ThemeData = self.props.ThemeData,
		LayoutOrder = layoutOrder:getNextOrder(),
		IsEnabled = self.props.IsEnabled,
		Text = sectionTitle,
		IsPlayerChoiceTitleStyle = true,
	})

	for _, row in pairs(inputRowsData) do
		local label, assetTypeId = row[1], row[2]
		if FFlagStudioConvertGameSettingsToDevFramework then
			tableToPopulate[row[1]] = createInputRow(self, label, assetTypeId, layoutOrder)
		else
			tableToPopulate[row[1]] = DEPRECATED_createInputRow(self, label, assetTypeId, layoutOrder)
		end
	end
end

createRowsForBodyParts = function(self, tableToPopulate, layoutOrder, localized)
	local inputRowsData
	local bodyPartsTitle
	if FFlagStudioConvertGameSettingsToDevFramework then
		inputRowsData = {
			{ localized:getText("General", "PartFace"), ConstantAvatar.AssetTypes.Face },
			{ localized:getText("General", "PartHead"), ConstantAvatar.AssetTypes.Head },
			{ localized:getText("General", "PartTorso"), ConstantAvatar.AssetTypes.Torso },
			{ localized:getText("General", "PartLeftArm"), ConstantAvatar.AssetTypes.LeftArm },
			{ localized:getText("General", "PartRightArm"), ConstantAvatar.AssetTypes.RightArm },
			{ localized:getText("General", "PartLeftLeg"), ConstantAvatar.AssetTypes.LeftLeg },
			{ localized:getText("General", "PartRightLeg"), ConstantAvatar.AssetTypes.RightLeg }
		}
		bodyPartsTitle = localized:getText("General", "TitleBodyParts")
	else
		inputRowsData = {
			{ localized.Morpher.Part.Face, ConstantAvatar.AssetTypes.Face },
			{ localized.Morpher.Part.Head, ConstantAvatar.AssetTypes.Head },
			{ localized.Morpher.Part.Torso, ConstantAvatar.AssetTypes.Torso },
			{ localized.Morpher.Part.LeftArm, ConstantAvatar.AssetTypes.LeftArm },
			{ localized.Morpher.Part.RightArm, ConstantAvatar.AssetTypes.RightArm },
			{ localized.Morpher.Part.LeftLeg, ConstantAvatar.AssetTypes.LeftLeg },
			{ localized.Morpher.Part.RightLeg, ConstantAvatar.AssetTypes.RightLeg }
		}
		bodyPartsTitle = localized.Morpher.Title.TitleBodyParts
	end
	createRowsForAssets(self, tableToPopulate, layoutOrder, bodyPartsTitle, inputRowsData)
end

createRowsForClothes = function(self, tableToPopulate, layoutOrder, localized)
	local inputRowsData
	local clothingTitle
	if FFlagStudioConvertGameSettingsToDevFramework then
		inputRowsData = {
			{ localized:getText("General", "ClothingTShirt"), ConstantAvatar.AssetTypes.ShirtGraphic },
			{ localized:getText("General", "ClothingShirt"), ConstantAvatar.AssetTypes.Shirt },
			{ localized:getText("General", "ClothingPants"), ConstantAvatar.AssetTypes.Pants }
		}
		clothingTitle = localized:getText("General", "TitleClothing")
	else
		inputRowsData = {
			{ localized.Morpher.Clothing.TShirt, ConstantAvatar.AssetTypes.ShirtGraphic },
			{ localized.Morpher.Clothing.Shirt, ConstantAvatar.AssetTypes.Shirt },
			{ localized.Morpher.Clothing.Pants, ConstantAvatar.AssetTypes.Pants }
		}
		clothingTitle = localized.Morpher.Title.TitleClothing
	end
	createRowsForAssets(self, tableToPopulate, layoutOrder, clothingTitle, inputRowsData)
end

return AssetsPanel