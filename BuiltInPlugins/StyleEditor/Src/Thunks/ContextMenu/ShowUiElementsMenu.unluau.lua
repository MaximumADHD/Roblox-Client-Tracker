-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Util.MenuHelpers)
local var3 = require(var0.Src.Resources.ModernIcons)
local var4 = var0.Src.Thunks
local var5 = require(var4.Change.CreateStyleRule)
local var6 = require(var4.Change.PasteInstanceInto)
local var7 = require(var0.Src.Types)
local var8 = require(var0.Src.Thunks.Types)
return function(arg1)
   return function(arg1)
      local var0 = var5(arg1, arg1.Data.Selector, true)
      var2:dispatch()
   end
end
