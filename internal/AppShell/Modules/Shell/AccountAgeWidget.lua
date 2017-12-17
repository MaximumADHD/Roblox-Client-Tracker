--[[
                // AccountAgeWidget.lua

                // Displays if the users account is over/under 13
                // Child safety requirement
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local TextService = game:GetService('TextService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local function createAccountAgeWidget()
    local this = {}

    local container = Utility.Create'Frame'
    {
        Name = "AccountAgeContainer";
        Size = UDim2.new(1, 0, 1, 0);
        Position = UDim2.new(0, 0, 0, 0);
        BackgroundTransparency = 1;
    }

    local text = Utility.Create'TextLabel'
    {
        Name = "AccountAgeText";
        Size = UDim2.new(1, -12, 1, -12);
        Position = UDim2.new(0, 0, 0, 0);
        BackgroundTransparency = 1;
        Font = GlobalSettings.RegularFont;
        FontSize = Enum.FontSize.Size14;
        TextColor3 = GlobalSettings.WhiteTextColor;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextYAlignment = Enum.TextYAlignment.Top;
        Text = "";
        ZIndex = 2;
        Parent = container;
    }

    local function updateLayout()
        local textSize = TextService:GetTextSize(text.Text, Utility.ConvertFontSizeEnumToInt(text.FontSize), text.Font, Vector2.new(0, 0))
        local newSizeX = textSize.x
        container.Size = UDim2.new(0, newSizeX, 0, 50)
        container.Position = UDim2.new(1, -newSizeX, 0, 0);
    end

    function this:SetParent(newParent)
        container.Parent = newParent
    end

    function this:SetText(newText)
        if newText ~= text.Text then
            text.Text = newText
            updateLayout()
        end
    end

    return this
end

return createAccountAgeWidget
