-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.UI.LoadingIndicator
return function(arg1)
   local var0 = var3:use()
   local var373 = arg1.OnRetry
   local var1 = var1.useCallback(function()
      arg1.OnRetry(true)
   end, {})
   local var506 = arg1.Loading
   local var507 = arg1.OnLoadError
   local var512 = {}
   var512.LayoutOrder = arg1.LayoutOrder
   local var515 = var1.Tag
   var1.Tag = "Component-EmptyNotificationTray"
   var515 = var1.useMemo(function()
      if arg1.Loading then
         local var0 = {}
         local var383 = {}
         var383.Position = UDim2.new(0.5, 0, 0.5, 0)
         var383.AnchorPoint = Vector2.new(0.5, 0.5)
         var0.LoadingContent = var1.createElement(var4, var383)
         return var0
      end
      if arg1.OnLoadError then
         local var0 = {}
         var1.Tag = "Component-EmptyNotificationTray-Centering Component-EmptyNotificationTray-ErrorLayout"
         local var405 = {}
         local var409 = {}
         var409.LayoutOrder = 1
         var405.ErrorImage = var1.createElement("ImageLabel", var409)
         local var415 = {}
         var415.LayoutOrder = 2
         var415.Size = UDim2.new(1, 0, 0, 0)
         var415.AutomaticSize = Enum.AutomaticSize.Y
         var415.BackgroundTransparency = 1
         var415.BorderSizePixel = 0
         var1.Tag = "X-Column"
         local var429 = {}
         local var433 = {}
         var433.LayoutOrder = 1
         var433.Text = var0:getText("EmptyNotificationTray", "LoadErrorMain")
         var1.Tag = "Component-EmptyNotificationTray-MainText"
         var429.Mainline = var1.createElement("TextLabel", var433)
         local var447 = {}
         var447.LayoutOrder = 2
         var447.Text = var0:getText("EmptyNotificationTray", "LoadErrorSub")
         var1.Tag = "Component-EmptyNotificationTray-SubText"
         var429.Subline = var1.createElement("TextLabel", var447)
         var405.TextContent = var1.createElement("Frame", var415, var429)
         local var462 = {}
         var462.LayoutOrder = 3
         var462.Text = var0:getText("EmptyNotificationTray", "RefreshAction")
         var1.Event.MouseButton1Click = var1
         var405.RefreshButton = var1.createElement("TextButton", var462)
         var0.ErrorState = var1.createElement("Frame", {}, var405)
         return var0
      end
      local var0 = {}
      var1.Tag = "Component-EmptyNotificationTray-Centering"
      local var483 = {}
      local var487 = {}
      var487.LayoutOrder = 1
      var483.EmptyImage = var1.createElement("ImageLabel", var487)
      local var493 = {}
      var493.LayoutOrder = 2
      var493.Text = var0:getText("EmptyNotificationTray", "NoNewNotifications")
      var1.Tag = "Component-EmptyNotificationTray-SubText"
      var483.TextLabel = var1.createElement("TextLabel", var493)
      var0.EmptyState = var1.createElement("Frame", {}, var483)
      return var0
   end, {})
   return var1.createElement("Frame", var512, var515)
end
