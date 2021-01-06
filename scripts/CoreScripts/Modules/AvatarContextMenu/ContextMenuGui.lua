--[[
	// FileName: ContextMenuGui.lua
	// Written by: TheGamer101
	// Description: Module for creating the context GUI.
]]

-- CONSTANTS

local BOTTOM_SCREEN_PADDING_PERCENT = 0.02

-- SERVICES
local CoreGuiService = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

--- VARIABLES
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local SettingsModules = CoreGuiModules:WaitForChild("Settings")
local AvatarMenuModules = CoreGuiModules:WaitForChild("AvatarContextMenu")
local PlayerCarousel = nil
local PlayerChangedEvent = Instance.new("BindableEvent")

--- Modules
local ContextMenuUtil = require(AvatarMenuModules:WaitForChild("ContextMenuUtil"))
local Utility = require(SettingsModules:WaitForChild("Utility"))

local ContextMenuGui = {}
ContextMenuGui.__index = ContextMenuGui

-- PRIVATE METHODS

function ContextMenuGui:CreateContextMenuHolder(player)
	local contextMenuHolder = Instance.new("Frame")
	contextMenuHolder.Name = "AvatarContextMenu"
	contextMenuHolder.Position = UDim2.new(0, 0, 0, 0)
	contextMenuHolder.Size = UDim2.new(1, 0, 1, 0)
	contextMenuHolder.BackgroundTransparency = 1
	contextMenuHolder.Parent = RobloxGui
	contextMenuHolder.AutoLocalize = false
	return contextMenuHolder
end

function ContextMenuGui:CreateLeaveMenuButton(frame, theme)
	local function closeMenu()
		self.CloseMenuFunc()
	end
	local closeMenuButton = Instance.new("ImageButton")
	closeMenuButton.Name = "CloseMenuButton"
	closeMenuButton.BackgroundTransparency = 1
	closeMenuButton.AnchorPoint = Vector2.new(1, 0)
	closeMenuButton.Position = UDim2.new(1, -10, 0, 10)
	closeMenuButton.Size = UDim2.new(0.05, 0, 0.1, 0)
	closeMenuButton.Image = theme.LeaveMenuImage
	closeMenuButton.Selectable = false
	closeMenuButton.Activated:Connect(closeMenu)

	local aspectConstraint = Instance.new("UIAspectRatioConstraint")
	aspectConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
	aspectConstraint.DominantAxis = Enum.DominantAxis.Height
	aspectConstraint.AspectRatio = 1
	aspectConstraint.Parent = closeMenuButton

	closeMenuButton.Parent = frame

	return closeMenuButton
end

-- PUBLIC METHODS

local function listenToViewportChange(functionToFire)
	if functionToFire == nil then return end

	local viewportChangedConnection = nil

	local function updateCamera()
		local newCamera = workspace.CurrentCamera
		if viewportChangedConnection then
			viewportChangedConnection:Disconnect()
		end
		viewportChangedConnection = newCamera:GetPropertyChangedSignal("ViewportSize"):Connect(functionToFire)
		functionToFire()
	end

	workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(updateCamera)
	updateCamera()
end

