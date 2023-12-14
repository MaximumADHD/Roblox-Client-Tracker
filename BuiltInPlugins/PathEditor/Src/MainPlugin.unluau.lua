-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.ReactRoblox)
local var4 = require(var0.Packages.Rodux)
local var5 = game:GetService("CoreGui")
local var6 = require(var0.Packages.Framework).ContextServices
local var7 = var6.Plugin
local var8 = var6.Mouse
local var9 = var6.Store
local var10 = require(var0.Src.Reducers.MainReducer)
local var11 = require(var0.Src.Resources.MakeTheme)
local var12 = var0.Src.Resources.Localization.SourceStrings
local var13 = var0.Src.Resources.Localization.LocalizedStrings
local var14 = require(var0.Src.Util.MakePluginActions)
local var15 = var0.Src.Components
local var16 = require(var15.ControlPointEditGui)
local var17 = require(var15.SelectionListener)
local var18 = require(var15.PathToolbar)
local var19 = require(var15.MoveBaseGui)
local var20 = require(var15.VisualizationGui)
local var21 = require(var15.AddPointComponent)
local var22 = var2.PureComponent:extend("MainPlugin")
function var22.init(arg1, arg2)
   arg1.state = {}
   local var163 = var4.thunkMiddleware
   arg1.store = var4.Store.new(var10, nil, {}, nil)
   local var169 = {}
   var169.stringResourceTable = var12
   var169.translationResourceTable = var13
   var169.pluginName = "PathEditor"
   arg1.localization = var6.Localization.new(var169)
   arg1.analytics = var6.Analytics.new(function()
      return {}
   end, {})
   arg1.actions = var6.PluginActions.new(arg2.Plugin, var14(arg2.plugin, arg1.localization))
end

function var22.render(arg1)
   local var0 = arg1.props.Plugin
   local var195 = var7
   var195 = var0
   local var209 = arg1.localization
   local var210 = arg1.analytics
   local var211 = arg1.actions
   local var212 = {}
   local var215 = {}
   local var219 = {}
   var219.Name = "PathEditFolder"
   local var221 = {}
   var221.ControlPointEditGui = var2.createElement(var16)
   var221.PathToolbar = var2.createElement(var18)
   var221.MoveBaseGui = var2.createElement(var19)
   var221.VisualizationGui = var2.createElement(var20)
   var221.AddPointComponent = var2.createElement(var21)
   var215.PathEditFolder = var2.createElement("Folder", var219, var221)
   var212.Portal = var3.createPortal(var215, var5)
   var212.SelectionListener = var2.createElement(var17)
   return var6.provide({ var195.new(var195), var9.new(arg1.store), var8.new(var0:getMouse()), var11() }, var212)
end

return var22
