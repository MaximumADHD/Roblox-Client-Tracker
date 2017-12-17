--[[
			// SocialPane.lua
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local FriendsData = require(ShellModules:FindFirstChild('FriendsData'))
local FriendsView = require(ShellModules:FindFirstChild('FriendsView'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ScrollingGridModule = require(ShellModules:FindFirstChild('ScrollingGrid'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

--[[ Constants ]]--
local GRID_SIZE = UDim2.new(1, 0, 1, 0)
local GRID_ROWS = 5
local GRID_COLUMNS = 4
local GRID_DIRECTION = 'Horizontal'

local function CreateSocialPane(parent)
	local this = {}

	local BREAK_COLOR = Color3.new(78/255, 78/255, 78/255)
	local DISPLAY_FRIEND_COUNT = 15
	local SIDE_BAR_ITEMS = {
		Utility.Upper(Strings:LocalizedString("JoinGameWord"));
		Utility.Upper(Strings:LocalizedString("ViewGameDetailsWord"));
		Utility.Upper(Strings:LocalizedString("InviteToPartyWord"));
		Utility.Upper(Strings:LocalizedString("ViewGamerCardWord"));
	}

	local moreFriendsScreen = nil
	local myFriendsView = nil
	local isPaneFocused = false

	local noSelectionObject = Utility.Create'ImageLabel'
	{
		BackgroundTransparency = 1;
	}

	local SocialPaneContainer = Utility.Create'Frame'
	{
		Name = 'SocialPane';
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Visible = false;
		SelectionImageObject = noSelectionObject;
		Parent = parent;
	}
	--[[ Online Friends ]]--
	local onlineFriendsTitle = Utility.Create'TextLabel'
	{
		Name = "OnlineFriendsTitle";
		Size = UDim2.new(0, 0, 0, 33);
		Position = UDim2.new();
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.SubHeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		Text = Utility.Upper(Strings:LocalizedString("OnlineFriendsWords"));
		Visible = false;
		Parent = SocialPaneContainer;
	}
	local onlineFriendsContainer = Utility.Create'Frame'
	{
		Name = "OnlineFriendsContainer";
		Size = UDim2.new(0, 1720, 0, 610);
		Position = UDim2.new(0, 0, 0, onlineFriendsTitle.Size.Y.Offset);
		BackgroundTransparency = 1;
		Parent = SocialPaneContainer;
	}

	local friendsScrollingGrid = ScrollingGridModule({SelectionMode = "Middle"; Dynamic = true})
	friendsScrollingGrid:SetSize(UDim2.new(1, 0, 1, 0))
	friendsScrollingGrid:SetCellSize(Vector2.new(446, 114))
	friendsScrollingGrid:SetSpacing(Vector2.new(50, 10))
	friendsScrollingGrid:SetScrollDirection(friendsScrollingGrid.Enum.ScrollDirection.Horizontal)
	friendsScrollingGrid:SetPosition(UDim2.new(0, 0, 0, 0))
	local friendsScrollingGridContainer = friendsScrollingGrid:GetGuiObject()
	friendsScrollingGridContainer.Visible = false
	friendsScrollingGrid:SetParent(onlineFriendsContainer)

	--[[ No Friends Online ]]--
	local noFriendsIcon = Utility.Create'ImageLabel'
	{
		Name = "noFriendsIcon";
		Size = UDim2.new(0, 296, 0, 259);
		Position = UDim2.new(0.5, -296/2, 0, 100);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/FriendsIcon@1080.png';
		Visible = false;
		Parent = SocialPaneContainer;
	}
	local noFriendsText = Utility.Create'TextLabel'
	{
		Name = "NoFriendsText";
		Size = UDim2.new(0, 500, 0, 72);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("NoFriendsPhrase");
		TextYAlignment = Enum.TextYAlignment.Top;
		TextWrapped = true;
		Visible = false;
		Parent = SocialPaneContainer;
	}
	noFriendsText.Position = UDim2.new(0.5, -noFriendsText.Size.X.Offset/2, 0,
		noFriendsIcon.Position.Y.Offset + noFriendsIcon.Size.Y.Offset + 32)

	--[[ Content Functions ]]--
	local function setPaneContentVisible(hasOnlineFriends)
		noFriendsIcon.Visible = not hasOnlineFriends
		noFriendsText.Visible = not hasOnlineFriends
		--
		onlineFriendsTitle.Visible = hasOnlineFriends
	end

	local function onFriendsUpdated(friendCount)
		local hasOnlineFriends = friendCount > 0
		setPaneContentVisible(hasOnlineFriends)
	end

	local function loadFriendsView()
		local friendsData = FriendsData.GetOnlineFriendsAsync()
		local displayCount = math.min(#friendsData, DISPLAY_FRIEND_COUNT)
		myFriendsView = FriendsView(friendsScrollingGrid, friendsData, DISPLAY_FRIEND_COUNT, onFriendsUpdated)
		onFriendsUpdated(#friendsData)

		if isPaneFocused then
			local focusItem = myFriendsView:GetDefaultFocusItem()
			if focusItem then
				Utility.SetSelectedCoreObject(focusItem)
			end
		end
	end

	local loader = LoadingWidget(
		{ Parent = SocialPaneContainer }, { loadFriendsView }
	)

	spawn(function()
		loader:AwaitFinished()
		loader:Cleanup()
		friendsScrollingGridContainer.Visible = true
	end)

	function this:GetName()
		return Strings:LocalizedString('FriendsWord')
	end

	function this:IsFocused()
		return isPaneFocused
	end

	--[[ Public API ]]--
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('SocialPaneId')}
	end

	function this:Show()
		SocialPaneContainer.Visible = true
		self.TransitionTweens = ScreenManager:DefaultFadeIn(SocialPaneContainer)
		ScreenManager:PlayDefaultOpenSound()
	end

	function this:Hide()
		SocialPaneContainer.Visible = false
		ScreenManager:DefaultCancelFade(self.TransitionTweens)
		self.TransitionTweens = nil
	end

	function this:Focus()
		-- TODO: Hook in the hidden selection after figuring how how to know how
		-- panes take focus (ie, bumper, tab, etc)
		isPaneFocused = true
		local focusItem = myFriendsView and myFriendsView:GetDefaultFocusItem()
		if focusItem then
			Utility.SetSelectedCoreObject(focusItem)
		end
	end

	function this:RemoveFocus()
		isPaneFocused = false
		local selectedObject = GuiService.SelectedCoreObject
		if selectedObject and selectedObject:IsDescendantOf(SocialPaneContainer) then
			Utility.SetSelectedCoreObject(nil)
		end
	end

	function this:SetPosition(newPosition)
		SocialPaneContainer.Position = newPosition
	end

	function this:SetParent(newParent)
		SocialPaneContainer.Parent = newParent
	end

	function this:IsAncestorOf(object)
		return SocialPaneContainer and SocialPaneContainer:IsAncestorOf(object)
	end

	return this
end

return CreateSocialPane
