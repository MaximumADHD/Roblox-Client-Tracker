-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework).Util.Promise
local var3 = require(var0.Src.Actions.SetCurrentSettings)
return function(arg1)
   return function(arg1, arg2, arg3)
      if arg1 then
         local var0 = arg1.Settings.Current
         if arg1.Settings.Current.places then
            local var0 = arg1.Settings.Current.places or {}
         end
         local var338 = var2.Dictionary
         var338 = var0
         local var340 = {}
         var340.placesPageCursor = arg2
         local var341 = var2
         local var342 = var341.Dictionary
         var342 = {}
         var341 = arg1
         local var344 = var342.join(var342, var341)
         var340.places = var344
         var340.placesIndex = arg3
         var0 = var338.join(var338, var340)
         var344 = var0
         local var2 = var3(var344)
         var1:dispatch()
      end
   end
end
