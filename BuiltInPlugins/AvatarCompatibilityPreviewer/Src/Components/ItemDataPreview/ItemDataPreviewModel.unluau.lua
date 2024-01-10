-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Resources.Theme)
local var4 = var1.UI.AssetRenderModel
local var5 = var1.ContextServices.Stylizer
local function var6(arg1)
   if arg1:IsA("Model") then
      return arg1.PrimaryPart
   end
   if arg1:IsA("Accessory") then
      local var0 = arg1:FindFirstChild("Handle")
      if var0:IsA("BasePart") then
         return var0
         if arg1:IsA("BasePart") then
            return arg1
         end
      end
   elseif arg1:IsA("BasePart") then
      return arg1
   end
   return nil
end

return function(arg1)
   local var864 = arg1.Instance
   local var0 = var2.useMemo(function(arg1)
      if arg1:IsA("Model") then
         return arg1.PrimaryPart
      end
      if arg1:IsA("Accessory") then
         local var0 = arg1:FindFirstChild("Handle")
         if var0:IsA("BasePart") then
            return var0
            if arg1:IsA("BasePart") then
               return arg1
            end
         end
      elseif arg1:IsA("BasePart") then
         return arg1
      end
      return nil
   end, {})
   local var869 = {}
   var869.FocusDirection = var0.PrimaryPart and var0.PrimaryPart.CFrame.LookVector
   var869.Model = var0
   var869.Static = true
   var869.Ambient = var5:use("ItemDataPreviewModel").InstanceAmbient
   var869.LightColor = Color3.new(1, 1, 1)
   var869.LightDirection = var0.PrimaryPart and var0.PrimaryPart.CFrame.LookVector
   return var2.createElement(var4, var869)
end
