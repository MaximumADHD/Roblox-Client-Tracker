local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalizationService = game:GetService("LocalizationService")
local StarterGui = game:GetService("StarterGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FFlagAllowEmotesMenuWhenTopbarIsDisabled = game:DefineFastFlag("AllowEmotesMenuWhenTopbarIsDisabled", false)

-- Wait for LocalPlayer to exist
local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    LocalPlayer = Players.LocalPlayer
end

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local EmotesModules = script.Parent
local CoreScriptModules = EmotesModules.Parent

local Actions = EmotesModules.Actions
local Components = EmotesModules.Components
local Reducers = EmotesModules.Reducers
local Thunks = EmotesModules.Thunks
local Utility = EmotesModules.Utility

local Backpack = require(CoreScriptModules.BackpackScript)
local Chat = require(CoreScriptModules.ChatSelector)
local TenFootInterface = require(CoreScriptModules.TenFootInterface)

local CanPlayEmotes = require(Utility.CanPlayEmotes)
local Constants = require(EmotesModules.Constants)

local EmotesMenu = require(Components.EmotesMenu)
local EmotesMenuReducer = require(Reducers.EmotesMenuReducer)

local OpenMenu = require(Thunks.OpenMenu)
local HideMenu = require(Actions.HideMenu)

local EmotesChanged = require(Actions.EmotesChanged)
local EquippedEmotesChanged = require(Actions.EquippedEmotesChanged)
local NumberEmotesLoadedChanged = require(Actions.NumberEmotesLoadedChanged)
local SetGuiInset = require(Actions.SetGuiInset)
local SetLayout = require(Actions.SetLayout)
local SetLocale = require(Actions.SetLocale)

local EmotesMenuMaster = {}
EmotesMenuMaster.__index = EmotesMenuMaster

local function isClient()
    return RunService:IsClient() and
        not RunService:IsEdit() and
        not RunService:IsRunMode()
end

function EmotesMenuMaster:isOpen()
    return self.store:getState().displayOptions.menuVisible
end

function EmotesMenuMaster:open()
    self.store:dispatch(OpenMenu())
end

function EmotesMenuMaster:close()
    self.store:dispatch(HideMenu())
end

function EmotesMenuMaster:setTopBarEnabled(isEnabled)
    self.topBarEnabled = isEnabled

    if FFlagAllowEmotesMenuWhenTopbarIsDisabled then
        if not isEnabled then
            -- Don't allow user to get stuck in a state where the Emotes Menu is stuck open
            if self:isOpen() then
                self:close()
            end
        end
    else
        local isEmotesMenuEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu)

        if isEnabled and isEmotesMenuEnabled and self.canPlayEmotes then
            self:_mount()
        else
            self:_unmount()
        end
    end
end

function EmotesMenuMaster:_connectCoreGuiListeners()
    Backpack.StateChanged.Event:Connect(function(isBackpackOpen)
        if not isBackpackOpen then
            return
        end

        if self:isOpen() then
            self:close()
        end
    end)

    Chat.VisibilityStateChanged:connect(function(isChatVisible)
        if not isChatVisible then
            return
        end

        if self:isOpen() then
            self:close()
        end
    end)

end

function EmotesMenuMaster:_connectApiListeners()
    StarterGui.CoreGuiChangedSignal:connect(function(coreGuiType, enabled)
        if not FFlagAllowEmotesMenuWhenTopbarIsDisabled and not self.topBarEnabled then
            return
        end

        if not self.canPlayEmotes then
            return
        end

        if coreGuiType == Enum.CoreGuiType.EmotesMenu or coreGuiType == Enum.CoreGuiType.All then
            if enabled then
                self:_mount()
            else
                self:_unmount()
            end
        end
    end)

    GuiService.EmotesMenuOpenChanged:Connect(function(isOpen)
        if isOpen then
            if not self:isOpen() then
                self:open()
            end
        else
            if self:isOpen() then
                self:close()
            end
        end
    end)
end

