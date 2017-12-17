-- Creates UI for Action/Title safe container as per Microsofts reccomendations

local CoreGui = game:GetService('CoreGui')
local RobloxGui = CoreGui.RobloxGui
local ShellModules = script.Parent

local Utility = require(ShellModules.Utility)

local ACTION_SAFE_INSET = UDim2.new((128 / 1920) * 0.5, 0, (64 / 1080) * 0.5, 0)
local TITLE_SAFE_INSET = UDim2.new((72 / 1792) * 0.5, 0, (16 / 1080) * 0.5, 0)

local AppContainer = {}

AppContainer.Root = Utility.Create'Frame'
{
    Name = "AppContainerRoot";
    Size = UDim2.new(1, 0, 1, 0);
    BackgroundTransparency = 1;
    BorderSizePixel = 0;
    BackgroundColor3 = Color3.new(0, 0, 0);
    ClipsDescendants = true;
    Parent = RobloxGui;
}

AppContainer.AspectRatioProtector = Utility.Create'Frame'
{
    Name = 'AspectRatioProtector';
    Size = UDim2.new(1, 0, 1, 0);
    Position = UDim2.new(0,0,0,0);
    BackgroundTransparency = 1;
    Parent = AppContainer.Root;
}

AppContainer.ActionSafeContainer = Utility.Create'Frame'
{
    Name = "ActionSafeContainer";
    Size = UDim2.new(1, 0, 1, 0) - (ACTION_SAFE_INSET + ACTION_SAFE_INSET);
	Position = UDim2.new(0,0,0,0) + ACTION_SAFE_INSET;
	BackgroundTransparency = 1;
	Parent = AppContainer.AspectRatioProtector;
}

AppContainer.TitleSafeContainer = Utility.Create'Frame'
{
    Name = "TitleSafeContainer";
    Size = UDim2.new(1, 0, 1, 0) - (TITLE_SAFE_INSET + TITLE_SAFE_INSET);
	Position = UDim2.new(0, 0, 0, 0) + TITLE_SAFE_INSET;
	BackgroundTransparency = 1;
	Parent = AppContainer.ActionSafeContainer;
}

local function OnAbsoluteSizeChanged()
	local newSize = Utility.CalculateFit(AppContainer.Root, Vector2.new(16,9))
	if newSize ~= AppContainer.AspectRatioProtector.Size then
		AppContainer.AspectRatioProtector.Size = newSize
		AppContainer.AspectRatioProtector.AnchorPoint = Vector2.new(0.5, 0.5)
		AppContainer.AspectRatioProtector.Position = UDim2.new(0.5, 0, 0.5, 0)
	end
end

AppContainer.Root:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
	OnAbsoluteSizeChanged()
end)
OnAbsoluteSizeChanged()

return AppContainer
