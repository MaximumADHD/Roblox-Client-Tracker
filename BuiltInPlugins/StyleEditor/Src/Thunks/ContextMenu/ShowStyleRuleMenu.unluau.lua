-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Util.MenuHelpers)
local var3 = require(var0.Src.Resources.ModernIcons)
local var4 = require(var0.Src.Actions.Clipboard.CopyInstanceToClipboard)
local var5 = var0.Src.Thunks
local var6 = require(var5.Change.CreateStyleRule)
local var7 = require(var5.Change.DeleteInstance)
local var8 = require(var5.Change.DuplicateInstance)
local var9 = require(var5.Change.PasteInstanceInto)
local var10 = require(var5.Change.ShowInstanceInExplorer)
local var11 = require(var0.Src.Types)
local var12 = require(var0.Src.Thunks.Types)
return function(arg1, arg2)
   return function(arg1)
      local var0 = var2(var6, arg1.Data.Selector)
      arg1:dispatch()
   end
end
