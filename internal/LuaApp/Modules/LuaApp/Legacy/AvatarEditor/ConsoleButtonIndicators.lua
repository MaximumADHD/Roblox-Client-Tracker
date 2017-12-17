local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local Strings = require(Modules.LuaApp.Legacy.AvatarEditor.LocalizedStrings)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfoConsole)
local TweenController = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

local TextService = game:GetService("TextService")

local ICON_HEIGHT = LayoutInfo.IndicatorHeight --indicator icon size
local BOTTOM_DISTANCE = LayoutInfo.IndicatorBottomDistance --Distance from bottom of indicator to bottom of screen
local BUTTON_DISTANCE = LayoutInfo.IndicatorButtonsDistance --Distance between two indicators
local ICON_TEXT_DISTANCE = LayoutInfo.IndicatorIconTextDistance --Distance between indicator icon and text
local MAX_TEXT_LENGTH = LayoutInfo.IndicatorMaxLength - BUTTON_DISTANCE - 2 * ICON_HEIGHT - 2 * ICON_TEXT_DISTANCE
local MAX_FULLVIEW_EXIT_TEXT_SIZE_X = LayoutInfo.IndicatorMaxLength - ICON_HEIGHT - ICON_TEXT_DISTANCE

local this = {}

local function getTextSizeX(text)
	local textSize = TextService:GetTextSize(text,
		LayoutInfo.ButtonFontSize,
		LayoutInfo.RegularFont,
		Vector2.new(0, 0))
	return textSize.X
end

--switchType size
local switchToR15TextSizeX = getTextSizeX(Strings:LocalizedString("SwitchToR15Word"))
local switchToR6TextSizeX = getTextSizeX(Strings:LocalizedString("SwitchToR6Word"))
local switchTypeTextSizeX = math.max(switchToR15TextSizeX, switchToR6TextSizeX)

--fullView size
local fullViewTextSizeX = getTextSizeX(Strings:LocalizedString("FullViewWord"))

if switchTypeTextSizeX + fullViewTextSizeX > MAX_TEXT_LENGTH then
	switchTypeTextSizeX = math.min(switchTypeTextSizeX, MAX_TEXT_LENGTH/2)
	fullViewTextSizeX = math.min(fullViewTextSizeX, MAX_TEXT_LENGTH/2)
end

local switchTypeContainerSizeX = ICON_HEIGHT + ICON_TEXT_DISTANCE + switchTypeTextSizeX
local fullViewContainerSizeX = ICON_HEIGHT + ICON_TEXT_DISTANCE + fullViewTextSizeX

--total size
local totalContainerSizeX = switchTypeContainerSizeX + fullViewContainerSizeX +	BUTTON_DISTANCE

--fullViewExit size
local fullViewExitTextSizeX = getTextSizeX(Strings:LocalizedString("ReturnToEditWord"))
fullViewExitTextSizeX = math.min(fullViewExitTextSizeX, MAX_FULLVIEW_EXIT_TEXT_SIZE_X)
local fullViewExitContainerSizeX = ICON_HEIGHT + ICON_TEXT_DISTANCE + fullViewExitTextSizeX

--positions
local textPositionX = ICON_HEIGHT + ICON_TEXT_DISTANCE
local switchTypeContainerPosition = UDim2.new(0.5, -totalContainerSizeX/2, 1, -BOTTOM_DISTANCE)
local switchTypeContainerTweenPosition = UDim2.new(0.5, -totalContainerSizeX/2, 1, 100)
local fullViewContainerPosition = UDim2.new(
	0.5, -totalContainerSizeX/2 + switchTypeContainerSizeX + BUTTON_DISTANCE, 1, -BOTTOM_DISTANCE)
local fullViewExitContainerPosition = UDim2.new(0.5, -fullViewExitContainerSizeX/2, 1, -BOTTOM_DISTANCE)

