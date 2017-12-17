local GuiService = game:GetService("GuiService")

local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local SetConsoleMenuLevel = require(Modules.LuaApp.Actions.SetConsoleMenuLevel)
local SelectCategoryTab = require(Modules.LuaApp.Actions.SelectCategoryTab)

local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfoConsole)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local TweenController = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

local BUTTON_INTERVAL = LayoutInfo.CategoryButtonDefaultSize.Y.Offset + LayoutInfo.CategoryButtonsPadding

local function createTabList(container, pageManager)
	local this = {}

	local tabButtons = {}
	local selectedTabIndex = 1

	local SELECTOR_TOP_MIN_DISTANCE = LayoutInfo.SelectorTopMinDistance
	local SELECTOR_BOTTOM_MIN_DISTANCE = LayoutInfo.SelectorBottomMinDistance

	local storeChangedCn = nil
	local openCategoryMenuConn = nil
	local closeCategoryMenuConn = nil

	local TabList = Utilities.create'ScrollingFrame'
	{
		Name = 'TabList';
		Position = LayoutInfo.TabListPosition;
		Size = UDim2.new(0, 360, 1, 0);
		CanvasSize = UDim2.new(1, 0, 0, 0);
		CanvasPosition = Vector2.new(0, 0);
		BackgroundTransparency = 1;
		ScrollingEnabled = false;
		Selectable = false;
		BorderSizePixel = 0;
		ScrollBarThickness = 0;
		Parent = container;
		Visible = false;
	}

	local buttonSelector = Utilities.create'ImageLabel'
	{
		Name = 'TabSelector';
		Image = LayoutInfo.CategoryButtonSelectorImage;
		Position = UDim2.new(0, -7, 0, -7);
		Size = UDim2.new(1, 14, 1, 14);
		BackgroundTransparency = 1;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(31, 31, 63, 63);
	}

	local function getCategoryIndex()
		return AppState.Store:GetState().Category.CategoryIndex
	end

	local function tweenTabListState(isFullView)
		local tweenInfo = TweenInfo.new(LayoutInfo.DefaultTweenTime,
			Enum.EasingStyle.Quad,
			Enum.EasingDirection.InOut,
			0, false, 0)

		if isFullView then
			TweenController(TabList, tweenInfo, { Position = LayoutInfo.TabListFullviewPosition })
		else
			TweenController(TabList, tweenInfo, { Position = LayoutInfo.TabListPosition })
		end
	end

	-- Default tabButton style
	local function defaultTabButton(tabButton, tweenTransparency)
		tabButton.Image = LayoutInfo.CategoryButtonImageDefault
		tabButton.TabText.TextColor3 = LayoutInfo.WhiteTextColor

		if tweenTransparency then
			local tweenInfo = TweenInfo.new(
				LayoutInfo.DefaultTweenTime,
				Enum.EasingStyle.Quad,
				Enum.EasingDirection.InOut, 0, false, 0)

			TweenController(tabButton, tweenInfo, { ImageTransparency = 0 }, { ImageTransparency = 1 })
			TweenController(tabButton.TabText, tweenInfo, { TextTransparency = 0 }, { TextTransparency = 1 })
		else
			tabButton.TabText.TextTransparency = 0
		end
	end

	-- Navigate on tabButton to highlight tabButton
	local function highlightTabButton(tabButton, tweenTransparency)
		tabButton.Image = LayoutInfo.CategoryButtonImageSelected
		tabButton.TabText.TextColor3 = LayoutInfo.GrayTextColor

		if tweenTransparency then
			local tweenInfo = TweenInfo.new(
				LayoutInfo.DefaultTweenTime,
				Enum.EasingStyle.Quad,
				Enum.EasingDirection.InOut, 0, false, 0)

			TweenController(tabButton, tweenInfo, { ImageTransparency = 0 }, { ImageTransparency = 1 })
			TweenController(tabButton.TabText, tweenInfo, { TextTransparency = 0 }, { TextTransparency = 1 })
		else
			tabButton.TabText.TextTransparency = 0
		end
	end

	-- Inactive tabButton style
	local function inactiveTabButton(tabButton)
		tabButton.TabText.TextTransparency = 0.5
	end

	-- Active TabList style
	local function activeTabList(tweenTransparency)
		for i = 1, #tabButtons do
			if selectedTabIndex ~= i then
				defaultTabButton(tabButtons[i], tweenTransparency)
			else
				highlightTabButton(tabButtons[i], tweenTransparency)
			end
		end
	end

	-- Inactive Tablist style
	local function inactiveTabList()
		for i = 1, #tabButtons do
			if selectedTabIndex ~= i then
				inactiveTabButton(tabButtons[i])
			end
		end
	end

	-- Open one of the tabButtons
	local function openTab()
		inactiveTabList()
		GuiService.SelectedCoreObject = nil

		-- Select first gui in pageManager
		pageManager:focusOnCard()
	end

	-- Close tab and back to navigation between all tabButtons
	local function closeTab(tweenTransparency)
		activeTabList(tweenTransparency)
		GuiService.SelectedCoreObject = tabButtons[selectedTabIndex]
	end

	local function getCanvasPositionGoal(tabButton, tabIndex)
		local topDistance = tabButton.AbsolutePosition.Y
		local bottomDistance = container.AbsoluteSize.Y - topDistance - tabButton.AbsoluteSize.Y
		local canvasPositionGoal = TabList.CanvasPosition

		if bottomDistance < SELECTOR_BOTTOM_MIN_DISTANCE then
			canvasPositionGoal = Vector2.new(0, (tabIndex - 6) * BUTTON_INTERVAL)
		elseif topDistance < SELECTOR_TOP_MIN_DISTANCE then
			canvasPositionGoal = Vector2.new(0, (tabIndex - 1) * BUTTON_INTERVAL)
		end
		return canvasPositionGoal
	end

	-- Check if TabList needs to scroll up/down
	local function tweenCanvas()
		local canvasPositionGoal = getCanvasPositionGoal(GuiService.SelectedCoreObject, selectedTabIndex)
		if canvasPositionGoal ~= TabList.CanvasPosition then
			local tweenInfo =
			TweenInfo.new(
				LayoutInfo.DefaultTweenTime,
				Enum.EasingStyle.Quad,
				Enum.EasingDirection.InOut, 0, false, 0)
			TweenController(TabList, tweenInfo, { CanvasPosition = canvasPositionGoal })
		end
	end

	local function selectTab(newTabButton, oldTabButton)
		if oldTabButton then
			defaultTabButton(oldTabButton)
		end
		highlightTabButton(newTabButton)
		tweenCanvas()
	end

	local function createTabButton(index, title)
		local TabButton = Utilities.create'ImageButton'
		{
			Name = 'Tab'..index;
			Position = UDim2.new(0, 0, 0, index * BUTTON_INTERVAL);
			Size = LayoutInfo.CategoryButtonDefaultSize;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = LayoutInfo.CategoryButtonImageDefault;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(8, 8, 9, 9);
			Selectable = true;
			SelectionImageObject = buttonSelector;
			Parent = TabList;
		}

		Utilities.create'TextLabel'
		{
			Name = 'TabText';
			Position = UDim2.new(0, 20, 0, 0);
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Text = title;
			TextXAlignment = 'Left';
			TextColor3 = LayoutInfo.WhiteTextColor;
			TextSize = LayoutInfo.ButtonFontSize;
			Font = LayoutInfo.RegularFont;
			Parent = TabButton;
		}

		TabButton.SelectionGained:connect(function()
			if selectedTabIndex ~= index then
				local categoryIndex = getCategoryIndex()
				local canvasPosition = getCanvasPositionGoal(TabButton, index)
				AppState.Store:Dispatch(SelectCategoryTab(categoryIndex, index, canvasPosition))
			end
		end)

		TabButton.MouseButton1Click:connect(function()
			if pageManager:hasAssets() then
				AppState.Store:Dispatch(SetConsoleMenuLevel(LayoutInfo.ConsoleMenuLevel.AssetsPage))
			end
		end)

		return TabButton
	end

	local function createTabButtons(categoryIndex)
		local tabPages = Categories[categoryIndex].pages

		-- Remove redundant tabButtons
		while #tabButtons > #tabPages do
			tabButtons[#tabButtons]:Destroy()
			table.remove(tabButtons)
		end

		if #tabPages < 1 then
			return
		end

		-- Update existing tabButtons or create new tabButtons
		for i = 1, #tabPages do
			if tabButtons[i] then
				tabButtons[i].TabText.Text = tabPages[i].titleConsole or tabPages[i].title
			else
				local tabButton = createTabButton(i, tabPages[i].titleConsole or tabPages[i].title)
				table.insert(tabButtons, tabButton)
			end
		end
	end

	local function openCategoryMenu()
		TabList.Visible = true
		closeTab(true)
	end

	local function closeCategoryMenu()
		TabList.Visible = false
	end

	local function update(newState, oldState)
		if newState.ConsoleMenuLevel ~= oldState.ConsoleMenuLevel then
			if newState.ConsoleMenuLevel == LayoutInfo.ConsoleMenuLevel.CategoryMenu then
				closeCategoryMenu()
			elseif newState.ConsoleMenuLevel == LayoutInfo.ConsoleMenuLevel.TabList then
				if oldState.ConsoleMenuLevel == LayoutInfo.ConsoleMenuLevel.CategoryMenu then
					openCategoryMenu()
				elseif oldState.ConsoleMenuLevel == LayoutInfo.ConsoleMenuLevel.AssetsPage then
					closeTab()
				end
			elseif newState.ConsoleMenuLevel == LayoutInfo.ConsoleMenuLevel.AssetsPage then
				openTab()
			end
		end

		if newState.Category.CategoryIndex ~= oldState.Category.CategoryIndex then
			local categoryIndex = newState.Category.CategoryIndex
			createTabButtons(categoryIndex)

			local tabsNum = #(Categories[categoryIndex].pages)
			local canvasSizeY = math.max(TabList.AbsoluteWindowSize.Y,
				(tabsNum - 6) * BUTTON_INTERVAL + TabList.AbsoluteWindowSize.Y)
			TabList.CanvasSize = UDim2.new(1, 0, 0, canvasSizeY);

			local tabInfo = newState.Category.TabsInfo[categoryIndex]
			if tabInfo and tabInfo.TabIndex and tabInfo.Position then
				selectedTabIndex = tabInfo.TabIndex
				TabList.CanvasPosition = tabInfo.Position
			else
				selectedTabIndex = 1
				TabList.CanvasPosition = Vector2.new(0, 0)
			end
		end

		if newState.Category.TabsInfo ~= oldState.Category.TabsInfo then
			local oldTabIndex = selectedTabIndex
			local tabInfo = newState.Category.TabsInfo[newState.Category.CategoryIndex]
			if tabInfo and tabInfo.TabIndex and tabInfo.Position then
				selectedTabIndex = tabInfo.TabIndex
			else
				selectedTabIndex = 1
			end
			selectTab(tabButtons[selectedTabIndex], tabButtons[oldTabIndex])
		end

		if newState.FullView ~= oldState.FullView then
			tweenTabListState(newState.FullView)
		end
	end

	function this:SelectNextPage()
		local nextIndex = math.min(selectedTabIndex + LayoutInfo.CategoryButtonRowsPerPage, #tabButtons)
		GuiService.SelectedCoreObject = tabButtons[nextIndex]
	end

	function this:SelectPreviousPage()
		local prevIndex = math.max(selectedTabIndex - LayoutInfo.CategoryButtonRowsPerPage, 1)
		GuiService.SelectedCoreObject = tabButtons[prevIndex]
	end

	function this:Focus()
		storeChangedCn = AppState.Store.Changed:Connect(update)
		GuiService:AddSelectionParent("Tablist", TabList)
	end

	function this:RemoveFocus()
		storeChangedCn = Utilities.disconnectEvent(storeChangedCn)
		GuiService:RemoveSelectionGroup("Tablist")
	end

	return this
end

return createTabList
