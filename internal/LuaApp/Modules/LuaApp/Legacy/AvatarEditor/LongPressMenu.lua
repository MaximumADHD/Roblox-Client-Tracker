local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local guiService = game:GetService('GuiService')

local utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local tween = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)
local Strings = require(Modules.LuaApp.Legacy.AvatarEditor.LocalizedStrings)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local AssetInfo = require(Modules.LuaApp.Legacy.AvatarEditor.AssetInfo)
local Urls = require(Modules.LuaApp.Legacy.AvatarEditor.Urls)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)

local AvatarEditorNewLocalizedStrings = Flags:GetFlag("AvatarEditorNewLocalizedStrings")

local shadeLayer = nil
local menuFrame = nil
local menuTitleLabel
local menuCancelButton = nil
local detailsMenuFrame = nil
local detailsNameLabel
local detailsScrollingFrame = nil
local detailsDescriptionLabel = nil
local detailsCreatorLabel
local detailsImageLabel
local detailsCloseButton = nil
local detailsCloseImageLabel

local this = {}

local characterManager = nil

local detailsMenuCount = 0

local function closeMenu()
	local tweenInfo = TweenInfo.new(0.13, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	if LayoutInfo.isLandscape then
		tween(menuFrame, tweenInfo, { Position = UDim2.new(0.5, -200, 1, 0) })
	else
		tween(menuFrame, tweenInfo, { Position = UDim2.new(0, 15, 1, 0) })
	end

	tween(shadeLayer, tweenInfo, { BackgroundTransparency = 1 }).Completed:Connect(function()
		shadeLayer.Visible = false
	end)
end


local function closeDetails()
	local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)

	if LayoutInfo.isLandscape then
		tween(detailsMenuFrame, tweenInfo, { Position = UDim2.new(0.5, -200, -0.5, -200) })
	else
		tween(detailsMenuFrame, tweenInfo, { Position = UDim2.new(0, 15, -0.7, -40) })
	end
	tween(shadeLayer, tweenInfo, { BackgroundTransparency = 1 }).Completed:Connect(function()
		shadeLayer.Visible = false
	end)
	detailsCloseImageLabel.ImageTransparency = 0.25
end


