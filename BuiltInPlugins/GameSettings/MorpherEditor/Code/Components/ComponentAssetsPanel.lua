local paths = require(script.Parent.Parent.Paths)
local FFlagWorldAvatarLocalization = game:GetFastFlag("WorldAvatarLocalization")
local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")

local AssetsPanel = paths.Roact.Component:extend("ComponentAssetsPanel")

local createRowsForBodyParts = nil
local createRowsForClothes = nil

function AssetsPanel:init()
	self.frameRef = paths.Roact.createRef()
end

function AssetsPanel:render()
	local layoutOrder = paths.UtilityClassLayoutOrder.new()

	local children = {}

	children.UIListLayoutVertical = paths.Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		FillDirection = Enum.FillDirection.Vertical,
		Padding = paths.ConstantLayout.VirticalPadding,

		[paths.Roact.Change.AbsoluteContentSize] = function(rbx)
			self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
		end
	})

	createRowsForBodyParts(self, children, layoutOrder)
	createRowsForClothes(self, children, layoutOrder)

	return paths.Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = paths.StateInterfaceTheme.getBackgroundColor(self.props),
			LayoutOrder = (function()
				if FFlagAvatarSizeFixForReorganizeHeaders then
					return self.props.LayoutOrder
				end
				return layoutOrder:getNextOrder()
			end)(),

			[paths.Roact.Ref] = self.frameRef,
		},
		children
	)
end

local createInputRow = function(self, label, assetTypeId, layoutOrder)
	local template = paths.StateInterfaceTemplates.getStateModelTemplate(self.props)
	local assetId, playerChoice = template:getAsset(assetTypeId)

	return paths.Roact.createElement(paths.ComponentAssetInput, {
		InputBoxText = tostring(assetId),
		Title = label,
		LayoutOrder = layoutOrder:getNextOrder(),
		PlayerChoice = playerChoice,
		IsEnabled = self.props.IsEnabled,
		ErrorMessage = (function()
			if FFlagWorldAvatarLocalization then
				local errorLocalizationKey = self.props.AssetOverrideErrors and self.props.AssetOverrideErrors[assetTypeId] or nil
				return errorLocalizationKey and self.props.LocalizedContent.Error[errorLocalizationKey]
			end
			return self.props.AssetOverrideErrors and self.props.AssetOverrideErrors[assetTypeId] or nil
		end)(),
		Mouse = self.props.Mouse,
		LocalizedContent = FFlagWorldAvatarLocalization and self.props.LocalizedContent or nil,

		SetValue = function(text)
			local id = string.len(string.gsub(text, " ", "")) > 0 and tonumber(text) or 0
			if id ~= assetId then
				local newTemplateModel = paths.StateModelTemplate.makeCopy(template)

				local validInput = id ~= 0
				newTemplateModel:setAsset(assetTypeId, id, not validInput)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end
		end,

		SetPlayerChoiceValue = function(val)
			local newTemplateModel = paths.StateModelTemplate.makeCopy(template)
			newTemplateModel:setAsset(assetTypeId, nil, val)
			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end
	})
end

local function createRowsForAssets(self, tableToPopulate, layoutOrder, sectionTitle, inputRowsData)
	tableToPopulate[sectionTitle.."Separator"] = paths.Roact.createElement(paths.ComponentDividerRow, {
		ThemeData = self.props.ThemeData,
		LayoutOrder = layoutOrder:getNextOrder(),
	})

	tableToPopulate[sectionTitle] = paths.Roact.createElement(paths.ComponentTitleBar, {
		ThemeData = self.props.ThemeData,
		LayoutOrder = layoutOrder:getNextOrder(),
		IsEnabled = self.props.IsEnabled,
		Text = sectionTitle,
		IsPlayerChoiceTitleStyle = true,
		LocalizedContent = FFlagWorldAvatarLocalization and self.props.LocalizedContent or nil,
	})

	for _, row in pairs(inputRowsData) do
		local label, assetTypeId = row[1], row[2]
		tableToPopulate[row[1]] = createInputRow(self, label, assetTypeId, layoutOrder)
	end
end

createRowsForBodyParts = function(self, tableToPopulate, layoutOrder)
	local localizedContent = FFlagWorldAvatarLocalization and self.props.LocalizedContent or nil
	local inputRowsData = {
		{ FFlagWorldAvatarLocalization and localizedContent.Part.Face or "Face", paths.ConstantAvatar.AssetTypes.Face },
		{ FFlagWorldAvatarLocalization and localizedContent.Part.Head or "Head", paths.ConstantAvatar.AssetTypes.Head },
		{ FFlagWorldAvatarLocalization and localizedContent.Part.Torso or "Torso", paths.ConstantAvatar.AssetTypes.Torso },
		{ FFlagWorldAvatarLocalization and localizedContent.Part.LeftArm or "Left Arm", paths.ConstantAvatar.AssetTypes.LeftArm },
		{ FFlagWorldAvatarLocalization and localizedContent.Part.RightArm or "Right Arm", paths.ConstantAvatar.AssetTypes.RightArm },
		{ FFlagWorldAvatarLocalization and localizedContent.Part.LeftLeg or "Left Leg", paths.ConstantAvatar.AssetTypes.LeftLeg },
		{ FFlagWorldAvatarLocalization and localizedContent.Part.RightLeg or "Right Leg", paths.ConstantAvatar.AssetTypes.RightLeg }
	}
	createRowsForAssets(self, tableToPopulate, layoutOrder, FFlagWorldAvatarLocalization and localizedContent.Title.TitleBodyParts or "Body Parts", inputRowsData)
end

createRowsForClothes = function(self, tableToPopulate, layoutOrder)
	local localizedContent = FFlagWorldAvatarLocalization and self.props.LocalizedContent or nil
	local inputRowsData = {
		{ FFlagWorldAvatarLocalization and localizedContent.Clothing.TShirt or "T-Shirt ID", paths.ConstantAvatar.AssetTypes.ShirtGraphic },
		{ FFlagWorldAvatarLocalization and localizedContent.Clothing.Shirt or "Shirt ID", paths.ConstantAvatar.AssetTypes.Shirt },
		{ FFlagWorldAvatarLocalization and localizedContent.Clothing.Pants or "Pants ID", paths.ConstantAvatar.AssetTypes.Pants }
	}
	createRowsForAssets(self, tableToPopulate, layoutOrder, FFlagWorldAvatarLocalization and localizedContent.Title.TitleClothing or "Clothing", inputRowsData)
end

return AssetsPanel