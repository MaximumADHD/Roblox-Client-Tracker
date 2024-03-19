-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Util.DesignHelpers)
local var3 = require(var0.Src.Util.MenuHelpers)
local var4 = require(var0.Src.Resources.ModernIcons)
local var5 = var0.Src.Thunks
local var6 = require(var5.Change.ClearStyleSheetCategory)
local var7 = require(var5.Change.CreateStyleRule)
local var8 = require(var5.Change.DeleteInstance)
local var9 = require(var5.Change.DuplicateInstance)
local var10 = require(var5.Change.PasteInstanceInto)
local var11 = require(var5.Change.SetStyleSheetCategory)
local var12 = require(var5.Change.ShowInstanceInExplorer)
local var13 = require(var0.Packages.Dash).join
local var14 = require(var0.Src.Types)
local var15 = require(var0.Src.Thunks.Types)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1(var7, arg1.Data.Selector)
      var3:dispatch()
   end
end
