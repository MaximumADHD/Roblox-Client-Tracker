-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.PluginButton
local var5 = var1.PureComponent:extend("StatusButton")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var31 = arg1.props.deviceName
   if var31 == "" then
      if arg1.props.vrEnabled then
         local var0 = "rbxasset://textures/VRStatus/ok.png"
      else
         local var0 = "rbxasset://textures/VRStatus/warning.png"
      end
   end
   local var3 = {}
   local var40 = {}
   var40.Toolbar = var0.toolbar
   var40.Active = var0.enabled
   var40.Id = "status_button"
   var40.Title = var1:getText("StatusButton", "Title")
   var40.Tooltip = var1:getText("StatusButton", "Tooltip")
   var40.Icon = "rbxasset://textures/VRStatus/error.png"
   var40.OnClick = arg1.props.showAlert
   var40.ClickableWhenViewportHidden = true
   var3.Toggle = var1.createElement(var4, var40)
   return var3
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var31 = arg1.props.deviceName
   if var31 == "" then
      if arg1.props.vrEnabled then
         local var0 = "rbxasset://textures/VRStatus/ok.png"
      else
         local var0 = "rbxasset://textures/VRStatus/warning.png"
      end
   end
   local var3 = {}
   local var40 = {}
   var40.Toolbar = var0.toolbar
   var40.Active = var0.enabled
   var40.Id = "status_button"
   var40.Title = var1:getText("StatusButton", "Title")
   var40.Tooltip = var1:getText("StatusButton", "Tooltip")
   var40.Icon = "rbxasset://textures/VRStatus/error.png"
   var40.OnClick = arg1.props.showAlert
   var40.ClickableWhenViewportHidden = true
   var3.Toggle = var1.createElement(var4, var40)
   return var3
end

fun0 = var3.withContext
local var56 = {}
var56.Localization = var3.Localization
var56.Stylizer = var3.Stylizer
var56.ServiceController = require(var0.Src.Controllers.ServiceController)
var5 = fun0(var56)(var5)
return var5
