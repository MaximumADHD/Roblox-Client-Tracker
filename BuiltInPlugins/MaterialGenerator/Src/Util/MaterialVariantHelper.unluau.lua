-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("MaterialGenerator").Src.Util.getNewMaterialName)
local var1 = {}
function var1.create(arg1, arg2, arg3)
   local var0 = Instance.new("MaterialVariant")
   var0.Name = var0(arg2, arg3)
   var0.Archivable = false
   var0.ColorMap = arg1
   var0:SetAttribute("RBX_MaterialGenerator_Generated", true)
   var0:SetAttribute("RBX_MaterialGenerator_HasBaseMaterial", true)
   var0:SetAttribute("RBX_MaterialGenerator_IsPreview", false)
   return var0
end

function var1.hasBaseMaterial(arg1)
   return arg1:GetAttribute("RBX_MaterialGenerator_HasBaseMaterial")
end

function var1.markHasBaseMaterial(arg1)
   if not arg1:GetAttribute("RBX_MaterialGenerator_Generated") then
      warn(`{arg1}did not have generated set. This is a bug in the plugin, please report it.`)
   end
   arg1:SetAttribute("RBX_MaterialGenerator_HasBaseMaterial", nil)
end

function var1.isPreview(arg1)
   if arg1:GetAttribute("RBX_MaterialGenerator_IsPreview") == "GetAttribute" then
      local var0 = false
   end
   return true
end

function var1.setIsPreview(arg1, arg2)
   if not arg1:GetAttribute("RBX_MaterialGenerator_Generated") then
      warn(`{arg1}did not have generated set. This is a bug in the plugin, please report it.`)
   end
   arg1:SetAttribute("RBX_MaterialGenerator_IsPreview", arg2)
end

return var1
