-- Services
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Settings = script:FindFirstAncestor("Settings")

-- Modules
local PlayerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)
local Constants = require(Settings.Integrations.Constants)
local SettingsServiceLib = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal = SettingsServiceLib.ValueChangedSignal
local AvailabilitySignal = SettingsServiceLib.AvailabilitySignal
local FieldType = SettingsServiceLib.FieldType
local devConsoleMaster = require(script.Parent.Parent.Parent.Parent.DevConsoleMaster)

-- Constants
local SettingsLayoutOrder = Constants.GAMESETTINGS.LAYOUT_ORDER

-- Functions
local function DeveloperConsoleValue()
    local value = ValueChangedSignal.new()
    
    value:connect(function()
        if devConsoleMaster then
            devConsoleMaster:SetVisibility(true)
            
            -- FIXME: Cyclic module dependency, cast to any to appease typechecker
            local SettingsHub = require(script.Parent.Parent.Parent.SettingsHub) :: any
            if SettingsHub then
                SettingsHub:SetVisibility(false)
            end
        end
    end)
    
    return value
end

local function DeveloperConsoleAvailability()
    local available = AvailabilitySignal.new(false)

    if RunService:IsStudio() then
        available:set(true)
    else
        spawn(function()
            local hasPermission = PlayerPermissionsModule.CanPlayerManagePlaceAsync(Players.LocalPlayer)
            available:set(hasPermission)
        end)
    end

    return available
end



local value = DeveloperConsoleValue()
local available = DeveloperConsoleAvailability()

local DeveloperConsoleConfig = {
    field_type = FieldType.TextButton,
    id = "developer-console",
    onActivated = value,
    label = "CoreScripts.InGameMenu.GameSettings.DeveloperConsole",
    text = "CoreScripts.InGameMenu.GameSettings.Open",
    layoutOrder = SettingsLayoutOrder.DeveloperConsoleButton,
    alreadyLocalized = false,
    availability = available,
} :: SettingsServiceLib.TextButtonRegisterConfig

return DeveloperConsoleConfig
