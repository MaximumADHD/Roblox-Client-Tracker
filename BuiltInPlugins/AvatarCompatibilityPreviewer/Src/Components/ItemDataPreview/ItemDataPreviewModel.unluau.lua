-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Flags.getFFlagAvatarPreviewerCustomShoes)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.React)
local var4 = require(var0.Src.Resources.Theme)
local var5 = var2.UI.AssetRenderModel
local var6 = var2.ContextServices.Stylizer
local function var7(arg1)
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
         if var1() then
            if arg1:IsA("Folder") then
               local var0 = arg1:FindFirstChildWhichIsA("Accessory"):FindFirstChild("Handle")
               if var0:IsA("BasePart") then
                  return var0
               end
            end
         end
      end
   else
      if arg1:IsA("BasePart") then
         return arg1
      end
      if var1() then
         if arg1:IsA("Folder") then
            local var0 = arg1:FindFirstChildWhichIsA("Accessory"):FindFirstChild("Handle")
            if var0:IsA("BasePart") then
               return var0
            end
         end
      end
   end
   return nil
end

return function(arg1)
   local var639 = arg1.Instance
   local var0 = var3.useMemo(function(arg1)
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
            if var1() then
               if arg1:IsA("Folder") then
                  local var0 = arg1:FindFirstChildWhichIsA("Accessory"):FindFirstChild("Handle")
                  if var0:IsA("BasePart") then
                     return var0
                  end
               end
            end
         end
      else
         if arg1:IsA("BasePart") then
            return arg1
         end
         if var1() then
            if arg1:IsA("Folder") then
               local var0 = arg1:FindFirstChildWhichIsA("Accessory"):FindFirstChild("Handle")
               if var0:IsA("BasePart") then
                  return var0
               end
            end
         end
      end
      return nil
   end, {})
   local var644 = {}
   var644.FocusDirection = var0.PrimaryPart and var0.PrimaryPart.CFrame.LookVector
   var644.Model = var0
   var644.Static = true
   var644.Ambient = var6:use("ItemDataPreviewModel").InstanceAmbient
   var644.LightColor = Color3.new(1, 1, 1)
   var644.LightDirection = var0.PrimaryPart and var0.PrimaryPart.CFrame.LookVector
   return var3.createElement(var5, var644)
end
