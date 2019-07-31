local paths = require(script.Parent.Parent.Paths)

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
			LayoutOrder = layoutOrder:getNextOrder(),

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
		ErrorMessage = self.props.AssetOverrideErrors and self.props.AssetOverrideErrors[assetTypeId] or nil,
		Mouse = self.props.Mouse,

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