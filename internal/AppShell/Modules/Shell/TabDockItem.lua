-- Written by Kip Turner, Copyright Roblox 2015

local TextService = game:GetService('TextService')
local UserInputService = game:GetService('UserInputService')

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))

local function CreateTabDockItem(tabName, contentItem)
	local this = {}
	local name = tabName
	local selected = false
	local focused = false
	local content = contentItem

	this.SizeChanged = Utility.Signal()
	this.Clicked = Utility.Signal()

	local tabItem = Utility.Create'TextLabel'
	{
		Size = UDim2.new(0, 100, 1, 0);
		BackgroundTransparency = 1;
		Name = 'TabItem';
		Selectable = false;
		Text = "";
	}

	local tabText = Utility.Create'TextLabel'
	{
		Text = name;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Name = 'LargeText';
		FontSize = GlobalSettings.HeaderSize;
		Font = GlobalSettings.LightFont;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Visible = true;
		Parent = tabItem;
		Selectable = false;
	}
	do
		local tabItemTextSize = TextService:GetTextSize(tabText.Text, Utility.ConvertFontSizeEnumToInt(tabText.FontSize), tabText.Font, Vector2.new())
		tabItem.Size = UDim2.new(0,tabItemTextSize.X + 20,1,0)
		this.SizeChanged:fire(tabItem.Size)
	end
	local smallText = Utility.Create'TextLabel'
	{
		Text = name;
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		BackgroundTransparency = 1;
		Name = 'SmallText';
		FontSize = GlobalSettings.MediumFontSize;
		Font = GlobalSettings.LightFont;
		TextColor3 = GlobalSettings.WhiteTextColor;
		BackgroundTransparency = 1;
		Visible = false;
		Selectable = false;
		Parent = tabItem;
	}

	local function SetRBXEventStream_Screen(screen, status)
		if screen and type(screen.GetAnalyticsInfo) == "function" then
			local screenAnalyticsInfo = screen:GetAnalyticsInfo()
			if type(screenAnalyticsInfo) == "table" and screenAnalyticsInfo[Analytics.WidgetNames('WidgetId')] then
				screenAnalyticsInfo.Status = status
				Analytics.SetRBXEventStream("Widget",  screenAnalyticsInfo)
			end
		end
	end

	local function OnSelectionChanged()
		if selected then
			tabText.TextColor3 = GlobalSettings.WhiteTextColor;
			SetRBXEventStream_Screen(content, "Select")
		else
			tabText.TextColor3 = GlobalSettings.BlueTextColor;
		end
	end

	function this:GetContentItem()
		return content
	end

	function this:GetGuiObject()
		return tabItem
	end

	function this:SetSelected(isSelected)
		if selected ~= isSelected then
			selected = isSelected
			OnSelectionChanged()
		end
	end

	function this:GetSelected()
		return selected
	end

	function this:GetName()
		return name
	end

	function this:GetSize()
		return tabItem.Size
	end

	function this:OnClick()
		smallText.Visible = true;
		tabText.Visible = false;
		SoundManager:Play('ButtonPress')
	end

	function this:OnClickRelease()
		smallText.Visible = false;
		tabText.Visible = true;
	end

	function this:SetFocused(nowFocused)
		if focused ~= nowFocused then
			focused = nowFocused

			if focused then
				for _, inputObject in pairs(UserInputService:GetGamepadState(Enum.UserInputType.Gamepad1)) do
					if inputObject.KeyCode == Enum.KeyCode.ButtonA and
							inputObject.UserInputState == Enum.UserInputState.Begin then
						self:OnClick()
					end
				end
			else
				self:OnClickRelease()
			end

		end
	end

	function this:SetPosition(newPosition)
		tabItem.Position = newPosition
	end

	function this:SetParent(newParent)
		tabItem.Parent = newParent
	end
	-- Initialize
	OnSelectionChanged()

	return this
end


return CreateTabDockItem
