-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.AssetConfigConstants)
return function(arg1)
   var0.SIDE_TABS.Sales = arg1:getText("General", "SideTabSales")
   var0.SIDE_TABS.Versions = arg1:getText("General", "SideTabVersions")
   var0.SIDE_TABS.General = arg1:getText("General", "SideTabGeneral")
   var0.SIDE_TABS.Permissions = arg1:getText("General", "SideTabPermissions")
   return {}
end
