local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Roact = require(CorePackages.Roact)

local PermissionsButtons = require(RobloxGui.Modules.Pip.PermissionsButtons)


local utility = require(RobloxGui.Modules.Settings.Utility)

local function createPermissionsButtons()
    return Roact.createElement(PermissionsButtons, {
        isTenFootInterface = false,
        isPortrait = utility:IsPortrait(),
        isSmallTouchScreen = utility:IsSmallTouchScreen(),
        ZIndex = 100,
        LayoutOrder = -1,
    })
end

local permissionsButtonsRoot = nil

if permissionsButtonsRoot then
    Roact.unmount(permissionsButtonsRoot)
end
permissionsButtonsRoot = Roact.mount(createPermissionsButtons(), RobloxGui, "PermissionsButtons")
