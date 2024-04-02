-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Util.MenuHelpers)
local var3 = require(var0.Src.Resources.ModernIcons)
local var4 = require(var0.Src.Util.TreeTableHelpers)
local var5 = var0.Src.Actions
local var6 = require(var5.Clipboard.CopyInstanceToClipboard)
local var7 = require(var5.Window.SetItemsExpanded)
local var8 = var0.Src.Thunks
local var9 = require(var8.Change.CreateStyleRule)
local var10 = require(var8.Change.DeleteInstance)
local var11 = require(var8.Change.DuplicateInstance)
local var12 = require(var8.Change.PasteInstanceInto)
local var13 = require(var8.Change.ShowInstanceInExplorer)
local var14 = require(var0.Src.Types)
local var15 = require(var0.Src.Thunks.Types)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = var2(var9, arg1.Data.Selector, arg3)
      arg1:dispatch()
      var4.createItemId(var9) = true
      local var1 = var7({})
      arg1:dispatch()
   end
end
