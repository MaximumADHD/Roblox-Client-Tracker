-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Util.Constants)
local function var3(arg1)
   if arg1:IsA("MeshPart") then
      local var0 = arg1.TextureID
      arg1.TextureID = ""
      return function()
         arg1.TextureID = var0
      end
   end
   if arg1:IsA("SurfaceAppearance") then
      local var0 = arg1.ColorMap
      arg1.ColorMap = ""
      return function()
         arg1.ColorMap = var0
      end
   end
   return nil
end

return function(arg1, arg2)
   local var0 = arg2
   local var1 = arg1
   var1.useEffect(function()
      arg1.TextureID = var0
   end, {})
end
