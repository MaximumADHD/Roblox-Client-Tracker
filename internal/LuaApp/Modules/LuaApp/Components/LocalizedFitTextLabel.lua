local Modules = game:GetService("CoreGui").RobloxGui.Modules
local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
local FitTextLabel = require(Modules.LuaApp.Components.FitTextLabel)

return RoactLocalization.connect({ "Text" })(FitTextLabel)