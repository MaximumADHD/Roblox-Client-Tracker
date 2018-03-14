local Modules = game:GetService("CoreGui").RobloxGui.Modules

local RoactLocalization = require(Modules.LuaApp.RoactLocalization)

return RoactLocalization.connect({ "Text" })("TextButton")