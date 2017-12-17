local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local TweenService = game:GetService("TweenService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Utility = require(RobloxGui.Modules.Settings.Utility)

local INPUT_TYPE_ROW_HEIGHT = 30
local ACTION_ROW_HEIGHT = 20
local ROW_PADDING = 5
local COLUMN_PADDING = 5

local CORE_SECURITY_COLUMN_COLOR = Color3.new(0.1, 0, 0)
local DEV_SECURITY_COLUMN_COLOR = Color3.new(0, 0, 0)

local EXPAND_ROTATE_IMAGE_TWEEN_OUT = TweenInfo.new(0.150, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local EXPAND_ROTATE_IMAGE_TWEEN_IN = TweenInfo.new(0.150, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local ROW_PULSE = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, true, 0)
local CONTAINER_SCROLL = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local container = nil
local boundInputTypeRows = {}
local boundInputTypesByRows = {}
local boundInputTypeActionRows = {}
local boundActionInfoByRows = {}
local inputTypesByActionRows = {}
local inputTypesByHeaders = {}
local headersByInputTypes = {}
local inputTypesExpanded = {}

local rowTypePrecedence = { 
	BoundInputType = 3, 
	TableHeader = 2, 
	BoundAction = 1 
} 

local function sortByInputType(a, b)
	return tostring(a) < tostring(b)
end

local function getInputType(x) 
	if x.Name == "BoundAction" then 
		return inputTypesByActionRows[x] 
	elseif x.Name == "BoundInputType" then 
		return boundInputTypesByRows[x] 
	elseif x.Name == "TableHeader" then 
		return inputTypesByHeaders[x]
	end 
end 

local function sortActionRows(a, b) 
	if a.Name == "BoundAction" and b.Name == "BoundAction" then 
		local actionA = boundActionInfoByRows[a] 
		local actionB = boundActionInfoByRows[b] 
		if actionA and actionB then 
			local rowInputTypeA = inputTypesByActionRows[a] 
			local rowInputTypeB = inputTypesByActionRows[b] 
			if rowInputTypeA ~= rowInputTypeB then 
				return sortByInputType(rowInputTypeA, rowInputTypeB) 
			end 
			if actionA.isCore and not actionB.isCore then 
				return true 
			elseif not actionA.isCore and actionB.isCore then 
				return false 
			end 
			local stackOrderA = actionA.stackOrder 
			local stackOrderB = actionB.stackOrder 
			if stackOrderA and stackOrderB then 
				return stackOrderA > stackOrderB --descending sort 
			else 
				return true 
			end 
		else 
			return true 
		end 
	else 
		local inputTypeA = getInputType(a) 
		local inputTypeB = getInputType(b)
		if a.Name == b.Name then 
			return sortByInputType(inputTypeA, inputTypeB) 
		end 
		if inputTypeA == inputTypeB then 
			return rowTypePrecedence[a.Name] > rowTypePrecedence[b.Name] 
		end 
		return sortByInputType(inputTypeA, inputTypeB) 
	end 
	return true 
 end

local function createEmptyRow(name, height)
	local row = Utility:Create("Frame") {
		Name = name,
		BackgroundTransparency = 1,
		ZIndex = 6,
		Size = UDim2.new(1, 0, 0, height or 0)
	}
	local columnList = Utility:Create("UIListLayout") {
		FillDirection = Enum.FillDirection.Horizontal,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, COLUMN_PADDING),
		Parent = row
	}
	return row
end

local function createButtonRow(name, height)
	local row = Utility:Create("TextButton") {
		Name = name,
		BackgroundTransparency = 1,
		ZIndex = 6,
		Text = "",
		Size = UDim2.new(1, 0, 0, height or 0),
	}
	local columnList = Utility:Create("UIListLayout") {
		FillDirection = Enum.FillDirection.Horizontal,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, COLUMN_PADDING),
		Parent = row
	}
	return row
end

