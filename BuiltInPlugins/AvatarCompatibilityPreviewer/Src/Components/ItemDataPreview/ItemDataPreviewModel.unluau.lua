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
   local var932 = arg1.Instance
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
   local var937 = {}
   var937.FocusDirection = var0.PrimaryPart and var0.PrimaryPart.CFrame.LookVector
   var937.Model = var0
   var937.Static = true
   var937.Ambient = var5:use("ItemDataPreviewModel").InstanceAmbient
   var937.LightColor = Color3.new(1, 1, 1)
   var937.LightDirection = var0.PrimaryPart and var0.PrimaryPart.CFrame.LookVector
   return var2.createElement(var4, var937)
end
