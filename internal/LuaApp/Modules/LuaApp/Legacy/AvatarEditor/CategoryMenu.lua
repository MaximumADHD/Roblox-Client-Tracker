local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local SelectCategory = require(Modules.LuaApp.Actions.SelectCategory)
local CreateSignal = require(Modules.Common.Signal).new

local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local SpriteManager = require(Modules.LuaApp.Legacy.AvatarEditor.SpriteSheetManager)
local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local TweenController = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

local topMenuContainer = nil
local topMenuIndexIndicator = nil
local topMenuSelectedIcon = nil
local categoryButtonTemplate = nil

local this = {}
this.openCategoryMenuEvent = CreateSignal()
this.closeCategoryMenuEvent = CreateSignal()

local STATE = {
	OPEN = "Open";
	CLOSED = "Closed";
	HIDDEN = "Hidden";
}

local function getCurrentCategoryIndex()
	return AppState.Store:GetState().Category.CategoryIndex
end

local function getCurrentCategory()
	local categoryIndex = getCurrentCategoryIndex()
	if categoryIndex then
		return Categories[categoryIndex]
	end
	return nil
end

local function tweenTopMenuContainerState(state)
	if LayoutInfo.isLandscape then
		local tweenTime = 0.2
		local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)

		if state ~= STATE.HIDDEN then
			if state == STATE.CLOSED then
				TweenController(topMenuContainer, tweenInfo, { Size = UDim2.new(0, 98, 0, 98) })
			elseif state == STATE.OPEN then
				TweenController(topMenuContainer, tweenInfo, { Size = UDim2.new(0, 98, 1, -22) })
			end
		end
	else
		local tweenTime = 0.1
		local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)

		if state == STATE.HIDDEN then
			TweenController(topMenuContainer, tweenInfo, { Position = UDim2.new(0, -300, 0, 0) })
		elseif state == STATE.CLOSED then
			TweenController(topMenuContainer, tweenInfo, { Position = UDim2.new(0, -300, 0, -10) })
		elseif state == STATE.OPEN then
			local openTweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
			TweenController(topMenuContainer, openTweenInfo, { Position = UDim2.new(0, -357 + #Categories * 61, 0, -10) })
		end
	end
end


local function setTopMenuContainerState(state)
	if LayoutInfo.isLandscape then
		if state ~= STATE.HIDDEN then
			if state == STATE.CLOSED then
				topMenuContainer.Size = UDim2.new(0, 98, 0, 98)
			elseif state == STATE.OPEN then
				topMenuContainer.Size = UDim2.new(0, 98, 1, -22)
			end
		end
	else
		if state == STATE.HIDDEN then
			topMenuContainer.Position =UDim2.new(0, -300, 0, 0)
		elseif state == STATE.CLOSED then
			topMenuContainer.Position = UDim2.new(0, -300, 0, -10)
		elseif state == STATE.OPEN then
			topMenuContainer.Position = UDim2.new(0, -357 + #Categories * 61, 0, -10)
		end
	end
end


function this:openTopMenu()
	self.openCategoryMenuEvent:Fire() -- Fire event

	tweenTopMenuContainerState(STATE.OPEN)
	topMenuIndexIndicator.Visible = false
	topMenuSelectedIcon.Visible = false

	if LayoutInfo.isLandscape then
		local closeButton = Instance.new('ImageButton')
		closeButton.Name = 'CloseButton'
		closeButton.BackgroundTransparency = 1
		closeButton.Image = ''
		closeButton.AnchorPoint = Vector2.new(0.5, 0.5)
		closeButton.Position = UDim2.new(0.5, 0, 0, 45)
		closeButton.Size = UDim2.new(0, 90, 0, 90)
		closeButton.ZIndex = 7
		local closeButtonImage = Instance.new('ImageLabel', closeButton)
		closeButtonImage.BackgroundTransparency = 1
		closeButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
		closeButtonImage.Position = UDim2.new(0, 45, 0, 45)
		closeButtonImage.Size = UDim2.new(0, 28, 0, 28)
		closeButtonImage.ZIndex = 7
		SpriteManager.equip(closeButtonImage, 'ic-close')

		closeButton.MouseButton1Click:connect(function()
		  this:closeTopMenu()
		end)

		local tweenInfo = TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
		TweenController(closeButtonImage, tweenInfo, { ImageTransparency = 0 }, { ImageTransparency = 1 })

		closeButton.Parent = topMenuContainer

	end

	local currentCategory = getCurrentCategory()
	for index, category in pairs(Categories) do
		local categoryButton = categoryButtonTemplate:clone()
		categoryButton.Name = 'CategoryButton'..category.name

		if LayoutInfo.isLandscape then
			categoryButton.Position = UDim2.new(0.5, -45, 0, 90 * (index - 1))
			categoryButton.TextLabel.Text = category.titleLandscape or category.title

			if category == currentCategory then
				SpriteManager.equip(categoryButton.CircleLabel, "icon-border-on")
				SpriteManager.equip(categoryButton.IconLabel, category.selectedIconImageName)
				categoryButton.TextLabel.TextColor3 = Color3.fromRGB(255, 161, 47)
			else
				SpriteManager.equip(categoryButton.CircleLabel, "icon-border")
				SpriteManager.equip(categoryButton.IconLabel, category.iconImageName)
			end

			categoryButton.CircleLabel.ImageTransparency = 1
			categoryButton.IconLabel.ImageTransparency = 1
			categoryButton.TextLabel.TextTransparency = 1
			delay((index-1)/6*0.2, function()
				if categoryButton:IsDescendantOf(game) then
					local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
					local imageGoals = { ImageTransparency = 0 }
					local textGoals = { TextTransparency = 0 }
					TweenController(categoryButton.CircleLabel, tweenInfo, imageGoals)
					TweenController(categoryButton.IconLabel, tweenInfo, imageGoals)
					TweenController(categoryButton.TextLabel, tweenInfo, textGoals)
				end
			end)
		else
			categoryButton.Position = UDim2.new(1, -(#Categories - index + 1) * 61, .5, -26)

			if category == currentCategory then
				SpriteManager.equip(categoryButton, "gr-orange-circle")
				SpriteManager.equip(categoryButton.IconLabel, category.selectedIconImageName)
			else
				SpriteManager.equip(categoryButton, "gr-category-selector")
				SpriteManager.equip(categoryButton.IconLabel, category.iconImageName)
			end
		end

		categoryButton.Visible = true
		categoryButton.MouseButton1Click:connect(function()
			if getCurrentCategoryIndex() == index then
				this:closeTopMenu()
			else
				AppState.Store:Dispatch(SelectCategory(index))
			end
		end)
		categoryButton.Parent = LayoutInfo.isLandscape and topMenuContainer.CategoryScroller or topMenuContainer
	end
	if LayoutInfo.isLandscape then
		topMenuContainer.CategoryScroller.CanvasSize = UDim2.new(1, 0, 0, #Categories * 90)
	end
end


function this:closeTopMenu()
	self.closeCategoryMenuEvent:Fire() -- Fire event

	local index = 0
	local currentCategory = getCurrentCategory()
	for i, category in pairs(Categories) do		-- We need to index of the category, this is how we find it.
		if currentCategory == category then
			index = i
			break
		end
	end

	tweenTopMenuContainerState(STATE.CLOSED)
	topMenuIndexIndicator.Visible = true

	if #Categories == 4 then
		topMenuIndexIndicator.Rotation = (index - 1) * 90	--((index-1)/#Categories)*360
	else
		SpriteManager.equip(topMenuIndexIndicator, 'ring'..((index - 1) % 5 + 1))
	end
	topMenuSelectedIcon.Visible = true
	SpriteManager.equip(topMenuSelectedIcon, currentCategory.iconImageName)
	local categoryParent = LayoutInfo.isLandscape and topMenuContainer.CategoryScroller or topMenuContainer
	for _, child in pairs(categoryParent:GetChildren()) do
		if child and child.Parent and string.sub(child.Name, 1, 14) == 'CategoryButton' then
			child:Destroy()
		end
	end
	if LayoutInfo.isLandscape then
		local closeButton = topMenuContainer:FindFirstChild('CloseButton')
		if closeButton then
			local tweenInfo = TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
			local propGoals = { ImageTransparency = 1 }
			TweenController(closeButton, tweenInfo, propGoals).Completed:Connect(function()
				closeButton:Destroy()
			end)
		end
	end
end

local function initTopMenu()
	if LayoutInfo.isLandscape then
		topMenuContainer.Size = UDim2.new(0, 98, 0, 98)
		topMenuContainer.Position = UDim2.new(0, 11, 0, 11)
		topMenuContainer.BackgroundFill.Visible = false

		topMenuIndexIndicator.AnchorPoint = Vector2.new(0.5, 0.5)
		topMenuIndexIndicator.Position = UDim2.new(0.5, 0, 0.5, 0)
		topMenuIndexIndicator.Size = UDim2.new(0, 60, 0, 60)

		topMenuSelectedIcon.AnchorPoint = Vector2.new(0.5, 0.5)
		topMenuSelectedIcon.Position = UDim2.new(0.5, 0, 0.5, 0)

		topMenuContainer.RoundedEnd.AnchorPoint = Vector2.new(0, 0)
		topMenuContainer.RoundedEnd.Position = UDim2.new(0, 0, 0, 0)
		topMenuContainer.RoundedEnd.Size = UDim2.new(1, 0, 1, 0)
		topMenuContainer.RoundedEnd.ScaleType = 'Slice'
		topMenuContainer.RoundedEnd.SliceCenter = Rect.new(48, 48, 48, 48)
		SpriteManager.equip(topMenuContainer.RoundedEnd, 'ctn-primary nav')

		local categoryScroller = Instance.new('ScrollingFrame')
		categoryScroller.Name = 'CategoryScroller'
		categoryScroller.ScrollBarThickness = 0
		categoryScroller.BackgroundTransparency = 1
		categoryScroller.BorderSizePixel = 0
		categoryScroller.Position = UDim2.new(0, 0, 0, 90)
		categoryScroller.Size = UDim2.new(1, 0, 1, -135)
		categoryScroller.ZIndex = 7

		local categoryScrollerSizeConstraint = Instance.new('UISizeConstraint')
		categoryScrollerSizeConstraint.Parent = categoryScroller
		categoryScroller.Parent = topMenuContainer
	end
end

local function init(state)
	if state.FullView then
		setTopMenuContainerState(STATE.HIDDEN, 0)
	else
		setTopMenuContainerState(STATE.CLOSED, 0)
	end

	local savedCategory = state.Category.CategoryIndex
	if savedCategory then
		AppState.Store:Dispatch(SelectCategory(savedCategory))
	else
		AppState.Store:Dispatch(SelectCategory(1))
	end
end


local function update(newState, oldState)
	if newState.Category.CategoryIndex ~= oldState.Category.CategoryIndex then
		this:closeTopMenu()
	end
	if newState.FullView ~= oldState.FullView then
		if newState.FullView then
			tweenTopMenuContainerState(STATE.HIDDEN)
		else
			tweenTopMenuContainerState(STATE.CLOSED)
		end
	end
end


return function(
	inTopMenuContainer,
	inCategoryButtonTemplate)

	topMenuContainer = inTopMenuContainer
	categoryButtonTemplate = inCategoryButtonTemplate

	topMenuIndexIndicator = topMenuContainer.IndexIndicator
	topMenuSelectedIcon = topMenuContainer.SelectedIcon

	initTopMenu()

	topMenuContainer.MouseButton1Click:connect(function()
		this:openTopMenu()
	end)

	init(AppState.Store:GetState())
	AppState.Store.Changed:Connect(update)

	return this
end