function ContextMenuGui:CreateMenuFrame(theme)
	local contextMenuHolder = self:CreateContextMenuHolder()

	local menu = Instance.new("ImageButton")
	menu.Name = "Menu"
	menu.AnchorPoint = theme.AnchorPoint
	menu.Size = theme.Size
	menu.Position = theme.OnScreenPosition
	menu.BackgroundTransparency = theme.BackgroundTransparency
	menu.BackgroundColor3 = theme.BackgroundColor
	menu.Image = theme.BackgroundImage
	menu.ScaleType = theme.BackgroundImageScaleType
	menu.SliceCenter = theme.BackgroundImageSliceCenter
	menu.AutoButtonColor = false
	menu.BorderSizePixel = 0
	menu.Selectable = false
	menu.Visible = false
	menu.Active = true
	menu.ClipsDescendants = true
	menu.Modal = true

	GuiService:AddSelectionParent("AvatarContextMenuGroup", menu)

		local aspectConstraint = Instance.new("UIAspectRatioConstraint")
		aspectConstraint.AspectType = Enum.AspectType.ScaleWithParentSize
		aspectConstraint.DominantAxis = Enum.DominantAxis.Height
		aspectConstraint.Name = "MenuAspectRatio"
		aspectConstraint.AspectRatio = theme.AspectRatio
		aspectConstraint.Parent = menu

		local function updateAspectRatioForViewport()
			local viewportSize = workspace.CurrentCamera.ViewportSize
			if viewportSize.x < viewportSize.y then
				aspectConstraint.DominantAxis = Enum.DominantAxis.Width
			else
				aspectConstraint.DominantAxis = Enum.DominantAxis.Height
			end
		end
		listenToViewportChange(updateAspectRatioForViewport)

		local sizeConstraint = Instance.new("UISizeConstraint")
		sizeConstraint.Name = "MenuSizeConstraint"
		sizeConstraint.MaxSize = theme.MaxSize
		sizeConstraint.MinSize = theme.MinSize
		sizeConstraint.Parent = menu

		local contentFrame = Instance.new("Frame")
		contentFrame.Name = "Content"
		contentFrame.Size = UDim2.new(1,0,1,0)
		contentFrame.BackgroundTransparency = 1
		contentFrame.Parent = menu

			local contentListLayout = Instance.new("UIListLayout")
			contentListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			contentListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			contentListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			contentListLayout.Parent = contentFrame

			local contextActionList = Instance.new("ScrollingFrame")
			contextActionList.Name = "ContextActionList"
			contextActionList.AnchorPoint = Vector2.new(0.5,1)
			contextActionList.BackgroundColor3 = theme.ButtonFrameColor
			contextActionList.BackgroundTransparency = theme.ButtonFrameTransparency
			contextActionList.BorderSizePixel = 0
			contextActionList.LayoutOrder = 2
			contextActionList.Size = UDim2.new(1,-12,0.54,0)
			contextActionList.CanvasSize = UDim2.new(0,0,0,208)
			contextActionList.ScrollBarThickness = 4
			contextActionList.Selectable = false
			contextActionList.Parent = contentFrame

				local contextActionListUIListLayout = Instance.new("UIListLayout")
				contextActionListUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				contextActionListUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				contextActionListUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top

				contextActionListUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					contextActionList.CanvasSize = UDim2.new(0,0,0,contextActionListUIListLayout.AbsoluteContentSize.Y)
				end)

				contextActionListUIListLayout.Parent = contextActionList

			local nameTag = Instance.new("TextButton")
			nameTag.Name = "NameTag"
			nameTag.AnchorPoint = Vector2.new(0.5,1)
			nameTag.BackgroundColor3 = theme.NameTagColor
			nameTag.AutoButtonColor = false
			nameTag.BorderSizePixel = 0
			nameTag.LayoutOrder = 1
			nameTag.Size = UDim2.new(1,-12,0.16,0)
			nameTag.Font = theme.Font
			nameTag.TextColor3 = theme.TextColor
			nameTag.TextSize = 24 * theme.TextScale
			nameTag.Text = ""
			nameTag.TextXAlignment = Enum.TextXAlignment.Center
			nameTag.TextYAlignment = Enum.TextYAlignment.Center
			nameTag.Selectable = false
			nameTag.Parent = contentFrame

				local underline = Instance.new("Frame")
				underline.Name = "Underline"
				underline.BackgroundColor3 = theme.NameUnderlineColor
				underline.AnchorPoint = Vector2.new(0,1)
				underline.BorderSizePixel = 0
				underline.Position = UDim2.new(0,0,1,0)
				underline.Size = UDim2.new(1,0,0,2)
				underline.Parent = nameTag

	self:CreateLeaveMenuButton(menu, theme)

	menu.Parent = contextMenuHolder
	self.ContextMenuFrame = menu

	return menu
end