local function createEmptyColumn(row, columnName)
	local column = Utility:Create("Frame") {
		Name = columnName,
		BackgroundColor3 = Color3.new(0, 0, 0),
		BackgroundTransparency = 0.75,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 6,
		ClipsDescendants = true,
		Parent = row
	}

	return column
end

local function createImageColumn(row, columnName, image, aspectRatio, imageSize)
	local column = createEmptyColumn(row, columnName)

	local aspectRatioConstraint = Utility:Create("UIAspectRatioConstraint") {
		AspectRatio = aspectRatio or 1,
		Parent = column 
	}

	local imageLabel = Utility:Create("ImageLabel") {
		Name = "ColumnImage",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(imageSize or 1, 0, imageSize or 1, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		ZIndex = 6,
		Image = image,
		Parent = column
	}

	return column
end

local function createTextColumn(row, columnName, text)
	local column = createEmptyColumn(row, columnName)

	local textLabel = Utility:Create("TextLabel") {
		Name = "ColumnText",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, -10, 1, -10),
		AnchorPoint = Vector2.new(0.5, 0.5),
		ZIndex = 6,
		Text = text,
		TextSize = 18,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Font = Enum.Font.SourceSans,
		Parent = column
	}

	return column
end

local function createActionColumns(row, backgroundColor)
	local x = 0

	local insetWidth = ACTION_ROW_HEIGHT + (COLUMN_PADDING * 2)
	local insetCol = createEmptyColumn(row, "Inset")
	insetCol.LayoutOrder = 0
	insetCol.BackgroundTransparency = 1
	insetCol.Size = UDim2.new(0, insetWidth, 1, 0)
	x = x + insetWidth + COLUMN_PADDING

	local priorityWidth = 80
	local priorityCol = createTextColumn(row, "Priority", "Priority")
	priorityCol.LayoutOrder = 1
	priorityCol.BackgroundColor3 = backgroundColor
	priorityCol.Size = UDim2.new(0, priorityWidth, 1, 0)
	x = x + priorityWidth + COLUMN_PADDING

	local securityWidth = 80
	local securityCol = createTextColumn(row, "Security", "Security")
	securityCol.LayoutOrder = 2
	securityCol.BackgroundColor3 = backgroundColor
	securityCol.Size = UDim2.new(0, securityWidth, 1, 0)
	x = x + securityWidth + COLUMN_PADDING

	local nameCol = createTextColumn(row, "ActionName", "Action Name")
	nameCol.LayoutOrder = 3
	nameCol.BackgroundColor3 = backgroundColor
	nameCol.Size = UDim2.new(1/4, 0, 1, 0)

	local inputTypesCol = createTextColumn(row, "InputTypes", "Input Types")
	inputTypesCol.LayoutOrder = 4
	inputTypesCol.BackgroundColor3 = backgroundColor
	inputTypesCol.Size = UDim2.new(3/4, -x - COLUMN_PADDING, 1, 0)

	return insetCol, priorityCol, securityCol, nameCol, inputTypesCol
end

local function updateContainerCanvas()
	local y = 0
	for _, v in pairs(container:GetChildren()) do
		if v:IsA("GuiObject") and v.Visible then
			y = y + v.AbsoluteSize.Y + ROW_PADDING
		end
	end
	container.CanvasSize = UDim2.new(0, 0, 0, y)
end

local function scrollContainerToRow(row)
	local scrollOffset = row.AbsolutePosition.Y - container.AbsolutePosition.Y
	local newCanvasPosition = container.CanvasPosition + Vector2.new(0, scrollOffset)
	TweenService:Create(container, CONTAINER_SCROLL, { CanvasPosition = newCanvasPosition }):Play()
end

local ActionBindingsTab = {}

