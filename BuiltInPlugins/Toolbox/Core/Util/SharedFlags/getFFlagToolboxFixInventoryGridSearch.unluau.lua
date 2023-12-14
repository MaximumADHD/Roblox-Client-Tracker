-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("ToolboxFixInventoryGridSearch", false)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.SharedFlags.getFFlagToolboxFixInventoryCreatorFilter)
return function()
   return var0() and game:GetFastFlag("ToolboxFixInventoryGridSearch")
end
