-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Selection")
local var1 = game:GetService("Workspace")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Src.Actions.SetAlignEnabled)
local var4 = require(var2.Src.Utility.AlignToolError)
local var5 = require(var2.Src.Utility.RelativeTo)
local function fun0(arg1)
   return arg1.X or arg1.Y or arg1.Z
end

return function()
   local var0 = var1.Terrain
   local function fun0(arg1)
      return arg1.X or arg1.Y or arg1.Z
   end
   
   return function(arg1)
      if arg1:IsA("BasePart") then
         if arg1 ~= var5 then
            return true
         end
      end
      if arg1:IsA("Model") then
         return true
      end
      return false
   end
end