function ContextMenuGui:UpdateGuiTheme(theme)
	self.ContextMenuFrame.Size = theme.Size
	self.ContextMenuFrame.AnchorPoint = theme.AnchorPoint

	self.ContextMenuFrame.BackgroundTransparency = theme.BackgroundTransparency
	self.ContextMenuFrame.BackgroundColor3 = theme.BackgroundColor
	self.ContextMenuFrame.Image = theme.BackgroundImage
	self.ContextMenuFrame.ScaleType = theme.BackgroundImageScaleType
	self.ContextMenuFrame.SliceCenter = theme.BackgroundImageSliceCenter

	self.ContextMenuFrame.CloseMenuButton.Image = theme.LeaveMenuImage

	self.ContextMenuFrame.MenuSizeConstraint.MaxSize = theme.MaxSize
	self.ContextMenuFrame.MenuSizeConstraint.MinSize = theme.MinSize

	self.ContextMenuFrame.MenuAspectRatio.AspectRatio = theme.AspectRatio

	local contentFrame = self.ContextMenuFrame.Content
	contentFrame.ContextActionList.BackgroundColor3 = theme.ButtonFrameColor
	contentFrame.ContextActionList.BackgroundTransparency = theme.ButtonFrameTransparency

	contentFrame.NameTag.BackgroundColor3 = theme.NameTagColor
	contentFrame.NameTag.Font = theme.Font
	contentFrame.NameTag.TextColor3 = theme.TextColor
	contentFrame.NameTag.TextSize = 24 * theme.TextScale

	contentFrame.NameTag.Underline.BackgroundColor3 = theme.NameUnderlineColor

	if PlayerCarousel then
		PlayerCarousel:UpdateGuiTheme(theme)
	end
end

function ContextMenuGui:BuildPlayerCarousel(playersByProximity, theme)
	if not PlayerCarousel then
		local playerCarouselModule = require(AvatarMenuModules.PlayerCarousel)
		PlayerCarousel = playerCarouselModule.new(theme)
		PlayerCarousel.rbxGui.Parent = self.ContextMenuFrame.Content
	end

	PlayerCarousel:ClearPlayerEntries()

	if self.PlayerChangedConnection then
		self.PlayerChangedConnection:Disconnect()
	end
	self.PlayerChangedConnection = PlayerCarousel.PlayerChanged:Connect(function(player)
		if player then
			self.ContextMenuFrame.Content.NameTag.Text = player.Name
		else
			self.ContextMenuFrame.Content.NameTag.Text = ""
		end
		PlayerChangedEvent:Fire(player)
	end)

	for i = 1, #playersByProximity do
		PlayerCarousel:CreatePlayerEntry(playersByProximity[i][1], playersByProximity[i][2])
	end
	PlayerCarousel:FadeTowardsEdges()
	PlayerCarousel:AddCarouselDivider()
end

function ContextMenuGui:RemovePlayerEntry(player)
	if not PlayerCarousel then return end

	PlayerCarousel:RemovePlayerEntry(player)
end

function ContextMenuGui:GetBottomScreenPaddingConstant()
	return BOTTOM_SCREEN_PADDING_PERCENT
end

function ContextMenuGui:SetCloseMenuFunc(closeMenuFunc)
	self.CloseMenuFunc = closeMenuFunc
end

function ContextMenuGui:SwitchToPlayerEntry(player, dontTween)
	if not PlayerCarousel then return end
	PlayerCarousel:SwitchToPlayerEntry(player, dontTween)
end

function ContextMenuGui:OffsetPlayerEntry(offset)
	if not PlayerCarousel then return end
	PlayerCarousel:OffsetPlayerEntry(offset)
end

function ContextMenuGui:GetSelectedPlayer()
	if not PlayerCarousel then return nil end
	return PlayerCarousel:GetSelectedPlayer()
end

function ContextMenuGui.new()
	local obj = setmetatable({}, ContextMenuGui)

	obj.CloseMenuFunc = nil

	obj.ContextMenuFrame = nil
	obj.LastSetPlayerIcon = nil

	obj.PlayerChangedConnection = nil

	obj.SelectedPlayerChanged = PlayerChangedEvent.Event

	return obj
end

return ContextMenuGui.new()
