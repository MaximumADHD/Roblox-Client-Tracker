
local CoreGui = Game:GetService("CoreGui")
local GuiService = Game:GetService('GuiService')
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))

local CarouselView = require(ShellModules:FindFirstChild('CarouselView'))
local CarouselController = require(ShellModules:FindFirstChild('CarouselController'))


local function GameCarouselItem(size, sortName, getGameCollection, onNewGameSelected, hasResultsChanged)
	local this = {}

	local myCarouselController = nil
	local controllerMutex = false
	local myCarouselView = CarouselView()
	local TEXT_OFFSET = 112
	local CAROUSEL_OFFSET = 110
	local hasResults = true
	local lockInPUP = false
	--Initially is unlocked
	local locked = false
	local currentLoader = nil
	local inFocus = false

	local noSelectionObject = Utility.Create'ImageLabel'
	{
		Name = 'NoSelectionObject';
		BackgroundTransparency = 1;
	}

	local container = Utility.Create'ImageButton'
	{
		Name = sortName.." ImageButton";
		Size = size;
		Position = UDim2.new(0, 0, 0, 0);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		ClipsDescendants = false;
		AutoButtonColor = false;
		SelectionImageObject = noSelectionObject;
		Selectable = false;
	}

	local selectionHolder = Utility.Create'ImageLabel'
	{
		Name = sortName.." SelectionHolder";
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 400, 1, 0);
		Position = UDim2.new(0, 50, 0, 50);
		SelectionImageObject = noSelectionObject;
		Selectable = true;
		Parent = container;
	}

	selectionHolder.NextSelectionLeft = selectionHolder
	selectionHolder.NextSelectionRight = selectionHolder

	local nameLabel = Utility.Create'TextLabel'
	{
		Name = "NameLabel";
		Text = Strings:LocalizedString("LoadingWord");
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, TEXT_OFFSET, 0, 22);
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Font = GlobalSettings.RegularFont;
		FontSize = Enum.FontSize.Size36; -- GlobalSettings.TitleSize;
		BackgroundTransparency = 1;
		Selectable = false;
		Parent = container;
	}

	local function loadGameCollection(carouselController, carouselView, container)
		local loaderImgTransparency = 0
		if currentLoader then
			loaderImgTransparency = Utility.Clamp(0, 1, currentLoader:GetTransparency())
			currentLoader:Cleanup()
		end
		nameLabel.Text = Strings:LocalizedString("LoadingWord");
		selectionHolder.Selectable = true

		spawn(function()
			local loader = LoadingWidget(
				{ Parent = container; Position = UDim2.new(0.5, CAROUSEL_OFFSET, 0.5, 50); ImageTransparency = loaderImgTransparency },
				{
					function()
						--The InitializeAsync will also remove old items if exist
						carouselController:InitializeAsync(getGameCollection())
						--The Connect will also remove old connections if exist
						carouselController:Connect()
						carouselController.NewItemSelected:connect(onNewGameSelected)

						--Make sure this thread is the latest one, if so,
						--make the callback and update selection
						if this and myCarouselController == carouselController and myCarouselView == carouselView then
							hasResults = carouselController:HasResults()
							hasResultsChanged(this)
							if hasResults then
								selectionHolder.Selectable = false
								nameLabel.Text = sortName
								if this:IsSelected() then
									this:RemoveFocus()
									this:Focus()
								end
							else
								selectionHolder.Selectable = true
								nameLabel.Text = ""
							end
						else
							if carouselView then
								carouselView:SetParent(nil)
							end
						end
					end
				}
			)

			if currentLoader then
				currentLoader:SetParent(nil)
			end

			currentLoader = loader
			loader:AwaitFinished()
			loader:Cleanup()
		end)
	end

	function this:Init(Transparency)
		Transparency = Transparency and Transparency or 0
		myCarouselView:SetTransparency(Transparency)
		myCarouselView:SetSize(UDim2.new(0, 1700, 0, 232))
		myCarouselView:SetPosition(UDim2.new(0, CAROUSEL_OFFSET, 0, 50))
		myCarouselView:SetPadding(20)
		myCarouselView:SetItemSizePercentOfContainer(0.84)
		myCarouselView:SetSelectionImageObject(
			Utility.Create'ImageLabel'
			{
				BackgroundTransparency = 1;
			}
		)
		myCarouselView:SetParent(container)

		if myCarouselController then
			myCarouselController:Disconnect()
		end

		if myCarouselController then
			local prevFrontPageIndex, prevEndPageIndex, prevAbsoluteDataIndex = myCarouselController:GetIndexData()
			myCarouselController = CarouselController(myCarouselView, true, prevFrontPageIndex, prevEndPageIndex, prevAbsoluteDataIndex)
		else
			myCarouselController = CarouselController(myCarouselView, true)
		end
		myCarouselController:SetLoadBuffer(15)
		loadGameCollection(myCarouselController, myCarouselView, container)
	end

	function this:Refresh()
		if myCarouselView then
			if this:IsSelected() then
				selectionHolder.Selectable = true
				Utility.SetSelectedCoreObject(selectionHolder)
				--Clear game data
				onNewGameSelected(nil)
			end
			--Reset the old CarouselView
			myCarouselView:RemoveFocus()
			myCarouselView:RemoveAllItems()
			myCarouselView:SetParent(nil)

			--Init with previous Transparency
			local prevTransparency = myCarouselView:GetTransparency()
			myCarouselView = CarouselView()
			this:Init(prevTransparency)
		end
	end

	function this:HasResults()
		return hasResults
	end

	function this:GetContainer()
		return container
	end

	function this:ContainsItem(item)
		return myCarouselView:ContainsItem(item)
	end

	function this:GetCarouselView()
		return myCarouselView
	end

	function this:GetSortName()
		return sortName
	end

	function this:GetNameText()
		return nameLabel.Text
	end

	function this:SetNameText(name)
		nameLabel.Text = name
	end

	-- Important subtle detail: the center of this needs to be in about the same
	-- x-coordinate as the first item in each carousel so that selection doesn't
	-- move laterally when you arrow up and down.
	local LockOverlay = Utility.Create'ImageLabel'
	{
		Name = "LockOverlay";
		Size = UDim2.new(0, 400, 1, 0);
		Position = UDim2.new(0, 50, 0, 50);
		BackgroundTransparency = 1;
		Selectable = true;
		SelectionImageObject = Utility.Create'ImageLabel'
		{
			BackgroundTransparency = 1;
		};
		ZIndex = 3;
	}

	LockOverlay.NextSelectionRight = LockOverlay
	LockOverlay.NextSelectionLeft = LockOverlay

	function this:Lock()
		locked = true
		LockOverlay.Parent = container
		if this:IsSelected() then
			this:RemoveFocus()
			this:Focus()
		end
		myCarouselView:SetSelectable(false)
		myCarouselView:SetClipsDescendants(true)
	end

	function this:Unlock()
		locked = false
		myCarouselView:SetSelectable(true)
		myCarouselView:SetClipsDescendants(false)
		if this:IsSelected() then
			this:RemoveFocus()
			this:Focus()
		end
		LockOverlay.Parent = nil
	end

	function this:IsLocked()
		return locked
	end

	function this:SetLockInPUP(State)
		lockInPUP = State
	end

	function this:GetLockInPUP()
		return lockInPUP
	end

	function this:Focus()
		if inFocus then return end
		inFocus = true
		if this then
			if locked then
				if myCarouselController then
					onNewGameSelected(myCarouselController:GetFrontGameData(), true)
				end
				Utility.SetSelectedCoreObject(LockOverlay)
			else
				myCarouselView:Focus()
				if not selectionHolder.Selectable and myCarouselView:GetAvailableItem() then
					Utility.SetSelectedCoreObject(myCarouselView:GetAvailableItem())
				else
					Utility.SetSelectedCoreObject(selectionHolder)
					--Clear game data
					onNewGameSelected(nil)
				end
			end
		end
	end

	function this:RemoveFocus()
		if not inFocus then return end
		myCarouselView:RemoveFocus()
		inFocus = false
	end


	local fadeDuration = 0.2
	local targetTextTransparency = 0
	local textTransparencyTweens = {}

	local function setTextTransparency(value, duration, refresh)
		if not refresh and value == targetTextTransparency then return end

		if duration then
			targetTextTransparency = Utility.Clamp(0, 1, targetTextTransparency)
			if not refresh and value == targetTextTransparency then return end
		else
			duration = fadeDuration
		end

		Utility.CancelTweens(textTransparencyTweens)

		table.insert(textTransparencyTweens,
			Utility.PropertyTweener(
				nameLabel,
				'TextTransparency',
				targetTextTransparency,
				value,
				duration,
				Utility.EaseOutQuad,
				true))

		targetTextTransparency = value
	end

	function this:SetTransparency(imageTransparency, textTransparency, duration, refresh)
		setTextTransparency(textTransparency, duration, refresh)
		myCarouselView:SetTransparency(imageTransparency, duration, refresh)
		if currentLoader then
			currentLoader:SetTransparency(Utility.Clamp(0, 1, imageTransparency))
		end
	end

	function this:Destroy()
		container:Destroy()
		this = nil
	end

	function this:IsSelected()
		if GuiService.SelectedCoreObject then
			return GuiService.SelectedCoreObject == selectionHolder or myCarouselView:ContainsItem(GuiService.SelectedCoreObject) or
				GuiService.SelectedCoreObject == LockOverlay
		end

		return false
	end

	return this
end

return GameCarouselItem
