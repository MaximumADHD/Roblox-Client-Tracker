local Modules = game:GetService("CoreGui").RobloxGui.Modules

local RoactLocalization = require(Modules.LuaApp.Services.RoactLocalization)
local SectionHeaderWithSeeAll = require(Modules.LuaApp.Components.SectionHeaderWithSeeAll)

return RoactLocalization.connect({ "text" })(SectionHeaderWithSeeAll)
