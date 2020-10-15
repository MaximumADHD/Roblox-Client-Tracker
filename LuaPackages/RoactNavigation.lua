local CorePackages = game:GetService("CorePackages")
local initify = require(CorePackages.initify)
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local roactNavigationMigration = require(Modules.LuaApp.Flags.GetFFlagRoactNavigationMigration)

initify(CorePackages.Packages)

if roactNavigationMigration() then
    return require(CorePackages.Packages.RoactNavigation)
else
    return require(CorePackages.Packages.RoactNavigationOld)
end
