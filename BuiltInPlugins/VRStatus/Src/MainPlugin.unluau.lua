-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.PluginToolbar
local var4 = var2.ContextServices
local var5 = var4.Plugin
local var6 = var4.Mouse
local var7 = require(var0.Src.Resources.MakeTheme)
local var8 = var0.Src.Resources.Localization.SourceStrings
local var9 = var0.Src.Resources.Localization.LocalizedStrings
local var10 = var0.Src.Components
local var11 = require(var10.AlertDialog)
local var12 = require(var10.StatusButton)
local var13 = require(var0.Src.Controllers.ServiceController)
local var14 = var1.PureComponent:extend("MainPlugin")
function var14.init(arg1)
   arg1.serviceController = var13.new()
   local var81 = {}
   var81.alertEnabled = false
   var81.deviceName = ""
   var81.vrEnabled = false
   arg1:setState(var81)
   local var89 = {}
   var89.stringResourceTable = var8
   var89.translationResourceTable = var9
   var89.pluginName = "VRStatus"
   arg1.localization = var4.Localization.new(var89)
   arg1.analytics = var4.Analytics.new(function()
      return {}
   end, {})
end

function var14.didMount(arg1)
   local var0 = arg1.serviceController
   local var1 = var0:getService("UserGameSettings")
   local var2 = var0:getService("VRService")
   local var108 = {}
   var108.deviceName = var2.VRDeviceName
   var108.vrEnabled = var1.VREnabled
   arg1:setState(var108)
   arg1._deviceNameConnection = var2:GetPropertyChangedSignal("VRDeviceName"):Connect(function()
      return {}
   end)
   arg1._vrEnabledConnection = var1:GetPropertyChangedSignal("VREnabled"):Connect(function(arg1)
      arg1.serviceController = var13.new()
      local var125 = {}
      var125.alertEnabled = false
      var125.deviceName = ""
      var125.vrEnabled = false
      arg1:setState(var125)
      local var133 = {}
      var133.stringResourceTable = var8
      var133.translationResourceTable = var9
      var133.pluginName = "VRStatus"
      arg1.localization = var4.Localization.new(var133)
      arg1.analytics = var4.Analytics.new(function()
         return {}
      end, {})
   end)
end

function var14.willUnmount(arg1)
   if arg1._deviceNameConnection then
      arg1._deviceNameConnection:Disconnect()
      arg1._deviceNameConnection = nil
   end
   if arg1._vrEnabledConnection then
      arg1._vrEnabledConnection:Disconnect()
      arg1._vrEnabledConnection = nil
   end
end

function var14.renderButtons(arg1, arg2)
   local var0 = arg1.state
   local var1 = {}
   local var162 = {}
   var162.toolbar = arg2
   var162.enabled = var0.alertEnabled
   function var162.showAlert()
      return {}
   end
   
   var162.deviceName = var0.deviceName
   var162.vrEnabled = var0.vrEnabled
   var1.Toggle = var1.createElement(var12, var162)
   return var1
end

function var14.render(arg1)
   local var0 = arg1.state
   local var1 = arg1.props.Plugin
   local var175 = var5
   var175 = var1
   local var184 = var7()
   local var185 = arg1.localization
   local var186 = arg1.analytics
   local var187 = arg1.serviceController
   local var188 = {}
   local var192 = {}
   var192.Title = arg1.localization:getText("Plugin", "Name")
   function var192.RenderButtons()
      return {}
   end
   
   var188.Toolbar = var1.createElement(var3, var192)
   local var203 = {}
   function var203.OnClose(arg1)
      arg1.serviceController = var13.new()
      local var208 = {}
      var208.alertEnabled = false
      var208.deviceName = ""
      var208.vrEnabled = false
      arg1:setState(var208)
      local var216 = {}
      var216.stringResourceTable = var8
      var216.translationResourceTable = var9
      var216.pluginName = "VRStatus"
      arg1.localization = var4.Localization.new(var216)
      arg1.analytics = var4.Analytics.new(function()
         return {}
      end, {})
   end
   
   var203.enabled = var0.alertEnabled
   var203.deviceName = var0.deviceName
   var203.vrEnabled = var0.vrEnabled
   local var6 = var1.createElement(var11, var203)
   return var4.provide({ var175.new(var175), var6.new(var1:getMouse()) }, var188)
end

return var14
