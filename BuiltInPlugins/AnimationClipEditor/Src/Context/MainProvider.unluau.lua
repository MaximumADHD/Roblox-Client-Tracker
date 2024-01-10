-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.RoactRodux)
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Packages.Framework).ContextServices
local var5 = require(var0.Src.Util.DebugFlags)
local var6 = var1.PureComponent:extend("MainProvider")
function var6.render(arg1)
   local var138 = arg1.props.analytics
   local var0 = arg1.props.focusGui and var4.Focus.new(arg1.props.focusGui)
   local var1 = arg1.props.plugin and var4.Plugin.new(arg1.props.plugin)
   local var2 = arg1.props.localization
   local var3 = arg1.props.theme
   local var4 = arg1.props.store and var4.Store.new(arg1.props.store)
   local var5 = arg1.props.mouse and var4.Mouse.new(arg1.props.mouse)
   local var6 = arg1.props.pluginActions
   local var7 = arg1.props.signals
   local var8 = arg1.props.calloutController
   var138 = arg1.props[var1.Children]
   return var4.provide({}, var138)
end

return var6
