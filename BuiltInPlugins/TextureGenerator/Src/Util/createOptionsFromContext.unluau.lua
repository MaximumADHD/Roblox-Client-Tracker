-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = var0.Src.Util
local var2 = require(var1.Constants)
local var3 = require(var1.OptionsContext)
local var4 = require(var0.Src.Types)
return function(arg1)
   local var0 = {}
   var0.promptMasking = arg1.promptMasking
   var0.smartUVUnwrap = arg1.smartUVUnwrap
   if not arg1.randomizeSeed then
      var0.seed = arg1.seed
   end
   if not arg1.rotation:FuzzyEq() then
      var0.rotation = Vector3.new(math.deg(arg1.rotation:ToEulerAnglesYXZ()), math.deg(var33), math.deg(CFrame.new()))
   end
   return var0
end