local openMenuCount = 0
local function openMenu(title, tableOfButtons, assetId)
	openMenuCount = openMenuCount + 1
	local myOpenMenuCount = openMenuCount

	menuTitleLabel.Text = title

	if assetId then
		utilities.fastSpawn(function()
			local assetInfo = AssetInfo.getAssetInfo(assetId)
			if assetInfo and openMenuCount == myOpenMenuCount then
				menuTitleLabel.Text = assetInfo.Name
			end
		end)
	end

	--destroy previous buttons
	for _,v in pairs(menuFrame:GetChildren()) do
		if v.Name == 'OptionButton' then
			v:Destroy()
		end
	end

	for i,v in pairs(tableOfButtons) do
		local button = Instance.new('TextButton')
		button.Name = 'OptionButton'
		button.ZIndex = menuCancelButton.ZIndex
		button.AutoButtonColor = false
		button.Size = UDim2.new(1, 0, 0, 48)
		button.Position = UDim2.new(0, 0, 0, 48 * i)
		button.BorderSizePixel = 0
		button.Text = v.text
		button.BackgroundColor3 = Color3.new(1, 1, 1)	--Color3.fromRGB(255,255,255)
		button.TextColor3 = Color3.new(.295, .295, .295)	--Color3.fromRGB(75,75,75)
		button.FontSize = 'Size18'
		button.Font = 'SourceSansLight'
		local divider = Instance.new('Frame')
		divider.ZIndex = button.ZIndex
		divider.BorderSizePixel = 0
		divider.BackgroundColor3 = Color3.new(.816, .816, .816) --Color3.fromRGB(208,208,208)
		divider.Size = UDim2.new(1, 0, 0, 1)
		divider.Position = UDim2.new(0, 0, 1, -1)
		divider.Parent = button
		button.Parent = menuFrame
		if v.func then
			button.MouseButton1Click:connect(v.func)
		end
	end
	menuFrame.Size = UDim2.new(1, -30, 0, 48 * (#tableOfButtons + 2))

	local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	if LayoutInfo.isLandscape then
		menuFrame.Size = UDim2.new(0, 400, 0, 48 * (#tableOfButtons + 2))
		menuFrame.Position = UDim2.new(0.5, -200, 1, 0)
		tween(menuFrame, tweenInfo, { Position = UDim2.new(0.5, -200, 1, -menuFrame.Size.Y.Offset) })
	else
		tween(menuFrame, tweenInfo, { Position = UDim2.new(0, 15, 1, -menuFrame.Size.Y.Offset) })
	end
	shadeLayer.Visible = true
	tween(shadeLayer, tweenInfo, { BackgroundTransparency = 0.45 })
end


local AvatarEditorUsesBrowserWindowCall = Flags:GetFlag("AvatarEditorUsesBrowserWindowCall")

function this:openDetails(assetId)
	if AvatarEditorUsesBrowserWindowCall then
		closeMenu()
		guiService:OpenNativeOverlay("Catalog", Urls.catalogUrlBase..assetId)
	else
		detailsMenuCount = detailsMenuCount + 1
		local myDetailsMenuCount = detailsMenuCount

		detailsCloseImageLabel.ImageTransparency = 0.7

		if assetId then
			utilities.fastSpawn(function()
				local assetInfo = characterManager.getCompleteAssetInfo(assetId)
				if assetInfo and detailsMenuCount == myDetailsMenuCount then
					if assetInfo.Name then
						detailsNameLabel.Text = assetInfo.Name
					end
					if assetInfo.Description then
						detailsDescriptionLabel.Text = assetInfo.Description
						detailsScrollingFrame.CanvasSize = UDim2.new(1, -30, 0, detailsDescriptionLabel.TextBounds.Y)
						detailsScrollingFrame.CanvasPosition = Vector2.new(0, 0)
					end
					if assetInfo.Creator and assetInfo.Creator.Name then
						detailsCreatorLabel.Text = 'By '..assetInfo.Creator.Name
					end
					detailsImageLabel.Image = Urls.assetImageUrl150..tostring(assetId)
				end
			end)
		end

		closeMenu()

		local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)

		if LayoutInfo.isLandscape then
			detailsMenuFrame.Size = UDim2.new(0, 400, 0, 400)
			detailsMenuFrame.Position = UDim2.new(0.5, -200, -0.5, -200)
			tween(detailsMenuFrame, tweenInfo, { Position = UDim2.new(0.5, -200, 0.5, -200) })
		else
			tween(detailsMenuFrame, tweenInfo, { Position = UDim2.new(0, 15, 0.15, 0) })
		end

		shadeLayer.Visible = true
		utilities.fastSpawn(function()
			wait()	--This is to make sure that the fade in happens after the fadeout of the menu, to overwrite that shade tween
			tween(shadeLayer, tweenInfo, { BackgroundTransparency = 0.45 })
		end)
	end
end


function this:showMenu(wearOrUnwearOption, assetId)
	utilities.fastSpawn(characterManager.getCompleteAssetInfo, assetId)
	openMenu('',
		{
			wearOrUnwearOption,
			{text = Strings:LocalizedString("ViewDetailsWord"), func = function() this:openDetails(assetId) end},
		},
		assetId
	)
end


function this:hideMenu()
	local tweenInfo = TweenInfo.new(0.13, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	if LayoutInfo.isLandscape then
		tween(menuFrame, tweenInfo, { Position = UDim2.new(0.5, -200, 1, 0) })
	else
		tween(menuFrame, tweenInfo, { Position = UDim2.new(0, 15, 1, 0) })
	end
	tween(shadeLayer, tweenInfo, { BackgroundTransparency = 1 }).Completed:Connect(function()
		shadeLayer.Visible = false
	end)
end


return function(inCharacterManager, inShadeLayer, inMenuFrame, inDetailsMenuFrame)
	shadeLayer = inShadeLayer
	characterManager = inCharacterManager
	menuFrame = inMenuFrame
	detailsMenuFrame = inDetailsMenuFrame

	menuTitleLabel = menuFrame:WaitForChild('TitleLabel')
	menuCancelButton = menuFrame:WaitForChild('CancelButton')
	detailsNameLabel = detailsMenuFrame:WaitForChild('NameLabel')
	detailsScrollingFrame = detailsMenuFrame:WaitForChild('ScrollingDescription')
	detailsDescriptionLabel = detailsScrollingFrame:WaitForChild('TextLabel')
	detailsCreatorLabel = detailsMenuFrame:WaitForChild('CreatorLabel')
	detailsImageLabel = detailsMenuFrame:WaitForChild('ImageLabel')
	detailsCloseButton = detailsMenuFrame:WaitForChild('CloseButton')
	detailsCloseImageLabel = detailsCloseButton:WaitForChild('ImageLabel')
	
	if AvatarEditorNewLocalizedStrings then
		menuCancelButton.Text = Strings:LocalizedString("CancelWord")
	end

	detailsCloseButton.MouseButton1Click:connect(function()
		closeDetails()
	end)
	detailsCloseButton.MouseButton1Down:connect(function()
		detailsCloseImageLabel.ImageTransparency = 0.25
	end)

	menuCancelButton.MouseButton1Click:connect(closeMenu)
	shadeLayer.MouseButton1Click:connect(function()
		closeMenu()
		closeDetails()
	end)

	return this
end