function EmotesMenuMaster:_onEquippedEmotesChanged(newEquippedEmotes)
    self.store:dispatch(EquippedEmotesChanged(newEquippedEmotes))
end

function EmotesMenuMaster:_onEmotesChanged(newEmotes)
    self.store:dispatch(EmotesChanged(newEmotes))
end

function EmotesMenuMaster:_onNumberEmotesLoadedChanged(newNumberEmotesLoaded)
    self.store:dispatch(NumberEmotesLoadedChanged(newNumberEmotesLoaded))
end

function EmotesMenuMaster:_onHumanoidDescriptionChanged(humanoidDescription)
    if self.equippedEmotesChangedConn then
        self.equippedEmotesChangedConn:Disconnect()
        self.equippedEmotesChangedConn = nil
    end

    if self.emotesChangedConn then
        self.emotesChangedConn:Disconnect()
        self.emotesChangedConn = nil
    end

    if self.numberEmotesLoadedChangedConn then
        self.numberEmotesLoadedChangedConn:Disconnect()
        self.numberEmotesLoadedChangedConn = nil
    end

    if self.humanoidDescriptionAncestryConn then
        self.humanoidDescriptionAncestryConn:Disconnect()
        self.humanoidDescriptionAncestryConn = nil
    end

    if humanoidDescription then
        self.equippedEmotesChangedConn = humanoidDescription.EquippedEmotesChanged:Connect(function(newEquippedEmotes)
            self:_onEquippedEmotesChanged(newEquippedEmotes)
        end)
        self:_onEquippedEmotesChanged(humanoidDescription:GetEquippedEmotes())

        self.emotesChangedConn = humanoidDescription.EmotesChanged:Connect(function(newEmotes)
            self:_onEmotesChanged(newEmotes)
        end)

        self:_onEmotesChanged(humanoidDescription:GetEmotes())

        local numberEmotesChangedSignal = humanoidDescription:GetPropertyChangedSignal("NumberEmotesLoaded")
        self.numberEmotesLoadedChangedConn = numberEmotesChangedSignal:Connect(function(newNumberEmotesLoaded)
            self:_onNumberEmotesLoadedChanged(newNumberEmotesLoaded)
        end)
        self:_onNumberEmotesLoadedChanged(humanoidDescription.NumberEmotesLoaded)

        self.humanoidDescriptionAncestryConn = humanoidDescription.AncestryChanged:Connect(function(child, parent)
            if child == humanoidDescription and parent == nil then
                self:_onHumanoidDescriptionChanged(nil)
            end
        end)
    else
        self:_onEquippedEmotesChanged({})
        self:_onEmotesChanged({})
        self:_onNumberEmotesLoadedChanged(-1)
    end
end

function EmotesMenuMaster:_onHumanoidChanged(humanoid)
    if self.humanoidChildAddedConn then
        self.humanoidChildAddedConn:Disconnect()
        self.humanoidChildAddedConn = nil
    end

    if self.humanoidAncestryChangedConn then
        self.humanoidAncestryChangedConn:Disconnect()
        self.humanoidAncestryChangedConn = nil
    end

    if humanoid then
        self.humanoidChildAddedConn = humanoid.ChildAdded:Connect(function(child)
            if child:IsA("HumanoidDescription") then
                self:_onHumanoidDescriptionChanged(child)
            end
        end)

        local humanoidDescription = humanoid:FindFirstChildOfClass("HumanoidDescription")
        if humanoidDescription then
            self:_onHumanoidDescriptionChanged(humanoidDescription)
        end

        self.humanoidAncestryChangedConn = humanoid.AncestryChanged:Connect(function(child, parent)
            if child == humanoid and parent == nil then
                self:_onHumanoidChanged(nil)
            end
        end)
    else
        self:_onHumanoidDescriptionChanged(nil)
    end
end