--tween
local tweenInfo = TweenInfo.new(LayoutInfo.DefaultTweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

function this.init(parent)
	local SwitchTypeContainer = Utilities.create'Frame'
	{
		Name = "SwitchTypeContainer";
		AnchorPoint = Vector2.new(0, 1);
		Position = switchTypeContainerPosition;
		Size = UDim2.new(0, switchTypeContainerSizeX, 0, ICON_HEIGHT);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ZIndex = LayoutInfo.IndicatorLayer;
		Parent = parent;
	}

	local SwitchTypeLabel = Utilities.create'TextLabel'
	{
		Name = "HintActionText";
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0, textPositionX, 0.5, 0);
		Size = UDim2.new(0, switchTypeTextSizeX, 0, ICON_HEIGHT);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Font = LayoutInfo.RegularFont;
		TextSize = LayoutInfo.ButtonFontSize;
		TextColor3 = LayoutInfo.WhiteTextColor;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
		Text = Strings:LocalizedString("SwitchToR6Word");
		ZIndex = LayoutInfo.IndicatorLayer;
		Parent = SwitchTypeContainer;
	}

	Utilities.create'ImageLabel'
	{
		Name = "SwitchTypeButtonIcon";
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0, 0, 0.5, 0);
		Size = UDim2.new(0, ICON_HEIGHT, 0, ICON_HEIGHT);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = "rbxasset://textures/ui/Shell/ButtonIcons/SelectButtonDark.png";
		ZIndex = LayoutInfo.IndicatorLayer;
		Parent = SwitchTypeContainer;
	}

	local FullViewContainer = Utilities.create'Frame'
	{
		Name = "FullViewContainer";
		AnchorPoint = Vector2.new(0, 1);
		Position = fullViewContainerPosition;
		Size = UDim2.new(0, fullViewContainerSizeX, 0, ICON_HEIGHT);
		BackgroundTransparency = 1;
		ZIndex = LayoutInfo.IndicatorLayer;
		Parent = parent;
	}

	local FullViewLabel = Utilities.create'TextLabel'
	{
		Name = "HintActionText";
		AnchorPoint = Vector2.new(0, 0.5);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Position = UDim2.new(0, textPositionX, 0.5, 0);
		Size = UDim2.new(0, fullViewTextSizeX, 0, ICON_HEIGHT);
		Font = LayoutInfo.RegularFont;
		TextSize = LayoutInfo.ButtonFontSize;
		TextColor3 = LayoutInfo.WhiteTextColor;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
		Text = Strings:LocalizedString("FullViewWord");
		ZIndex = LayoutInfo.IndicatorLayer;
		Parent = FullViewContainer;
	}

	Utilities.create'ImageLabel'
	{
		Name = "FullViewButtonIcon";
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0, 0, 0.5, 0);
		Size = UDim2.new(0, ICON_HEIGHT, 0, ICON_HEIGHT);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = "rbxasset://textures/ui/Shell/ButtonIcons/R3ButtonDark.png";
		ZIndex = LayoutInfo.IndicatorLayer;
		Parent = FullViewContainer;
	}

	AppState.Store.Changed:Connect(
		function(newState, oldState)
			if newState.Character.AvatarType == "R6" then
				SwitchTypeLabel.Text = Strings:LocalizedString("SwitchToR15Word")
			end

			if newState.Character.AvatarType == "R15" then
				SwitchTypeLabel.Text = Strings:LocalizedString("SwitchToR6Word")
			end

			if newState.FullView ~= oldState.FullView then
				if newState.FullView then
					FullViewLabel.Text = Strings:LocalizedString("ReturnToEditWord")
					FullViewLabel.Size = UDim2.new(0, fullViewExitTextSizeX, 0, ICON_HEIGHT)
					FullViewContainer.Size = UDim2.new(0, fullViewExitContainerSizeX, 0, ICON_HEIGHT)
					TweenController(SwitchTypeContainer, tweenInfo, { Position = switchTypeContainerTweenPosition })
					TweenController(FullViewContainer, tweenInfo, { Position = fullViewExitContainerPosition })
				else
					FullViewLabel.Text = Strings:LocalizedString("FullViewWord")
					FullViewLabel.Size = UDim2.new(0, fullViewTextSizeX, 0, ICON_HEIGHT)
					FullViewContainer.Size = UDim2.new(0, fullViewContainerSizeX, 0, ICON_HEIGHT)
					TweenController(SwitchTypeContainer, tweenInfo, { Position = switchTypeContainerPosition })
					TweenController(FullViewContainer, tweenInfo, { Position = fullViewContainerPosition })
				end
			end
		end
	)
end

return this
