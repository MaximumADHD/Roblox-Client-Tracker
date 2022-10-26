local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local selfViewVisibilityUpdatedSignal = require(Modules.SelfView.selfViewVisibilityUpdatedSignal)

local selfViewIsOpenAndVisible = false
local publicAPI = {}

function publicAPI.getSelfViewIsOpenAndVisible()
    return selfViewIsOpenAndVisible
end

-- SelfView Internal Functions
--this does not set the self view open and visible, it only sets the state info property's value
function publicAPI.setSelfViewIsOpenAndVisible(newValue)
    selfViewIsOpenAndVisible = newValue
    selfViewVisibilityUpdatedSignal:fire()
end

return publicAPI