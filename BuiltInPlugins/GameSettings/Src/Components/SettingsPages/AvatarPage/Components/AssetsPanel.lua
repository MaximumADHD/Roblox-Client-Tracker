local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)
local FrameworkUtil = require(Plugin.Framework.Util)
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator

local ConstantAvatar = require(Page.Util.ConstantAvatar)
local ConstantLayout = require(Page.Util.ConstantLayout)
local StateModelTemplate = require(Page.Util.StateModelTemplate)
local StateInterfaceTemplates = require(Page.Util.StateInterfaceTemplates)
local StateInterfaceTheme = require(Page.Util.StateInterfaceTheme)

local AssetInput = require(Page.Components.AssetInput)
local DividerRow = require(Page.Components.DividerRow)
local TitleBar = require(Page.Components.TitleBar)

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")

local AssetsPanel = Roact.Component:extend("ComponentAssetsPanel")

local createRowsForBodyParts = nil
local createRowsForClothes = nil

function AssetsPanel:init()
	self.frameRef = Roact.createRef()
end

function AssetsPanel:render()
	local layoutOrder = LayoutOrderIterator.new()

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
end

ContextServices.mapToProps(AssetsPanel, {
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})

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
		tableToPopulate[row[1]] = createInputRow(self, label, assetTypeId, layoutOrder)
	end
end

createRowsForBodyParts = function(self, tableToPopulate, layoutOrder, localized)
	local bodyPartsTitle = localized:getText("General", "TitleBodyParts")
	local inputRowsData = {
		{ localized:getText("General", "PartFace"), ConstantAvatar.AssetTypes.Face },
		{ localized:getText("General", "PartHead"), ConstantAvatar.AssetTypes.Head },
		{ localized:getText("General", "PartTorso"), ConstantAvatar.AssetTypes.Torso },
		{ localized:getText("General", "PartLeftArm"), ConstantAvatar.AssetTypes.LeftArm },
		{ localized:getText("General", "PartRightArm"), ConstantAvatar.AssetTypes.RightArm },
		{ localized:getText("General", "PartLeftLeg"), ConstantAvatar.AssetTypes.LeftLeg },
		{ localized:getText("General", "PartRightLeg"), ConstantAvatar.AssetTypes.RightLeg }
	}

	createRowsForAssets(self, tableToPopulate, layoutOrder, bodyPartsTitle, inputRowsData)
end

createRowsForClothes = function(self, tableToPopulate, layoutOrder, localized)
	local clothingTitle = localized:getText("General", "TitleClothing")
	local inputRowsData = {
		{ localized:getText("General", "ClothingTShirt"), ConstantAvatar.AssetTypes.ShirtGraphic },
		{ localized:getText("General", "ClothingShirt"), ConstantAvatar.AssetTypes.Shirt },
		{ localized:getText("General", "ClothingPants"), ConstantAvatar.AssetTypes.Pants }
	}

	createRowsForAssets(self, tableToPopulate, layoutOrder, clothingTitle, inputRowsData)
end

return AssetsPanel