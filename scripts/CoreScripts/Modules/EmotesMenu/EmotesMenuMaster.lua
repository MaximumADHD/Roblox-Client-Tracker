local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
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
local TenFootInterface = require(CoreScriptModules.TenFootInterface)

local EmotesMenu = require(Components.EmotesMenu)
local EmotesMenuReducer = require(Reducers.EmotesMenuReducer)

local OpenMenu = require(Thunks.OpenMenu)
local HideMenu = require(Actions.HideMenu)
local SetTenFootInterface = require(Actions.SetTenFootInterface)

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

function EmotesMenuMaster:_connectListeners()
    Backpack.StateChanged.Event:Connect(function(isBackpackOpen)
        if not isBackpackOpen then
            return
        end

        if self:isOpen() then
            self:close()
        end
    end)

    StarterGui.CoreGuiChangedSignal:connect(function(coreGuiType, enabled)
        if coreGuiType == Enum.CoreGuiType.EmotesMenu or coreGuiType == Enum.CoreGuiType.All then
            if enabled then
                self:_mount()
            else
                self:_unmount()
            end
        end
    end)
end

function EmotesMenuMaster:_registerSetAndGetCore()
    StarterGui:RegisterGetCore("EmotesMenuOpen", function()
	    return self:isOpen()
    end)

    StarterGui:RegisterSetCore("EmotesMenuOpen", function(open)
        if (typeof(open) ~= "boolean") then
            error("EmotesMenuOpen must be given a boolean value.", 2)
        end

        if open then
            self:open()
        else
            self:close()
        end
    end)
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

    self.store = Rodux.Store.new(EmotesMenuReducer, {}, {
        Rodux.thunkMiddleware,
    })

    self.store:dispatch(SetTenFootInterface(TenFootInterface:IsEnabled()))

    self:_mount()

    self:_connectListeners()
    self:_registerSetAndGetCore()

    return self
end

return EmotesMenuMaster.new()