function EmotesMenuMaster:_onCharacterAdded(character)
    if self.characterChildAddedConn then
        self.characterChildAddedConn:Disconnect()
        self.characterChildAddedConn = nil
    end

    self.characterChildAddedConn = character.ChildAdded:Connect(function(child)
        if child:IsA("Humanoid") then
            self:_onHumanoidChanged(child)
        end
    end)

    local humanoid = character:FindFirstChildWhichIsA("Humanoid")
    if humanoid then
        self:_onHumanoidChanged(humanoid)
    end
end

function EmotesMenuMaster:_connectListeners()
    self:_connectCoreGuiListeners()
    self:_connectApiListeners()

    LocalPlayer.CharacterAdded:Connect(function(character) self:_onCharacterAdded(character) end)
    if LocalPlayer.Character then
        self:_onCharacterAdded(LocalPlayer.Character)
    end

    LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function()
        self.store:dispatch(SetLocale(LocalizationService.RobloxLocaleId))
    end)

    CanPlayEmotes.ChangedEvent.Event:connect(function(canPlay)
        self.canPlayEmotes = canPlay
        local isEmotesMenuEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu)

        if FFlagAllowEmotesMenuWhenTopbarIsDisabled then
            if canPlay and isEmotesMenuEnabled then
                self:_mount()
            else
                self:_unmount()
            end
        else
            if canPlay and self.topBarEnabled and isEmotesMenuEnabled then
                self:_mount()
            else
                self:_unmount()
            end
        end
    end)
end

function EmotesMenuMaster:_onStateChanged(newState, oldState)
    if oldState.displayOptions.menuVisible ~= newState.displayOptions.menuVisible then
        self.EmotesMenuToggled:Fire(newState.displayOptions.menuVisible)

        GuiService:SetEmotesMenuOpen(newState.displayOptions.menuVisible)
    end
end

function EmotesMenuMaster:_mount()
    if not self.instance then
        local app = Roact.createElement(RoactRodux.StoreProvider, {
            store = self.store,
        }, {
            EmotesMenu = Roact.createElement(EmotesMenu)
        })

        self.instance = Roact.mount(app, RobloxGui, "EmotesMenu")

        self.MenuIsVisible = true
        self.MenuVisibilityChanged:Fire(true)
    end
end

function EmotesMenuMaster:_unmount()
    if self.instance then
        Roact.unmount(self.instance)
        self.instance = nil

        self.MenuIsVisible = false
        self.MenuVisibilityChanged:Fire(false)
    end
end

function EmotesMenuMaster.new()
    local self = setmetatable({}, EmotesMenuMaster)

    self.canPlayEmotes = CanPlayEmotes.Value
    self.topBarEnabled = true

    -- Bindable that can be used by other modules to see when the Emotes Menu is opened or closed.
    -- Fired with a bool indicating whether the EmotesMenu is currently open
    self.EmotesMenuToggled = Instance.new("BindableEvent")

    -- Indicates whether the menu is currently mounted
    self.MenuIsVisible = false

    -- Bindable that can be used by other modules to see when the Emotes Menu should
    -- not be visible to users or should be visible to users.
    self.MenuVisibilityChanged = Instance.new("BindableEvent")

    self.store = Rodux.Store.new(EmotesMenuReducer, {}, {
        Rodux.thunkMiddleware,
    })

    -- If not running in the correct context return early and don't mount the Gui
    -- This is necessary for non-networked DataModels where CoreScripts can still run
    if not isClient() then
        return self
    end

    self.store.changed:connect(function(newState, oldState)
        self:_onStateChanged(newState, oldState)
    end)

    self.store:dispatch(SetLocale(LocalizationService.RobloxLocaleId))

    if TenFootInterface:IsEnabled() then
        self.store:dispatch(SetLayout(Constants.Layout.TenFoot))
    end

    local inGameGlobalGuiInset = settings():GetFVariable("InGameGlobalGuiInset")
    if not RobloxGui.IgnoreGuiInset then
        self.store:dispatch(SetGuiInset(inGameGlobalGuiInset))
    end

    self:_mount()

    self:_connectListeners()

    return self
end

return EmotesMenuMaster.new()
