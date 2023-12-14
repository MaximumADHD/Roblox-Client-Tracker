-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Thunks.SaveChanges)
local var2 = require(var0.Src.Components.Dialog.WarningDialog)
local var3 = require(var0.Src.Components.Dialog.SimpleDialog)
local var4 = require(var0.Packages.Framework).Util.Promise
return function(arg1, arg2)
   return function()
      local var0 = arg1
      local var33 = pairs(var0.Settings.Warnings)
      if not var4.showDialog(arg2, var2[var0]):await() then
         var1()
      end
      var3()
   end
end
