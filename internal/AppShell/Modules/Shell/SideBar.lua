--[[
			// SideBar.lua
			// Creates a side bar to be used for certain pages
			// Currently used by:
				// GameGenre
				// Friends
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService('GuiService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local CreateSideBar = function()
	local this = {}

	local buttons = {}
	local selectedObject = nil
	local inFocus = false

	local INSET_Y = 156
	local INSET_X = 65
	local BUTTON_SIZE_Y = 75

	local modalOverlay = Utility.Create'Frame'
	{
		Name = "ModalOverlay";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
		BorderSizePixel = 0;
		ZIndex = 4;
	}

	local container = Utility.Create'Frame'
	{
		Name = "SideBarContainer";
		Size = UDim2.new(0.3, 0, 1, 0);
		Position = UDim2.new(1, 0, 0, 0);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.OverlayColor;
		ZIndex = 5;
		Parent = modalOverlay;
	}
	local dummySelectionImage = Utility.Create'TextButton'
	{
		Name = "DummySelectionImage";
		Size = UDim2.new(0, 0, 0, 0);
		Visible = false;

		SoundManager:CreateSound('MoveSelection');
	}

	local function recalcPositions()
		for i = 1, #buttons do
			buttons[i].Position = UDim2.new(0, 0, 0, INSET_Y + (BUTTON_SIZE_Y * (i - 1)))
		end
	end

	--[[ Public API ]]--
	--Add closeEvent
	local closedEvent = Instance.new("BindableEvent")
  	closedEvent.Name = "ClosedEvent"
	this.Closed = closedEvent.Event

	--Never shown, will be overwritten by child--
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('SideBarId')}
	end

	function this:AddItem(newItemName, callback)
		local button = Utility.Create'TextButton'
		{
			Name = "SortButton";
			Size = UDim2.new(1, 0, 0, BUTTON_SIZE_Y);
			BorderSizePixel = 0;
			BackgroundColor3 = GlobalSettings.BlueButtonColor;
			BackgroundTransparency = 1;
			ZIndex = 6;
			Text = "";
			SelectionImageObject = dummySelectionImage;
			Parent = container;

			SoundManager:CreateSound('MoveSelection');
		}
		local text = Utility.Create'TextLabel'
		{
			Name = "SortName";
			Size = UDim2.new(1, -INSET_X, 1, 0);
			Position = UDim2.new(0, INSET_X, 0, 0);
			BackgroundTransparency = 1;
			Text = Utility.Upper(newItemName);
			TextXAlignment = Enum.TextXAlignment.Left;
			TextColor3 = GlobalSettings.WhiteTextColor;
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.MediumFontSize;
			ZIndex = 7;
			Parent = button;
		}
		button.MouseButton1Click:connect(function()
			SoundManager:Play('ButtonPress')
			ScreenManager:CloseCurrent()
			closedEvent:Fire()
			callback()
		end)
		button.SelectionGained:connect(function()
			button.BackgroundTransparency = 0
			text.TextColor3 = GlobalSettings.TextSelectedColor
		end)
		button.SelectionLost:connect(function()
			button.BackgroundTransparency = 1
			text.TextColor3 = GlobalSettings.WhiteTextColor
		end)

		buttons[#buttons + 1] = button
		recalcPositions()
	end

	function this:RemoveAllItems()
		for i,button in pairs(buttons) do
			button:Destroy()
			buttons[i] = nil
		end
	end

	function this:SetSelectedObject(indexToOpenTo, selectCoreObject)
		if #buttons > 0 then
			selectedObject = indexToOpenTo and buttons[indexToOpenTo] or buttons[1]
			--If change SelectedCoreObject and sidebar is focused
			if selectCoreObject == true and selectedObject and inFocus then
				GuiService.SelectedCoreObject = selectedObject
			end
		else
			selectedObject = nil
		end
	end

	function this:GetPriority()
		return GlobalSettings.OverlayPriority
	end

	function this:Show()
		modalOverlay.Parent = ScreenManager:GetScreenGuiByPriority(self:GetPriority())
		local tweenIn = Utility.PropertyTweener(modalOverlay, "BackgroundTransparency", 1,
			GlobalSettings.ModalBackgroundTransparency, 0.25, Utility.EaseInOutQuad, true, nil)
		container:TweenPosition(UDim2.new(1 - container.Size.X.Scale, 0, 0, 0),
			Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.25, true)
		SoundManager:Play('SideMenuSlideIn')
	end

	function this:Hide()
		local tweenOut = Utility.PropertyTweener(modalOverlay, "BackgroundTransparency", 0.3, 1, 0.25, Utility.EaseInOutQuad, true,
			function()
				modalOverlay.Parent = nil
			end)
		container:TweenPosition(UDim2.new(1, 0, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.25, true)
	end

	function this:IsFocused()
		return inFocus
	end

	function this:Focus()
		inFocus = true
		GuiService:AddSelectionParent("SideBar", container)
		if selectedObject then
			Utility.SetSelectedCoreObject(selectedObject)
		else
			self:SetSelectedObject(1)
			Utility.SetSelectedCoreObject(selectedObject)
		end

		-- connect back button
		ContextActionService:BindCoreAction("CloseSideBar",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.End then
					ScreenManager:CloseCurrent()
					closedEvent:Fire()
				end
			end,
			false, Enum.KeyCode.ButtonB)
	end

	function this:RemoveFocus()
		inFocus = false
		GuiService:RemoveSelectionGroup("SideBar")
		ContextActionService:UnbindCoreAction("CloseSideBar")
		selectedObject = nil
	end

	return this
end

return CreateSideBar
