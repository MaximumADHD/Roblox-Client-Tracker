local Modules = game:GetService("CoreGui").RobloxGui.Modules

local RoactLocalization = require(Modules.LuaApp.Services.RoactLocalization)

return RoactLocalization.connect({ "PlaceholderText" })("TextBox")