function ActionBindingsTab.initializeGui(tabFrame)
	local scrollingFrame = Utility:Create("ScrollingFrame") {
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, -10, 1, -10),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BorderSizePixel = 0,
		ScrollBarThickness = 4,
		BackgroundTransparency = 1,
		ZIndex = 6,
		Parent = tabFrame
	}
	container = scrollingFrame

	local listLayout = Utility:Create("UIListLayout") {
		Padding = UDim.new(0, ROW_PADDING),
		Parent = scrollingFrame
	}
	listLayout:SetCustomSortFunction(sortActionRows)
	listLayout.SortOrder = Enum.SortOrder.Custom

	ActionBindingsTab.updateGuis()

	ContextActionService.BoundActionAdded:connect(function(actionName, createTouchButton, actionInfo, isCore)
		actionInfo.isCore = isCore
		ActionBindingsTab.updateActionRows(actionName, actionInfo)
	end)
	ContextActionService.BoundActionRemoved:connect(function(actionName, actionInfo, isCore)
		actionInfo.isCore = isCore
		ActionBindingsTab.removeActionRows(actionName, actionInfo)
	end)
end

function ActionBindingsTab.updateBoundInputTypeRow(inputType)
	local existingRow = boundInputTypeRows[inputType]
	if not existingRow then
		local row = createButtonRow("BoundInputType", INPUT_TYPE_ROW_HEIGHT)

		local expandImageCol = createImageColumn(row, "ExpandImage", "rbxasset://textures/ui/Icons/DownIndicatorIcon@1080.png", 1, 0.35)
		expandImageCol.ColumnImage.Rotation = -90

		local inputTypeCol = createTextColumn(row, "InputType", tostring(inputType))
		inputTypeCol.Size = UDim2.new(1, -INPUT_TYPE_ROW_HEIGHT - COLUMN_PADDING, 1, 0)
		inputTypeCol.ColumnText.Font = Enum.Font.SourceSansBold

		local tableHeaderRow = createEmptyRow("TableHeader", ACTION_ROW_HEIGHT)
		tableHeaderRow.Visible = false
		local _, priorityCol, securityCol, nameCol, inputTypesCol = createActionColumns(tableHeaderRow, DEV_SECURITY_COLUMN_COLOR)
		priorityCol.ColumnText.Font = Enum.Font.SourceSansBold
		securityCol.ColumnText.Font = Enum.Font.SourceSansBold
		nameCol.ColumnText.Font = Enum.Font.SourceSansBold
		inputTypesCol.ColumnText.Font = Enum.Font.SourceSansBold

		boundInputTypeRows[inputType] = row
		boundInputTypesByRows[row] = inputType
		inputTypesByHeaders[tableHeaderRow] = inputType
		headersByInputTypes[inputType] = tableHeaderRow

		tableHeaderRow.Parent = container
		row.Parent = container

		TweenService:Create(inputTypeCol, ROW_PULSE, { BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) }):Play()

		inputTypesExpanded[inputType] = false
		row.MouseButton1Click:connect(function()
			inputTypesExpanded[inputType] = not inputTypesExpanded[inputType]

			local inputTypeActionRows = boundInputTypeActionRows[inputType]
			if not inputTypesExpanded[inputType] then
				TweenService:Create(expandImageCol.ColumnImage, EXPAND_ROTATE_IMAGE_TWEEN_OUT, { Rotation = -90 }):Play()
				tableHeaderRow.Visible = false
				if inputTypeActionRows then
					for _, actionRow in pairs(inputTypeActionRows) do
						actionRow.Visible = false
					end
				end
			else
				TweenService:Create(expandImageCol.ColumnImage, EXPAND_ROTATE_IMAGE_TWEEN_IN, { Rotation = 0 }):Play()
				tableHeaderRow.Visible = true
				if inputTypeActionRows then
					for _, actionRow in pairs(inputTypeActionRows) do
						actionRow.Visible = true
					end
				end
			end

			updateContainerCanvas()
			if inputTypesExpanded[inputType] then
				TweenService:Create(inputTypeCol, ROW_PULSE, { BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) }):Play()
				scrollContainerToRow(row)
			end
		end)
	end
end

