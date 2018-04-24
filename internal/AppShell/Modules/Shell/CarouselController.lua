--[[
				// CarouselController.lua

				// Controls how the data is updated for a carousel view
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local ContextActionService = game:GetService('ContextActionService')
local GuiService = game:GetService('GuiService')

local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local GameData = require(ShellModules:FindFirstChild('GameData'))


local function createCarouselController(view, disableBumperBinds, FrontPageIndex, EndPageIndex, AbsoluteDataIndex)
	disableBumperBinds = disableBumperBinds or false
	local this = {}

	local PAGE_SIZE = 25  -- Can only be 10, 25, 50, 100
	local MAX_PAGES = 2

	local sortCollection = nil
	local sortData = nil
	local currentFocusData = nil
	local absoluteDataIndex = tonumber(AbsoluteDataIndex) or 1
	local guiServiceChangedCn = nil

	local loadBuffer = 10

	local pages = {}
	local pageViews = {}
	local isLoading = false
	local frontPageIndex = tonumber(FrontPageIndex) or 1
	local endPageIndex = tonumber(EndPageIndex) or 0

	local isCuratedSort = false

	local reachFront = true --For all sorts to mark if there's no previous page
	local reachEnd = false --For all sorts to mark if there's no next page

	-- Events
	this.NewItemSelected = Utility.Signal()

	local function getNewItem(placeId)
		local data = GameData:GetGameData(placeId)

		if data then
			local item = Utility.Create'ImageButton'
			{
				Name = "CarouselViewImage";
				BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
				BorderSizePixel = 0;
				SoundManager:CreateSound('MoveSelection');
			}

			local overrideSelection = view:GetSelectionImageObject()
			if overrideSelection then
				item.SelectionImageObject = overrideSelection
			end

			local thumbnailLoader = ThumbnailLoader:Create(item, data.IconId, ThumbnailLoader.Sizes.Medium, ThumbnailLoader.AssetType.SquareIcon)
			spawn(function()
				thumbnailLoader:LoadAsync(true, false, nil)
			end)

			local itemInfo = {
				item = item;
				thumbnailLoader = thumbnailLoader;
			}

			itemInfo.PlaceId = placeId

			local transparencyTweens = {}

			function itemInfo:AnimateTransparency(initial, final, duration)
				Utility.CancelTweens(transparencyTweens)

				local finished = nil
				if initial < final then
					thumbnailLoader:SetTransparency(final)
				else
					finished = function()
						thumbnailLoader:SetTransparency(final)
					end
				end

				table.insert(transparencyTweens,
					Utility.PropertyTweener(
						item,
						'BackgroundTransparency',
						initial,
						final,
						duration,
						Utility.EaseOutQuad,
						true))

				table.insert(transparencyTweens,
					Utility.PropertyTweener(
						item,
						'ImageTransparency',
						initial,
						final,
						duration,
						Utility.EaseOutQuad,
						true,
						finished))
			end

			return itemInfo
		end
	end

	-- TODO: Remove this when caching is finished. Doing it this way is going to leave the old
	-- data issues in place with the carousel
	local function setInternalData(page)
		if not page then
			return {}
		end

		local newData = {}
		newData.PreviousUrl = page.PreviousUrl
		newData.NextUrl = page.NextUrl

		local placeIds = page:GetPagePlaceIds()
		local names = page:GetPagePlaceNames()
		local voteData = page:GetPageVoteData()
		local iconIds = page:GetPageIconIds()
		local creatorNames = page:GetCreatorNames()
		local creatorUserIds = page:GetPageCreatorUserIds()

		for i = 1, #page.Data do
			local gameEntry = {
				Name = names[i];
				PlaceId = placeIds[i];
				IconId = iconIds[i];
				VoteData = voteData[i];
				CreatorName = creatorNames[i];
				CreatorUserId = creatorUserIds[i];
				-- Description and IsFavorites needs to be queried for each game when needed
				Description = nil;
				IsFavorited = nil;
				GameData = nil;
			}
			table.insert(newData, gameEntry)
		end

		return newData
	end


	local onViewFocusChanged;

	local function createPageView(page)
		local pageView = {}
		local viewItems = {}

		for i = 1, #page do
			local itemData = page[i]
			local viewItemInfo = getNewItem(itemData)
			if viewItemInfo then
				viewItemInfo.item.MouseButton1Click:connect(function()
					if itemData then
						EventHub:dispatchEvent(EventHub.Notifications["OpenGameDetail"], itemData)
					end
				end)
				table.insert(viewItems, viewItemInfo)
			end
		end

		function pageView:LockFirstItem()
			if viewItems and viewItems[1] and viewItems[1].item then
				viewItems[1].item.NextSelectionLeft = viewItems[1].item
			end
		end
		function pageView:UnlockFirstItem()
			if viewItems and viewItems[1] and viewItems[1].item then
				viewItems[1].item.NextSelectionLeft = nil
			end
		end
		function pageView:LockLastItem()
			if viewItems and viewItems[#viewItems] and viewItems[#viewItems].item then
				viewItems[#viewItems].item.NextSelectionRight = viewItems[#viewItems].item
			end
		end
		function pageView:UnlockLastItem()
			if viewItems and viewItems[#viewItems] and viewItems[#viewItems].item then
				viewItems[#viewItems].item.NextSelectionRight = nil
			end
		end
		function pageView:GetCount()
			return #viewItems
		end
		function pageView:GetItems()
			return viewItems
		end
		function pageView:Destroy()
			for i,itemInfo in pairs(viewItems) do
				viewItems[i] = nil
				itemInfo.item:Destroy()
			end
		end

		return pageView
	end

	local function getPagesRangeIndex()
		local lowIndex, highIndex
			for index, page in pairs(pages) do
				if not lowIndex or lowIndex > index then
					lowIndex = index
				end

				if not highIndex or highIndex < index then
					highIndex = index
				end
			end

			return lowIndex, highIndex
	end

	-- For all sorts except curated sort
	local function getPageAsync(pageIndex)
		if pageIndex < 1 then
			return nil
		end

		--Caching is done inside sortsdata
		local startIndex = (pageIndex - 1) * PAGE_SIZE
		local newPageData = sortCollection:GetSortAsync(startIndex, PAGE_SIZE)
		if not newPageData then
			return nil
		end

		if #newPageData > 0 then
			pages[pageIndex] = newPageData
		end

		return pages[pageIndex]
	end

	-- For curated sort
	local function getNextPageAsync(pageIndex)
		--Caching is done inside sortsdata
		local newPageData = sortCollection:GetCuratedSortAsync(pageIndex, PAGE_SIZE)

		-- No data in current page
		if not newPageData or #newPageData == 0 then
			reachEnd = true
			return nil
		end

		-- Current page is last page
		if #newPageData < PAGE_SIZE then
			reachEnd = true
		end

		pages[pageIndex] = newPageData
		return pages[pageIndex]
	end

	-- For curated sort
	local function getPreviousPageAsync(pageIndex)
		-- pageIndex should be >= 0
		-- When pageIndex == 0, means hasPrevPage is true in page1. Then we should fetch page0, insert front, and move all page index +1
		if pageIndex < 0 then
			reachFront = true
			return nil
		end

		--Caching is done inside sortsdata
		local newPageData, hasPrevPage = sortCollection:GetCuratedSortAsync(pageIndex, PAGE_SIZE, true)

		-- No data in current page
		if not newPageData or #newPageData == 0 then
			reachFront = true
			return nil
		end

		-- Current page is first page
		if not hasPrevPage or #newPageData < PAGE_SIZE then
			reachFront = true
		end

		if pageIndex == 0 then
			--Move all pages to their next pages
			local lowIndex, highIndex = getPagesRangeIndex()
			for i = highIndex, 1, -1 do
				pages[i + 1] = pages[i]
			end
			pages[1] = newPageData
		else
			pages[pageIndex] = newPageData
		end

		-- Increase 1 for all page indexes if we insert page at front
		if pageIndex == 0 then
			pageIndex = 1
			frontPageIndex = frontPageIndex + 1
			endPageIndex = endPageIndex + 1
		end

		return pages[pageIndex]
	end

-- For curated sort. If getPreviousPageAsync() reach front and frontPageIndex > 1, reset page index
	local function resetPageIndex()
		local pageOffset = frontPageIndex - 1
		frontPageIndex = 1
		endPageIndex = endPageIndex - pageOffset
		-- Remove previous pageviews
		for i = 1, pageOffset do
			local frontPageView = pageViews[i]
			if frontPageView then
				pageViews[i] = nil
				view:RemoveAmountFromFront(frontPageView:GetCount())
				frontPageView:Destroy()
			end
		end

		-- Move pages and pageViews to left
		for i = 1, endPageIndex do
			pages[i] = pages[i + pageOffset]
			pageViews[i] = pageViews[i + pageOffset]
		end
		for i = endPageIndex + 1, endPageIndex + pageOffset do
			pages[i] = nil
			pageViews[i] = nil
		end
		absoluteDataIndex = absoluteDataIndex - (pageOffset * PAGE_SIZE)
	end

	local previousFocusItem = nil
	function onViewFocusChanged(newFocusItem)
		local offset = 0
		if previousFocusItem then
			offset = view:GetItemIndex(newFocusItem) - view:GetItemIndex(previousFocusItem)
		end

		local visibleItemCount = view:GetVisibleCount()
		local itemCount = view:GetCount()

		if offset > 0 then
			-- scrolled right
			--lastVisibleItemIndex = firstVisibleItemIndex + visibleItemCount - 1
			local firstVisibleItemIndex = view:GetFirstVisibleItemIndex()
			local lastVisibleItemIndex = view:GetLastVisibleItemIndex()

--			Utility.DebugLog("Scroll right", frontPageIndex, endPageIndex, absoluteDataIndex + offset, offset, "needItemCount:", lastVisibleItemIndex + loadBuffer - itemCount, "reachEnd", reachEnd)

			--Scrolling forward: If the last visible item(right most one) is no more than loadBuffer's steps from the trail, we will truncate new ones at back
			if not isLoading and not reachEnd and lastVisibleItemIndex + loadBuffer >= itemCount then
				isLoading = true
				spawn(function()
					local page
					if isCuratedSort then
						page = getNextPageAsync(endPageIndex + 1)
					else
						page = getPageAsync(endPageIndex + 1)
					end
					if page then
						local newView = createPageView(page)
						endPageIndex = endPageIndex + 1
						view:InsertCollectionBack(newView:GetItems())
						pageViews[endPageIndex] = newView
						if pageViews[endPageIndex - 1] then
							pageViews[endPageIndex - 1]:UnlockLastItem()
						end
						newView:LockLastItem()

						if view:GetCount() > PAGE_SIZE * MAX_PAGES then
							local frontPageView
							frontPageView = pageViews[frontPageIndex]
							--Don't erase the front page if the firstVisibleItem becomes too close to the leading edge
							if firstVisibleItemIndex - frontPageView:GetCount() - loadBuffer > 0 then
								pageViews[frontPageIndex] = nil
								frontPageIndex = frontPageIndex + 1
								view:RemoveAmountFromFront(frontPageView:GetCount())
								frontPageView:Destroy()
								if reachFront then
									reachFront = false
								end
							end
						end
					else
						reachEnd = true
					end
					isLoading = false
				end)
			end
		elseif offset < 0 then
			-- scrolled left
			--firstVisibleItemIndex = lastVisibleItemIndex - visibleItemCount + 1
			local firstVisibleItemIndex = view:GetFirstVisibleItemIndex()
			local lastVisibleItemIndex = view:GetLastVisibleItemIndex()

--			Utility.DebugLog("Scroll left", frontPageIndex, endPageIndex, absoluteDataIndex + offset, offset, "firstVisibleItemIndex", firstVisibleItemIndex, "reachFront", reachFront)

			--Scrolling backward: If the first visible item(left most one) is no more than loadBuffer's steps from the head, we will truncate new ones at front
			if not isLoading and not reachFront and firstVisibleItemIndex - loadBuffer <= 0 then
				isLoading = true
				spawn(function()
					local page
					if isCuratedSort then
						page = getPreviousPageAsync(frontPageIndex - 1)
					else
						page = getPageAsync(frontPageIndex - 1)
					end
					if page then
						local newView = createPageView(page)
						frontPageIndex = frontPageIndex - 1
						view:InsertCollectionFront(newView:GetItems())
						pageViews[frontPageIndex] = newView
						if pageViews[frontPageIndex + 1] then
							pageViews[frontPageIndex + 1]:UnlockFirstItem()
						end
						newView:LockFirstItem()

						if view:GetCount() > PAGE_SIZE * MAX_PAGES then
							local endPageView
							endPageView = pageViews[endPageIndex]
							--Don't erase the trail page if the lastVisibleItemIndex becomes too close to the trail
							if lastVisibleItemIndex + loadBuffer < itemCount - endPageView:GetCount() then
								pageViews[endPageIndex] = nil
								endPageIndex = endPageIndex - 1
								view:RemoveAmountFromBack(endPageView:GetCount())
								endPageView:Destroy()
								if reachEnd then
									reachEnd = false
								end
							end
						end
					else
						reachFront = true
					end

					if isCuratedSort and reachFront and frontPageIndex > 1 then
						resetPageIndex()
					end
					isLoading = false
				end)
			end
		end

		absoluteDataIndex = absoluteDataIndex + offset
		previousFocusItem = newFocusItem
		view:ChangeFocus(newFocusItem)

		local pageNumber = math.ceil(absoluteDataIndex/PAGE_SIZE)
		local pageDataIndex = absoluteDataIndex - ((pageNumber - 1) * PAGE_SIZE)
		currentFocusData = pages[pageNumber][pageDataIndex]
		this.NewItemSelected:fire(currentFocusData)
	end

	--[[ Public API ]]--
	function this:GetFrontGameData()
		if pages[frontPageIndex] then
			return pages[frontPageIndex][1]
		end
	end

	function this:GetCurrentFocusGameData()
		return currentFocusData
	end

	function this:SelectFront()
		local frontViewItem = view:GetFront()
		if frontViewItem then
			onViewFocusChanged(frontViewItem)
		end
	end

	function this:SetLoadBuffer(newValue)
		loadBuffer = newValue
	end

	function this:InitializeAsync(gameCollection)
		view:RemoveAllItems()
		frontPageIndex = frontPageIndex or 1
		endPageIndex = endPageIndex or 0
		absoluteDataIndex = absoluteDataIndex or 1
		currentFocusData = nil
		pages = {}
		pageViews = {}
		sortCollection = gameCollection
		isCuratedSort = gameCollection and gameCollection.GameSetTargetId and gameCollection.GameSetTargetId ~= 0
--			Utility.DebugLog("CarouselController:InitializeAsync", gameCollection.GameSetTargetId, isCuratedSort)

		local loadPrevDataFail = true
		-- For refreshed sorts, currenlty only RecentlyPlayed and Favorite sorts
		if endPageIndex >= frontPageIndex and absoluteDataIndex > 0 then
			local pageCount = 0
			local maxDataIndex = (frontPageIndex - 1) * PAGE_SIZE
			for i = frontPageIndex, endPageIndex do
				local page = isCuratedSort and getNextPageAsync(i) or getPageAsync(i)
				if page then
					local newView = createPageView(page)
					view:InsertCollectionBack(newView:GetItems())
					pageViews[i] = newView
					maxDataIndex = maxDataIndex + newView:GetCount()
					pageCount = pageCount + 1
				else
					break
				end
			end
			endPageIndex = frontPageIndex + pageCount - 1

			if pageCount > 0 then
				local viewItem
				--if requested index overflow, we select the trail
				if absoluteDataIndex > maxDataIndex then
					absoluteDataIndex = maxDataIndex
					viewItem = view:GetBack()
				else
					local viewIndex = absoluteDataIndex - (frontPageIndex - 1) * PAGE_SIZE
					viewItem = view:GetItemAt(viewIndex)
				end
				if viewItem then
					previousFocusItem = viewItem
					--Use ChangeFocus to focus on the prev index immediately
					view:ChangeFocus(viewItem, 0)
					loadPrevDataFail = false
				end
			end

			if loadPrevDataFail then  --Clear data again
				view:RemoveAllItems()
				frontPageIndex = 1
				endPageIndex = 0
				absoluteDataIndex = 1
				currentFocusData = nil
				pages = {}
				for i = 1, #pageViews do
					pageViews[i]:Destroy()
					pageViews[i] = nil
				end
				pageViews = {}
			end
		end

		if loadPrevDataFail then
			for i = 1, MAX_PAGES do
				local page
				if isCuratedSort then
					page = getNextPageAsync(i)
				else
					page = getPageAsync(i)
				end
				if page then
					local newView = createPageView(page)
					endPageIndex = endPageIndex + 1
					view:InsertCollectionBack(newView:GetItems())
					pageViews[i] = newView
				else
					break
				end
			end

			local frontViewItem = view:GetFront()
			if frontViewItem then
				absoluteDataIndex = 1
				previousFocusItem = frontViewItem
				view:SetFocus(frontViewItem)
			end
		end

		if pageViews and endPageIndex > 0 then
			if pageViews[frontPageIndex] then
				pageViews[frontPageIndex]:LockFirstItem()
			end
			if pageViews[endPageIndex] then
				pageViews[endPageIndex]:LockLastItem()
			end
		end
	end

	function this:GetIndexData()
		return frontPageIndex, endPageIndex, absoluteDataIndex
	end

	function this:Connect()
		guiServiceChangedCn = Utility.DisconnectEvent(guiServiceChangedCn)
		guiServiceChangedCn = GuiService:GetPropertyChangedSignal('SelectedCoreObject'):connect(function()
			local newSelection = GuiService.SelectedCoreObject
			if newSelection and view:ContainsItem(newSelection) then
				onViewFocusChanged(newSelection)
			end
		end)

		local function getItemNextShiftItem(direction)
            local currentFocusIndex = view:GetItemIndex(previousFocusItem)
            local shiftAmount = view:GetFullVisibleItemCount()
            local nextItem = view:GetItemAt(currentFocusIndex + shiftAmount * direction)
            if not nextItem then
                nextItem = direction == 1 and view:GetBack() or view:GetFront()
            end

            return nextItem
        end

		local function shiftRight()
			local nextItem = getItemNextShiftItem(1)
			if nextItem then
				GuiService.SelectedCoreObject = nextItem
			end
		end

		local function shiftLeft()
			local nextItem = getItemNextShiftItem(-1)
			if nextItem then
				GuiService.SelectedCoreObject = nextItem
			end
		end

		local seenRightBumper = false
		local function onBumperRight(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin then
				seenRightBumper = true
			elseif seenRightBumper and inputState == Enum.UserInputState.End then
				local currentSelection = GuiService.SelectedCoreObject
				if currentSelection and view:ContainsItem(currentSelection) then
					shiftRight()
				end
				seenRightBumper = false
			end
		end

		local seenLeftBumper = false
		local function onBumperLeft(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin then
				seenLeftBumper = true
			elseif seenLeftBumper and inputState == Enum.UserInputState.End then
				local currentSelection = GuiService.SelectedCoreObject
				if currentSelection and view:ContainsItem(currentSelection) then
					shiftLeft()
				end
				seenRightBumper = false
			end
		end

		-- Bumper Binds
		if not disableBumperBinds then
			ContextActionService:UnbindCoreAction("BumperRight")
			ContextActionService:UnbindCoreAction("BumperLeft")
			ContextActionService:BindCoreAction("BumperRight", onBumperRight, false, Enum.KeyCode.ButtonR1)
			ContextActionService:BindCoreAction("BumperLeft", onBumperLeft, false, Enum.KeyCode.ButtonL1)
		end
	end

	function this:Disconnect()
		guiServiceChangedCn = Utility.DisconnectEvent(guiServiceChangedCn)
		if not disableBumperBinds then
			ContextActionService:UnbindCoreAction("BumperRight")
			ContextActionService:UnbindCoreAction("BumperLeft")
		end
	end

	function this:HasResults()
		return endPageIndex - frontPageIndex >= 0
	end

	return this
end

return createCarouselController
