-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.RobloxAPI.Url.new()
local var4 = var2.ContextServices.Localization
local var5 = game:GetService("GuiService")
local var6 = require(var0.Src.Contexts.AnalyticsContext)
local var7 = var3.composeUrl(var3.CREATOR_HUB_URL, "settings/notifications")
return function(arg1)
   local var0 = var6:use()
   local var51 = {}
   var51.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Component-NotificationHeader"
   local var56 = {}
   local var60 = {}
   var60.Text = var4:use():getText("Plugin", "Name")
   var60.LayoutOrder = 1
   var56.Title = var1.createElement("TextLabel", var60)
   local var70 = {}
   var70.LayoutOrder = 2
   local var72 = {}
   var1.Event.MouseButton1Click = var1.useCallback(function()
      var5:OpenBrowserWindow(var7)
      var0.eventHandlers.settingsButtonClicked()
   end, {})
   var1.Tag = "Plugin-Icon-NotificationSettings"
   var72.SettingsButton = var1.createElement("ImageButton", {})
   var56.SettingsFrame = var1.createElement("Frame", var70, var72)
   return var1.createElement("Frame", var51, var56)
end
