-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("UserInputService")
local var1 = script:FindFirstAncestor("TerrainEditor")
local var2 = require(var1.Packages.React)
local var3 = require(var1.Packages.Framework)
local var4 = var3.ContextServices.Localization
local var5 = var3.ContextServices.Stylizer
local var6 = var3.UI
local var7 = var6.Pane
local var8 = var6.LoadingBar
local var9 = var6.StyledDialog
local var10 = var6.TextLabel
local var11 = var3.Util.LayoutOrderIterator
local var12 = require(var1.Src.Hooks.useOperation)
local var13 = require(var1.Src.Types).DialogOption
return function(arg1)
   local var0 = var5:use("ProgressDialog")
   local var1 = var4:use()
   local var2 = var11.new()
   local var3 = {}
   if arg1.OnPause then
      if arg1.OnResume then
         if arg1.Paused then
            local var123 = {}
            var123.Key = var13.Resume
            var123.Text = var1:getText("Dialog", var13.Resume)
            table.insert(var3, var123)
         else
            local var133 = {}
            var133.Key = var13.Pause
            var133.Text = var1:getText("Dialog", var13.Pause)
            table.insert(var3, var133)
         end
      end
   end
   if arg1.OnCancel then
      local var144 = {}
      var144.Key = var13.Cancel
      var144.Text = var1:getText("Dialog", var13.Cancel)
      table.insert(var3, var144)
   end
   local var157 = {}
   var157.Enabled = arg1.Enabled
   var157.Modal = false
   var157.Title = arg1.Title
   var157.MinContentSize = var0.MinContentSize
   var157.Buttons = var3
   function var157.OnButtonPressed(arg1)
      if arg1 == "OnPause" then
         if arg1.OnPause then
            arg1.OnPause()
         end
      end
      if arg1 == "OnPause" then
         if arg1.OnResume then
            arg1.OnResume()
         end
      end
      if arg1 == "OnPause" then
         if arg1.OnCancel then
            arg1.OnCancel()
         end
      end
   end
   
   var157.OnClose = arg1.OnClose
   local var182 = {}
   local var186 = {}
   var186.Layout = Enum.FillDirection.Vertical
   var186.Padding = var0.Padding
   var186.Size = UDim2.fromScale(1, 1)
   var186.Spacing = var0.Spacing
   local var194 = {}
   local var198 = {}
   var198.LayoutOrder = var2:getNextOrder()
   var198.Size = UDim2.new(1, 0, 0, var0.DescriptionHeight)
   var198.Text = arg1.Description
   var194.Description = var2.createElement(var10, var198)
   local var212 = {}
   var212.LayoutOrder = var2:getNextOrder()
   var212.Progress = arg1.Progress
   var212.Size = UDim2.new(1, 0, 0, var0.ProgressHeight)
   var194.Progress = var2.createElement(var8, var212)
   var182.Contents = var2.createElement(var7, var186, var194)
   return var2.createElement(var9, var157, var182)
end
