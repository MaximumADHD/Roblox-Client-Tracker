local GuiService = game:GetService("GuiService")

local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local SetConsoleMenuLevel = require(Modules.LuaApp.Actions.SetConsoleMenuLevel)
local SelectCategory = require(Modules.LuaApp.Actions.SelectCategory)

local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfoConsole)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local TweenController = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

local function createCategoryMenu(container)
	local this = {}

	local storeChangedCn = nil

	local categoryButtons = {}

	local currentCategoryIndex = nil

	local CategoryMenu = Utilities.create'Frame'
	{
		Name = 'CategoryMenu';
		Position = LayoutInfo.CategoryMenuPosition;
		Size = UDim2.new(0, 360, 1, 0);
		BackgroundTransparency = 1;
		Parent = container;
	}

	Utilities.create'UIListLayout'
	{
		Name = 'CategoryMenuUIListLayout';
		Padding = UDim.new(0, LayoutInfo.CategoryButtonsPadding);
		Parent = CategoryMenu;
	}

	local buttonSelector = Utilities.create'ImageLabel'
	{
		Name = 'CategoryMenuSelector';
		Image = LayoutInfo.CategoryButtonSelectorImage;
		Position = UDim2.new(0, -7, 0, -7);
		Size = UDim2.new(1, 14, 1, 14);
		BackgroundTransparency = 1;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(31, 31, 63, 63);
	}

	local function tweenCategoryMenuState(isFullView)
		local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

		if isFullView then
			TweenController(CategoryMenu, tweenInfo, { Position = LayoutInfo.CategoryMenuFullviewPosition })
		else
			TweenController(CategoryMenu, tweenInfo, { Position = LayoutInfo.CategoryMenuPosition })
		end
	end

	-- Navigate on category button to highlight categoryButton
	local function highlightCategoryButton(index)
		local categoryButton = categoryButtons[index]
		local category = Categories[index]
		categoryButton.Image = LayoutInfo.CategoryButtonImageSelected
		categoryButton.CategoryIcon.Image = category.selectedIconImageConsole
		categoryButton.CategoryIcon.ImageTransparency = 0
		categoryButton.CategoryText.TextColor3 = LayoutInfo.GrayTextColor
		categoryButton.CategoryText.TextTransparency = 0
	end

	-- Default categoryButton style
	local function defaultCategoryButton(index, categoryButton)
		local category = Categories[index]
		categoryButton.Image = LayoutInfo.CategoryButtonImageDefault
		categoryButton.CategoryIcon.Image = category.iconImageConsole
		categoryButton.CategoryIcon.ImageTransparency = 0
		categoryButton.CategoryText.TextColor3 = LayoutInfo.WhiteTextColor
		categoryButton.CategoryText.TextTransparency = 0
	end

	-- Inactive categoryButton style
	local function inactiveCategoryButton(categoryButton)
		categoryButton.CategoryIcon.ImageTransparency = 0.5
	end

	-- Open one of the categories
	local function openCategory()
		local tweenInfo = TweenInfo.new(LayoutInfo.DefaultTweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		local sizeGoals = {
			Size = LayoutInfo.CategoryButtonSmallSize
		}
		local textStarts = {
			TextTransparency = 0
		}
		local textGoals = {
			TextTransparency = 1
		}

		for i = 1, #categoryButtons do
			local categoryButton = categoryButtons[i]
			TweenController(categoryButton, tweenInfo, sizeGoals)
			TweenController(categoryButton.CategoryText, tweenInfo, textGoals, textStarts)
			if currentCategoryIndex ~= i then
				inactiveCategoryButton(categoryButton)
			end
		end
	end

	-- Close category and back to navigation between all categories
	local function closeCategory()
		local tweenInfo = TweenInfo.new(LayoutInfo.DefaultTweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		local sizeGoals = {
			Size = LayoutInfo.CategoryButtonDefaultSize
		}
		local textStarts = {
			TextTransparency = 1
		}
		local textGoals = {
			TextTransparency = 0
		}

		for i = 1, #categoryButtons do
			local categoryButton = categoryButtons[i]
			TweenController(categoryButton, tweenInfo, sizeGoals)
			TweenController(categoryButton.CategoryText, tweenInfo, textGoals, textStarts)
			if currentCategoryIndex ~= i then
				defaultCategoryButton(i, categoryButton)
			end
		end
	end

	local function selectCategory(index)
		if categoryButtons[currentCategoryIndex] then
			defaultCategoryButton(currentCategoryIndex, categoryButtons[currentCategoryIndex])
		end
		highlightCategoryButton(index)
		currentCategoryIndex = index
	end

	-- Select current category when initializes or jumps back from tabs
	local function selectCurrentCategory()
		closeCategory()

		local newCurrentCategoryIndex = AppState.Store:GetState().Category.CategoryIndex or 1
		if newCurrentCategoryIndex == currentCategoryIndex then
			highlightCategoryButton(currentCategoryIndex)
		end

		-- Select new button, if newCurrentCategoryIndex ~= currentCategoryIndex, SelectCategory action will be dispatched
		GuiService.SelectedCoreObject = categoryButtons[newCurrentCategoryIndex]
	end

	local function createCategoryButton(container, index, image, title)
		local CategoryButton = Utilities.create'ImageButton'
		{
			Name = 'Category'..index;
			Size = LayoutInfo.CategoryButtonDefaultSize;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = LayoutInfo.CategoryButtonImageDefault;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(8, 8, 9, 9);
			Parent = container;
			Selectable = true;
			SelectionImageObject = buttonSelector;
		}

		Utilities.create'ImageLabel'
		{
			Name = 'CategoryIcon';
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, 24, 0.5, 0);
			Size = LayoutInfo.CategoryIconSize;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = image;
			ImageTransparency = 0;
			Parent = CategoryButton;
		}

		Utilities.create'TextLabel'
		{
			Name = 'CategoryText';
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, 80, 0.5, 0);
			Size = LayoutInfo.CategoryTextSize;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Text = title;
			TextXAlignment = 'Left';
			TextColor3 = LayoutInfo.WhiteTextColor;
			TextTransparency = 0;
			TextSize = LayoutInfo.ButtonFontSize;
			Font = LayoutInfo.RegularFont;
			Parent = CategoryButton;
		}

		CategoryButton.SelectionGained:connect(function()
			if currentCategoryIndex ~= index then
				AppState.Store:Dispatch(SelectCategory(index))
			end
		end)

		CategoryButton.MouseButton1Click:connect(function()
			AppState.Store:Dispatch(SetConsoleMenuLevel(LayoutInfo.ConsoleMenuLevel.TabList))
		end)

		return CategoryButton
	end

	local function createCategoryButtons()
		for index, category in pairs(Categories) do
			local categoryButton = createCategoryButton(CategoryMenu, index, category.iconImageConsole, category.title)
			table.insert(categoryButtons, categoryButton)
		end
	end

	local function resetCategoryMenu()
		currentCategoryIndex = nil
		for i = 1, #categoryButtons do
			local categoryButton = categoryButtons[i]
			defaultCategoryButton(i, categoryButton)
		end
	end

	local function update(newState, oldState)
		if newState.ConsoleMenuLevel ~= oldState.ConsoleMenuLevel then
			if newState.ConsoleMenuLevel == LayoutInfo.ConsoleMenuLevel.CategoryMenu then
				selectCurrentCategory()
			elseif newState.ConsoleMenuLevel == LayoutInfo.ConsoleMenuLevel.TabList and
				oldState.ConsoleMenuLevel == LayoutInfo.ConsoleMenuLevel.CategoryMenu then
				openCategory()
			end
		end

		if newState.Category.CategoryIndex ~= oldState.Category.CategoryIndex then
			selectCategory(newState.Category.CategoryIndex)
		end

		if newState.FullView ~= oldState.FullView then
			tweenCategoryMenuState(newState.FullView)
		end
	end

	function this:SelectNextPage()
		local nextIndex = math.min(currentCategoryIndex + LayoutInfo.CategoryButtonRowsPerPage, #categoryButtons)
		GuiService.SelectedCoreObject = categoryButtons[nextIndex]
	end

	function this:SelectPreviousPage()
		local prevIndex = math.max(currentCategoryIndex - LayoutInfo.CategoryButtonRowsPerPage, 1)
		GuiService.SelectedCoreObject = categoryButtons[prevIndex]
	end

	function this:Focus()
		storeChangedCn = AppState.Store.Changed:Connect(update)
		GuiService:AddSelectionParent("CategoryMenu", CategoryMenu)
	end

	function this:RemoveFocus()
		storeChangedCn = Utilities.disconnectEvent(storeChangedCn)
		GuiService:RemoveSelectionGroup("CategoryMenu")
	end

	function this:Hide()
		resetCategoryMenu()
	end

	createCategoryButtons()

	return this
end

return createCategoryMenu
