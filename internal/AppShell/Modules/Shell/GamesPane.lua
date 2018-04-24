local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))
local GamesViewModule = require(ShellModules:FindFirstChild('GamesView'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local SortsData = require(ShellModules:FindFirstChild('SortsData'))
local GamesPaneDetailsView = require(ShellModules:FindFirstChild('GamesPaneDetailsView'))

local function CreateGamesPane(parent)
	local this = {}
	local slideTweens = {}

	local isPaneFocused = false

	local noSelectionObject = Utility.Create'ImageLabel'
	{
		Name = 'NoSelectionObject';
		BackgroundTransparency = 1;
	}

	local GamesPaneContainer = Utility.Create'Frame'
	{
		Name = 'GamesPane';
		Size = UDim2.new(1, 0, 0, 900);
		Position = UDim2.new(0, 0, 0, -120); -- put it above the nav bar
		BackgroundTransparency = 1;
		Visible = false;
		SelectionImageObject = noSelectionObject;
		ClipsDescendants = false;
		Parent = parent;
	}

	local gameDetailsView = GamesPaneDetailsView()
	gameDetailsView:TweenTransparency(1, 0)
	gameDetailsView:SetParent(GamesPaneContainer)

	local GamesViewContainer = Utility.Create'Frame'
	{
		Name = "GamesViewContainer";

		Size = UDim2.new(0, 1730, 0, 700);
		Position = UDim2.new(0, 0, 0, 100);

		BackgroundTransparency = 1;
		ClipsDescendants = false;
		Parent = GamesPaneContainer;
	}

	local UpPosition = UDim2.new(0, 0, 0, 100)
	local UpSize =     UDim2.new(0, 1730, 0, 700)

	local DownPosition = UDim2.new(0, 0, 0, 300)
	local DownSize =     UDim2.new(0, 1730, 0, 700)

	local function SlideGamesViewDown(tweens, duration)
		local positionTweener = Utility.PropertyTweener(
			GamesViewContainer,
			'Position',
			UpPosition,
			DownPosition,
			duration,
			Utility.SCurveUDim2
		)
		table.insert(tweens, positionTweener)

		local sizeTweener = Utility.PropertyTweener(
			GamesViewContainer,
			'Size',
			UpSize,
			DownSize,
			duration,
			Utility.SCurveUDim2
		)
		table.insert(tweens, sizeTweener)
	end

	local function SlideGamesViewUp(tweens, duration)
		local positionTweener = Utility.PropertyTweener(
			GamesViewContainer,
			'Position',
			DownPosition,
			UpPosition,
			duration,
			Utility.SCurveUDim2
		)
		table.insert(tweens, positionTweener)

		local sizeTweener = Utility.PropertyTweener(
			GamesViewContainer,
			'Size',
			DownSize,
			UpSize,
			duration,
			Utility.SCurveUDim2
		)
		table.insert(tweens, sizeTweener)
	end

	local function onNewGameSelected(data, faded)
		gameDetailsView:SetGamePreview(data, faded)
	end

	local GamesView = GamesViewModule(
		{
			Size = UDim2.new(1, 0, 0, 500);
			Position = UDim2.new(0, -110, 0, 0);
			CellSize = Vector2.new(1900, 300);
			BackgroundTransparency = 1;
			Spacing = Vector2.new(0, 0);
			Padding = Vector2.new(0, 0);
			ScrollDirection = "Vertical";
			ClipsDescendants = false;
			SelectionMode = "TopLeft";
			Dynamic = true;
		},
		onNewGameSelected
	)

	GamesView:SetParent(GamesViewContainer)

	-- Gradient for lower right corner
	local gradient = Utility.Create'ImageLabel'
    {
        Name = "HintGradient";
        Size = UDim2.new(0, 631, 0, 276);
		Position = UDim2.new(1, -631, 1, -276);
        BackgroundTransparency = 1;
        Image = 'rbxasset://textures/ui/Shell/Images/IGG/IGGHintGradient.png';
		Parent = GamesPaneContainer;
    }

	-- need to wait frame for abs size/pos to be set
	spawn(function()
		local xOffset = math.abs(GuiRoot.AbsoluteSize.x - GamesPaneContainer.AbsoluteSize.x - GamesPaneContainer.AbsolutePosition.x)
		local yOffset = math.abs(GuiRoot.AbsoluteSize.y - GamesPaneContainer.AbsoluteSize.y - GamesPaneContainer.AbsolutePosition.y)

		gradient.Position = UDim2.new(1, -631 + xOffset, 1, -276 + yOffset)
	end)

	function this:GetName()
		return Strings:LocalizedString('GamesWord')
	end

	function this:IsFocused()
		return isPaneFocused
	end

	--If we navigate to the gamespane from sub screens(game detail screen), the screen manager maniplulate the hide and show.
	--If we navigate to the gamespane from other tabs, the apphub has it's logic: onSelectedTabChanged, to maniplulate the hide and show.
	function this:Show(fromAppHub)
		GamesPaneContainer.Visible = true
		GamesViewContainer.Visible = true
		--We reload Sorts only if we navigate from other tabs
		if fromAppHub then
			GamesView:Load()
		end

		--Suspend Sorts BG Update whenever we are on GamesPane
		SortsData:SuspendUpdate()

		self.TransitionTweens = ScreenManager:DefaultFadeIn(GamesPaneContainer)
		ScreenManager:PlayDefaultOpenSound()
	end

	function this:Hide(fromAppHub)
		GamesPaneContainer.Visible = false
		GamesViewContainer.Visible = false
		ScreenManager:DefaultCancelFade(self.TransitionTweens)
		self.TransitionTweens = nil

		--Don't delay the other pane showing
		spawn(function()
			--We resume Sorts BG Update only if we navigate to other tabs
			if fromAppHub then
				SortsData:ResumeUpdate()
				SortsData:CallUpdate()
			end
		end)
	end


	function this:Focus(tabDock)
		isPaneFocused = true
		tabDock:Hide()
		Utility.CancelTweens(slideTweens)
		SlideGamesViewDown(slideTweens, GlobalSettings.TabDockTweenDuration)
		GamesView:Focus()
		gameDetailsView:Focus()
	end

	--Whether the removefocus comes from screen manager/bumper/Button B
	function this:RemoveFocus(fromAppHub)
		if not isPaneFocused then return end
		Utility.CancelTweens(slideTweens)
		SlideGamesViewUp(slideTweens, GlobalSettings.TabDockTweenDuration)
		GamesView:RemoveFocus(fromAppHub)
		gameDetailsView:RemoveFocus()
		isPaneFocused = false
	end

	function this:SetPosition(newPosition)
		GamesPaneContainer.Position = newPosition
	end

	function this:SetParent(newParent)
		GamesPaneContainer.Parent = newParent
	end

	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('GamesPaneId')}
	end

	function this:IsAncestorOf(object)
		return GamesPaneContainer and GamesPaneContainer:IsAncestorOf(object)
	end

	return this
end

return CreateGamesPane