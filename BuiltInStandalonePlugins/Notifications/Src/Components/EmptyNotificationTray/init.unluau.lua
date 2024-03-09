-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.UI.LoadingIndicator
return function(arg1)
   local var0 = var3:use()
   local var26 = arg1.OnRetry
   local var1 = var1.useCallback(function()
      arg1.OnRetry(true)
   end, {})
   local var31 = arg1.Loading
   local var32 = arg1.OnLoadError
   local var37 = {}
   var37.LayoutOrder = arg1.LayoutOrder
   local var40 = var1.Tag
   var1.Tag = "Component-EmptyNotificationTray"
   var40 = var1.useMemo(function()
      if arg1.Loading then
         local var0 = {}
         local var36 = {}
         var36.Position = UDim2.new(0.5, 0, 0.5, 0)
         var36.AnchorPoint = Vector2.new(0.5, 0.5)
         var0.LoadingContent = var1.createElement(var4, var36)
         return var0
      end
      if arg1.OnLoadError then
         local var0 = {}
         var1.Tag = "Component-EmptyNotificationTray-Centering Component-EmptyNotificationTray-ErrorLayout"
         local var58 = {}
         local var62 = {}
         var62.LayoutOrder = 1
         var58.ErrorImage = var1.createElement("ImageLabel", var62)
         local var68 = {}
         var68.LayoutOrder = 2
         var68.Size = UDim2.new(1, 0, 0, 0)
         var68.AutomaticSize = Enum.AutomaticSize.Y
         var68.BackgroundTransparency = 1
         var68.BorderSizePixel = 0
         var1.Tag = "X-Column"
         local var82 = {}
         local var86 = {}
         var86.LayoutOrder = 1
         var86.Text = var0:getText("EmptyNotificationTray", "LoadErrorMain")
         var1.Tag = "Component-EmptyNotificationTray-MainText"
         var82.Mainline = var1.createElement("TextLabel", var86)
         local var100 = {}
         var100.LayoutOrder = 2
         var100.Text = var0:getText("EmptyNotificationTray", "LoadErrorSub")
         var1.Tag = "Component-EmptyNotificationTray-SubText"
         var82.Subline = var1.createElement("TextLabel", var100)
         var58.TextContent = var1.createElement("Frame", var68, var82)
         local var115 = {}
         var115.LayoutOrder = 3
         var115.Text = var0:getText("EmptyNotificationTray", "RefreshAction")
         var1.Event.MouseButton1Click = var1
         var58.RefreshButton = var1.createElement("TextButton", var115)
         var0.ErrorState = var1.createElement("Frame", {}, var58)
         return var0
      end
      local var0 = {}
      var1.Tag = "Component-EmptyNotificationTray-Centering"
      local var8 = {}
      local var12 = {}
      var12.LayoutOrder = 1
      var8.EmptyImage = var1.createElement("ImageLabel", var12)
      local var18 = {}
      var18.LayoutOrder = 2
      var18.Text = var0:getText("EmptyNotificationTray", "NoNewNotifications")
      var1.Tag = "Component-EmptyNotificationTray-SubText"
      var8.TextLabel = var1.createElement("TextLabel", var18)
      var0.EmptyState = var1.createElement("Frame", {}, var8)
      return var0
   end, {})
   return var1.createElement("Frame", var37, var40)
end
