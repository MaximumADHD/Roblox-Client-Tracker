
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

-- Camera Default ON is a dependency
local getFFlagDoNotPromptCameraPermissionsOnMount = require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)

game:DefineFastFlag("EnableAlwaysAvailableCamera", false)

return function()
    return game:GetFastFlag("EnableAlwaysAvailableCamera")
        and getFFlagDoNotPromptCameraPermissionsOnMount()
end
