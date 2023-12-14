-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(script.WorldVisual)
local var3 = require(script.WorldProvider)
local function fun0(arg1)
   if arg1.enabled then
      local var184 = {}
      function var184.render(arg1)
         local var189 = {}
         var189.partsList = arg1
         var189.tags = arg1.tags
         return var1.createElement(var2, var189)
      end
      
      return var1.createElement(var3, {}, var184)
   end
   return nil
end

fun0 = require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.enabled = arg1.WorldView
   var0.tags = arg1.TagData
   return var0
end)(fun0)
return fun0
