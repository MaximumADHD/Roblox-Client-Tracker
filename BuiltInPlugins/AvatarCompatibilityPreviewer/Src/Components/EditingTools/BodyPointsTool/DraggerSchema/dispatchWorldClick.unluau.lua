-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.DraggerSchemaTemplate.DraggerSchema)
local var2 = require(var0.Src.Components.EditingTools.BodyPointsTool.Types)
return function(arg1, arg2, arg3)
   if 1 < arg1.hoveredPointNames then
      arg1.showAttachmentSelectionDropdown()
      return "Ready"
   end
   local var649 = var1
   var649 = arg1
   return var649.dispatchWorldClick(var649, arg2, arg3)
end
