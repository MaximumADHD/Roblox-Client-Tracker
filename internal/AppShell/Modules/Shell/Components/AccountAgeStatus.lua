local TextService = game:GetService('TextService')
local ShellModules = script.Parent.Parent

local GlobalSettings = require(ShellModules.GlobalSettings)
local Strings = require(ShellModules.LocalizedStrings)
local Utility = require(ShellModules.Utility)

local AccountAgeStatus = {}
AccountAgeStatus.__index = AccountAgeStatus

function AccountAgeStatus.new(store, parent)
    local self = {}

    self.StoreChangedCn = nil

    self.rbx = Utility.Create'Frame' {
        Name = "AccountAgeContainer",
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Parent = parent,

        Utility.Create'TextLabel' {
            Name = "AccountAgeText",
            Size = UDim2.new(1, -12, 1, -12),
            Position = UDim2.new(0, 0, 0, 0),
            BackgroundTransparency = 1,
            Font = GlobalSettings.RegularFont,
            FontSize = Enum.FontSize.Size14,
            TextColor3 = GlobalSettings.WhiteTextColor,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            Text = "",
            ZIndex = 2,
        }
    }

    self.StoreChangedCn = store.Changed:Connect(function(newState, oldState)
        if newState.ActiveUser.Under13 ~= oldState.ActiveUser.Under13 then
            local isUnder13 = newState.ActiveUser.Under13
            -- clear out if isUnder13 is nil
            if isUnder13 == nil then
                self.rbx.AccountAgeText.Text = ""
                return
            end

            local newText = Strings:LocalizedString("AccountUnder13Phrase")
            if isUnder13 == false then
                newText = Strings:LocalizedString("AccountOver13Phrase")
            end

            if newText == self.rbx.AccountAgeText.Text then
                return
            end

            self.rbx.AccountAgeText.Text = newText
            -- update layout
            local textSize = TextService:GetTextSize(newText,
                Utility.ConvertFontSizeEnumToInt(self.rbx.AccountAgeText.FontSize), self.rbx.AccountAgeText.Font, Vector2.new(0, 0))
            self.rbx.Size = UDim2.new(0, textSize.x, 0, 50)
            self.rbx.Position = UDim2.new(1, -textSize.x, 0, 0)
        end
    end)

    setmetatable(self, AccountAgeStatus)
    return self
end

function AccountAgeStatus:Destruct()
    self.rbx:Destroy()
    self.rbx = nil
    if self.StoreChangedCn then
        self.StoreChangedCn:Disconnect()
        self.StoreChangedCn = nil
    end
end

return AccountAgeStatus