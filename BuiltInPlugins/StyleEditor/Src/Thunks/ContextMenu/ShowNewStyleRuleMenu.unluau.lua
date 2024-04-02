-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Util.MenuHelpers)
local var3 = require(var0.Src.Resources.ModernIcons)
local var4 = require(var0.Src.Thunks.Change.CreateStyleRule)
local var5 = require(var0.Src.Types)
local var6 = require(var0.Src.Thunks.Types)
return function(arg1, arg2)
   return function(arg1)
      local var0 = var4(arg1, arg2, true)
      var3:dispatch()
   end
end
