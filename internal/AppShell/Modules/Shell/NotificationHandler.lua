--[[
                // NotificationHandler.lua

                // Handles the display of in-app notifications to the users when certain issues are
                // happening. For example, when we're doing an RCC release, we want to let the users
                // know they may experience game join issues

                // TODO: Make this system more generic. Right now this is going to be bare bolts to get
                // working for disabling parties for the update to the new party system.
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local TextService = game:GetService('TextService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local function CreateNotificationHandler(parentContainer)
    local this = {}

    local TEXT_PADDING = 4
    local MAX_LENGTH = parentContainer.AbsoluteSize.x * 0.5

    local notificationContainer = Utility.Create'Frame'
    {
        Size = UDim2.new(0, 0, 0, 0);
        Position = UDim2.new(1, 0, 0, 0);
        BackgroundTransparency = 1;
        Visible = false;
        Parent = parentContainer;
    }

    local notificationIcon = Utility.Create'ImageLabel'
    {
        Size = UDim2.new(0, 40, 0, 40);
        Position = UDim2.new(0, 0, 0, 0);
        BackgroundTransparency = 1;
        Image = 'rbxasset://textures/ui/Shell/Icons/AlertIcon.png';
        Parent = notificationContainer;
    }

    local notificationText = Utility.Create"TextLabel"
    {
        Size = UDim2.new(0, 0, 0, 0);
        Position = UDim2.new(0, 52 + TEXT_PADDING, 0, 43/2);
        BackgroundTransparency = 1;
        Text = "";
        TextColor3 = GlobalSettings.WhiteTextColor;
        FontSize = GlobalSettings.DescriptionSize;
        Font = GlobalSettings.RegularFont;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextYAlignment = Enum.TextYAlignment.Center;
        Parent = notificationContainer;
    }

    local function updateLayout()
        local textSize = TextService:GetTextSize(notificationText.Text, Utility.ConvertFontSizeEnumToInt(notificationText.FontSize), notificationText.Font, Vector2.new(0, 0))
        textSize = math.min(textSize.x, MAX_LENGTH)

        local rightAlignOffset = textSize + notificationIcon.Size.X.Offset + TEXT_PADDING
        notificationContainer.Position = UDim2.new(1, -rightAlignOffset, 0, notificationIcon.Size.Y.Offset/2)
    end

    function this:SetVisible(value)
        notificationContainer.Visible = value
    end

    function this:SetText(newText)
        if newText == notificationText.Text then
            return
        end

        notificationText.Text = newText
        updateLayout()
    end

    return this
end

return CreateNotificationHandler