function ActionBindingsTab.updateActionRowForInputType(actionName, actionInfo, inputType)
	local inputTypeActionRows = boundInputTypeActionRows[inputType]
	if not inputTypeActionRows then
		inputTypeActionRows = {}
		boundInputTypeActionRows[inputType] = inputTypeActionRows
	end

	local existingRow = inputTypeActionRows[actionName]
	if not existingRow then
		local row = createEmptyRow("BoundAction", ACTION_ROW_HEIGHT)
		row.Visible = inputTypesExpanded[inputType]

		local inputTypeNames = {}
		for i, inputType in pairs(actionInfo.inputTypes) do
			inputTypeNames[i] = tostring(inputType)
		end

		local insetCol, priorityCol, securityCol, nameCol, inputTypesCol = createActionColumns(row, actionInfo.isCore and CORE_SECURITY_COLUMN_COLOR or DEV_SECURITY_COLUMN_COLOR)
		priorityCol.ColumnText.Text = actionInfo.priorityLevel or "Default"
		securityCol.ColumnText.Text = actionInfo.isCore and "Core" or "Developer"
		nameCol.ColumnText.Text = actionName
		inputTypesCol.ColumnText.Text = table.concat(inputTypeNames, ", ")

		if actionInfo.isCore then
			priorityCol.ColumnText.Font = Enum.Font.SourceSansItalic
			securityCol.ColumnText.Font = Enum.Font.SourceSansItalic
			nameCol.ColumnText.Font = Enum.Font.SourceSansItalic
			inputTypesCol.ColumnText.Font = Enum.Font.SourceSansItalic
		end

		inputTypeActionRows[actionName] = row
		inputTypesByActionRows[row] = inputType
		boundActionInfoByRows[row] = actionInfo
		row.Parent = container

		if row.Visible then
			TweenService:Create(nameCol, ROW_PULSE, { BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) }):Play()
		else
			local inputTypeRow = boundInputTypeRows[inputType]
			if inputTypeRow then
				TweenService:Create(inputTypeRow.InputType, ROW_PULSE, { BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) }):Play()
			end
		end
	end
end

function ActionBindingsTab.updateActionRows(actionName, actionInfo)
	for _, inputType in pairs(actionInfo.inputTypes) do
		ActionBindingsTab.updateBoundInputTypeRow(inputType)
		ActionBindingsTab.updateActionRowForInputType(actionName, actionInfo, inputType)
	end
	updateContainerCanvas()
end

function ActionBindingsTab.removeActionRows(actionName, actionInfo)
	for _, inputType in pairs(actionInfo.inputTypes) do
		local inputTypeActionRows = boundInputTypeActionRows[inputType]
		if inputTypeActionRows then
			local row = inputTypeActionRows[actionName]
			row:Destroy()
			inputTypeActionRows[actionName] = nil

			--The following code looks weird. It's because Lua has no way to determine
			--if a table is explicitly empty in both the array and dictionary parts.
			--This does it though.
			local isEmpty = true
			for _, __ in pairs(inputTypeActionRows) do
				isEmpty = false
				break
			end

			if isEmpty then
				local inputTypeRow = boundInputTypeRows[inputType]
				if inputTypeRow then
					inputTypeRow:Destroy()
					boundInputTypeRows[inputType] = nil
				end
				local tableHeaderRow = headersByInputTypes[inputType]
				if tableHeaderRow then
					headersByInputTypes[tableHeaderRow] = nil
					tableHeaderRow:Destroy()
					headersByInputTypes[inputType] = nil
				end
			end
		end
	end

	updateContainerCanvas()
	container.UIListLayout:ApplyLayout()
end

function ActionBindingsTab.updateGuis()
	local boundCoreActions = ContextActionService:GetAllBoundCoreActionInfo()
	for actionName, actionInfo in pairs(boundCoreActions) do
		actionInfo.isCore = true
		ActionBindingsTab.updateActionRows(actionName, actionInfo)
	end
	local boundActions = ContextActionService:GetAllBoundActionInfo()
	for actionName, actionInfo in pairs(boundActions) do
		actionInfo.isCore = false
		ActionBindingsTab.updateActionRows(actionName, actionInfo)
	end
	updateContainerCanvas()
end

return ActionBindingsTab