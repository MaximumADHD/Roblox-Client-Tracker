-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Src.Util.RigUtils)
return function(arg1, arg2)
   if arg2.parent.Name == "Microbones" then
      if arg1.VisualizeBones then
         if arg2 then
            if arg2:FindFirstChild("Cone") then
               if arg2.Cone.Color3 ~= var1.BONE_COLOR_SELECTED then
                  arg2.Cone.Color3 = var1.BONE_COLOR_HOVER
                  arg2.Cone.Transparency = var1.BONE_TRANSPARENCY_HOVER
               end
            end
         end
         if arg2 then
            if arg2:FindFirstChild("Sphere") then
               if arg2.Sphere.Color3 ~= var1.BONE_COLOR_SELECTED then
                  arg2.Sphere.Color3 = var1.BONE_COLOR_HOVER
                  arg2.Sphere.Transparency = var1.BONE_TRANSPARENCY_HOVER
               end
            end
         end
         return nil
      end
   end
   return "SelectionBox"
end
