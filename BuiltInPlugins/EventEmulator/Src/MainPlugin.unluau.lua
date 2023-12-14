-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Src.Reducers.MainReducer)
local var4 = require(var0.Packages.Framework)
local var5 = var4.ContextServices
local var6 = var4.UI
local var7 = var6.DockWidget
local var8 = var6.PluginButton
local var9 = var6.PluginToolbar
local var10 = var5.Plugin
local var11 = var5.Mouse
local var12 = var5.Store
local var13 = require(var0.Src.Resources.MakeTheme)
local var14 = var0.Src.Resources.Localization.SourceStrings
local var15 = var0.Src.Resources.Localization.LocalizedStrings
local var16 = require(var0.Src.Components.EventEmulator)
local var47 = {}
var47.typeChecks = true
var47.propValidation = true
var47.elementTracing = true
var1.setGlobalConfig(var47)
local var18 = var1.PureComponent:extend("MainPlugin")
function var18.init(arg1, arg2)
   local var57 = {}
   var57.enabled = false
   arg1.state = var57
   function arg1.toggleState()
      local var63 = {}
      var63.enabled = arg1.state.enabled
      arg1:setState(var63)
   end
   
   function arg1.onClose()
      local var67 = {}
      var67.enabled = false
      arg1:setState(var67)
   end
   
   function arg1.onRestore(arg1)
      local var72 = {}
      var72.enabled = arg1
      arg1:setState(var72)
   end
   
   function arg1.onDockWidgetCreated()
      arg1.props.pluginLoaderContext.mainButtonClickedSignal:Connect(arg1.toggleState)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var83 = {}
      var83.enabled = arg1.Enabled
      arg1:setState(var83)
   end
   
   local var1 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var3, {}, {})
   local var98 = {}
   var98.stringResourceTable = var14
   var98.translationResourceTable = var15
   var98.pluginName = var0.Name
   arg1.localization = var5.Localization.new(var98)
end

function var18.didUpdate(arg1)
   arg1.props.pluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var18.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var2 = arg1.state.enabled
   local var119 = var10
   var119 = var1
   local var121 = var119.new(var119)
   local var122 = {}
   local var126 = {}
   var126.Enabled = var2
   var126.Widget = var0.pluginLoaderContext.mainDockWidget
   var126.Title = arg1.localization:getText("Plugin", "Toolbar")
   var126.Id = var0.Name
   var126.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var126.InitialDockState = Enum.InitialDockState.Left
   var126.Size = Vector2.new(310, 225)
   var126.MinSize = Vector2.new(310, 225)
   var126.OnClose = arg1.onClose
   var126.ShouldRestore = true
   var126.OnWidgetRestored = arg1.onRestore
   var126.OnWidgetCreated = arg1.onDockWidgetCreated
   local var4 = arg1.onWidgetEnabledChanged
   var1.Change.Enabled = var4
   local var154 = {}
   var4 = var2
   if var4 then
      local var162 = var11.new(var1:getMouse())
      local var164 = var13()
      local var168 = var12.new(arg1.store)
      local var169 = {}
      var169.EventEmulator = var1.createElement(var16)
      local var1 = var5.provide({}, var169)
   end
   var154.MainProvider = var4
   var122.MainWidget = var1.createElement(var7, var126, var154)
   return var5.provide({}, var122)
end

return var18
