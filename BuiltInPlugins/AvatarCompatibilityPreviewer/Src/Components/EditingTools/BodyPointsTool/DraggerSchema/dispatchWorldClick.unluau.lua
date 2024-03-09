-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.DraggerSchemaTemplate.DraggerSchema)
local var2 = require(var0.Src.Components.EditingTools.BodyPointsTool.Types)
return function(arg1, arg2, arg3)
   if 1 < arg1.hoveredPointNames then
      arg1.showAttachmentSelectionDropdown()
      return "Ready"
   end
   local var615 = var1
   var615 = arg1
   return var615.dispatchWorldClick(var615, arg2, arg3)
end
