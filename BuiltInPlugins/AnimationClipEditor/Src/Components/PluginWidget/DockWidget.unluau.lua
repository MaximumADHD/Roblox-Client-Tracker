-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script:FindFirstAncestor("AnimationClipEditor").Src.Components.PluginWidget.PluginWidget)("DockWidget", function(arg1, arg2)
   local var0 = arg1.props
   if var0.Widget then
      return var0.Widget
   end
   return var0.Plugin:CreateDockWidgetPluginGui(arg2, DockWidgetPluginGuiInfo.new(var0.InitialDockState, var0.InitialEnabled, var0.InitialEnabledShouldOverrideRestore, var0.Size.X, var0.Size.Y, var0.MinSize.X, var0.MinSize.Y))
end)
