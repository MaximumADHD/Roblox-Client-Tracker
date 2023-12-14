-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Parent.Core.Components.PluginWidget.PluginWidget)("DockWidget", function(arg1, arg2)
   local var0 = arg1.props
   if var0.Widget then
      return var0.Widget
   end
   return var0.plugin:CreateDockWidgetPluginGui(arg2, DockWidgetPluginGuiInfo.new(var0.InitialDockState, var0.InitialEnabled, var0.InitialEnabledShouldOverrideRestore, var0.FloatingXSize, var0.FloatingYSize, var0.MinWidth, var0.MinHeight))
end)
