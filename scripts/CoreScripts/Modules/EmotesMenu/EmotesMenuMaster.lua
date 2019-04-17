local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalizationService = game:GetService("LocalizationService")
local StarterGui = game:GetService("StarterGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

-- Wait for LocalPlayer to exist
if not Players.LocalPlayer then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
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

local Backpack = require(CoreScriptModules.BackpackScript)
local Chat = require(CoreScriptModules.ChatSelector)
local TenFootInterface = require(CoreScriptModules.TenFootInterface)

local Constants = require(EmotesModules.Constants)

local EmotesMenu = require(Components.EmotesMenu)
local EmotesMenuReducer = require(Reducers.EmotesMenuReducer)

local OpenMenu = require(Thunks.OpenMenu)
local HideMenu = require(Actions.HideMenu)

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

    if isEnabled then
        self:_mount()
    else
        self:_unmount()
    end
end

function EmotesMenuMaster:_connectListeners()
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

    StarterGui.CoreGuiChangedSignal:connect(function(coreGuiType, enabled)
        if not self.topBarEnabled then
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

    LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function()
        self.store:dispatch(SetLocale(LocalizationService.RobloxLocaleId))
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
    end
end

function EmotesMenuMaster:_unmount()
    if self.instance then
        Roact.unmount(self.instance)
        self.instance = nil
    end
end

function EmotesMenuMaster.new()
    local self = setmetatable({}, EmotesMenuMaster)

    -- If not running in the correct context return early and don't mount the Gui
    -- This is necessary for non-networked DataModels where CoreScripts can still run
    if not isClient() then
        return self
    end

    self.topBarEnabled = true

    -- Bindable that can be used by other modules to see when the Emotes Menu is opened or closed.
    -- Fired with a bool indicating whether the EmotesMenu is currently open
    self.EmotesMenuToggled = Instance.new("BindableEvent")

    self.store = Rodux.Store.new(EmotesMenuReducer, {}, {
        Rodux.thunkMiddleware,
    })

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
