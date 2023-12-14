-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   require(script.Parent.defineLuaFlags)
   local var0 = script.Parent.Parent
   local var1 = require(var0.Src.Flags.getFFlagImprovePluginSpeedPivotEditor)
   if require(var0.Src.Utility.DebugFlags).RunningUnderCLI() then
   end
   local var2 = require(var0.Packages.Roact)
   local var3 = require(var0.Packages.Rodux)
   local var4 = require(var0.Packages.Framework).ContextServices
   local var5 = require(var0.Src.Reducers.MainReducer)
   local var6 = require(var0.Src.RoduxComponents.EditPivotPlugin)
   local var53 = var0.Src
   local var7 = require(var53.Utility.ToastNotification)
   local var8 = {}
   var8.pluginName = "PivotEditor"
   var8.stringResourceTable = var0.Src.Resources.Localization.SourceStrings
   var8.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
   function var53()
      var2.unmount(var4)
   end
   
   var53()
end
