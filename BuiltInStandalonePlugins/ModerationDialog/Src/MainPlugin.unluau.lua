-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("ModerationDialog")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.DockWidget
local var4 = var2.ContextServices
local var5 = var4.Plugin
local var6 = var4.Mouse
local var7 = var4.Design
local var8 = var2.Style.Themes.StudioTheme
local var9 = var2.Styling.registerPluginStyles
local var10 = var0.Src.Resources.Localization.SourceStrings
local var11 = var0.Src.Resources.Localization.LocalizedStrings
local var12 = require(var0.Src.Components.DialogContainer)
local var13 = var1.PureComponent:extend("MainPlugin")
function var13.init(arg1, arg2)
   local var145 = {}
   var145.enabled = false
   arg1.state = var145
   function arg1.toggleEnabled(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   function arg1.onClose()
      arg1:setState(function(arg1)
         local var0 = {}
         var0.enabled = arg1.enabled
         return var0
      end)
   end
   
   function arg1.onRestore()
      local var158 = {}
      var158.enabled = false
      arg1:setState(var158)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var163 = {}
      var163.enabled = arg1
      arg1:setState(var163)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var167 = {}
      var167.enabled = arg1.Enabled
      arg1:setState(var167)
   end
   
   local var173 = {}
   var173.stringResourceTable = var10
   var173.translationResourceTable = var11
   var173.pluginName = "ModerationDialog"
   arg1.localization = var4.Localization.new(var173)
   arg1.analytics = var4.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var8.new()
   arg1.design = var9(arg2.Plugin)
end

function var13.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

local var14 = {}
var14.punishedUserId = 123456789
var14.interventionId = "af9j230-34j1-2314-jfji-123j43i2oj"
var14.punishmentId = 0
var14.messageToUser = "Roblox does not permit discriminatory language, behavior, or content of any kind."
var14.punishmentTypeDescription = "Ban 1 Day"
var14.beginDate = "2024-05-01T22:27:27.378Z"
var14.endDate = "2024-05-02T22:27:27.378Z"
local var15 = {}
var15.abuseType = "ABUSE_TYPE_DISCRIMINATORY"
var15.utteranceText = "some discriminatory text"
var15.imageUrl = "null"
local var16 = {}
var16.abuseType = "ABUSE_TYPE_SPAM"
var16.utteranceText = "XDDDDD"
var16.imageUrl = "null"
local var17 = {}
var17.abuseType = "ABUSE_TYPE_SEXUAL_CONTENT"
var17.utteranceText = "Asset Name:TEST Asset ID:17357472299"
var17.imageUrl = "null"
var14.badUtterances = {}
var14.verificationCategory = ""
var14.consequenceTransparencyMessage = ""
var14.showAppealsProcessLink = false
var14.agreedCheckBoxExperimentVariant = "null"
function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var2 = arg1.localization
   local var231 = var5
   var231 = var1
   local var233 = var231.new(var231)
   local var238 = var6.new(var1:getMouse())
   local var239 = arg1.localization
   local var240 = arg1.analytics
   local var244 = var7.new(arg1.design)
   local var245 = {}
   local var249 = {}
   var249.Id = "ModerationDialog"
   var249.Enabled = false
   var249.Title = arg1.localization:getText("Plugin", "Name")
   var249.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var249.InitialDockState = Enum.InitialDockState.Bottom
   var249.Size = Vector2.new(640, 480)
   var249.MinSize = Vector2.new(250, 200)
   var249.OnClose = arg1.onClose
   var249.Widget = var0.PluginLoaderContext.mainDockWidget
   var249.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var275 = {}
   local var279 = {}
   var279.Reason = var14.badUtterances[1]
   var279.ReviewDateTime = var14.beginDate
   var279.ModeratorNote = var14.messageToUser
   var279.Enabled = arg1.state.enabled
   var275.DialogContainer = var1.createElement(var12, var279)
   local var291 = {}
   var291.StyleSheet = arg1.design
   var275.StyleLink = var1.createElement("StyleLink", var291)
   var245.MainWidget = var1.createElement(var3, var249, var275)
   return var4.provide({}, var245)
end

return var13
