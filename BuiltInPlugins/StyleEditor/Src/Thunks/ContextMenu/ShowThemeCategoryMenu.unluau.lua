-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Util.MenuHelpers)
local var3 = require(var0.Src.Resources.ModernIcons)
local var4 = require(var0.Src.Thunks.Change.CreateThemeCategory)
local var5 = require(var0.Src.Types)
local var6 = require(var0.Src.Thunks.Types)
return function()
   return function(arg1, arg2)
      local var0 = {}
      var0.Id = "ThemeCategory"
      local var41 = {}
      var41.Id = "New"
      var41.Text = arg2.Localization:getText("ContextMenu", "NewCategory")
      var41.Icon = var3.new()
      local function fun0(arg1)
         local var0 = var4()
         arg1:dispatch()
      end
      
      function var41.OnItemClicked(arg1)
         local var0 = var4()
         arg1:dispatch()
      end
      
      var0.Children = {}
      fun0 = var0
      var2.showContextMenu(arg2.Plugin, fun0)
   end
end
