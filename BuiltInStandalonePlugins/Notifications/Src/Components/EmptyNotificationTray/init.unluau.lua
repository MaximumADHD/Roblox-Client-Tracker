-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.UI.LoadingIndicator
return function(arg1)
   local var0 = var3:use()
   local var131 = arg1.OnRetry
   local var1 = var1.useCallback(function()
      arg1.OnRetry(true)
   end, {})
   local var295 = arg1.Loading
   local var296 = arg1.OnLoadError
   local var301 = {}
   var301.LayoutOrder = arg1.LayoutOrder
   local var304 = var1.Tag
   var1.Tag = "Component-EmptyNotificationTray"
   var304 = var1.useMemo(function()
      if arg1.Loading then
         local var0 = {}
         local var141 = {}
         var141.Position = UDim2.new(0.5, 0, 0.5, 0)
         var141.AnchorPoint = Vector2.new(0.5, 0.5)
         var0.LoadingContent = var1.createElement(var4, var141)
         return var0
      end
      if arg1.OnLoadError then
         local var0 = {}
         var1.Tag = "Component-EmptyNotificationTray-Centering Component-EmptyNotificationTray-ErrorLayout"
         local var163 = {}
         local var167 = {}
         var167.LayoutOrder = 1
         var163.ErrorImage = var1.createElement("ImageLabel", var167)
         local var173 = {}
         var173.LayoutOrder = 2
         var173.Size = UDim2.new(1, 0, 0, 0)
         var173.AutomaticSize = Enum.AutomaticSize.Y
         var173.BackgroundTransparency = 1
         var173.BorderSizePixel = 0
         var1.Tag = "X-Column"
         local var187 = {}
         local var191 = {}
         var191.LayoutOrder = 1
         var191.Text = var0:getText("EmptyNotificationTray", "LoadErrorMain")
         var1.Tag = "Component-EmptyNotificationTray-MainText"
         var187.Mainline = var1.createElement("TextLabel", var191)
         local var205 = {}
         var205.LayoutOrder = 2
         var205.Text = var0:getText("EmptyNotificationTray", "LoadErrorSub")
         var1.Tag = "Component-EmptyNotificationTray-SubText"
         var187.Subline = var1.createElement("TextLabel", var205)
         var163.TextContent = var1.createElement("Frame", var173, var187)
         local var220 = {}
         var220.LayoutOrder = 3
         var220.Text = var0:getText("EmptyNotificationTray", "RefreshAction")
         var1.Event.MouseButton1Click = var1
         var163.RefreshButton = var1.createElement("TextButton", var220)
         var0.ErrorState = var1.createElement("Frame", {}, var163)
         return var0
      end
      local var0 = {}
      var1.Tag = "Component-EmptyNotificationTray-Centering"
      local var264 = {}
      local var268 = {}
      var268.LayoutOrder = 1
      var264.EmptyImage = var1.createElement("ImageLabel", var268)
      local var280 = {}
      var280.LayoutOrder = 2
      var280.Text = var0:getText("EmptyNotificationTray", "NoNewNotifications")
      var1.Tag = "Component-EmptyNotificationTray-SubText"
      var264.TextLabel = var1.createElement("TextLabel", var280)
      var0.EmptyState = var1.createElement("Frame", {}, var264)
      return var0
   end, {})
   return var1.createElement("Frame", var301, var304)
end
