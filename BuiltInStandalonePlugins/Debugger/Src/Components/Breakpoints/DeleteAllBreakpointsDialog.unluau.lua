-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.TextLabel
local var5 = var3.StyledDialog
local var6 = var2.ContextServices
local var7 = var1.PureComponent:extend("DeleteAllBreakpointsDialog")
function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var28 = {}
   var28.Style = "AcceptCancel"
   var28.Enabled = var0.Enabled
   var28.Modal = true
   var28.Title = var1:getText("BreakpointsWindow", "DeleteAll")
   var28.MinContentSize = Vector2.new(300, 100)
   local var41 = {}
   var41.Key = "Yes"
   var41.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupYes")
   local var47 = {}
   var47.Key = "No"
   var47.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupNo")
   var28.Buttons = {}
   function var28.OnButtonPressed(arg1)
      if arg1 == "Yes" then
         var0.DeleteAllBreakpoints()
      end
      var0.CloseDialog()
   end
   
   function var28.OnClose()
      var0.CloseDialog()
   end
   
   local var60 = {}
   local var64 = {}
   var64.BackgroundTransparency = 1
   var64.TextSize = 20
   var64.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupText")
   var64.TextColor3 = Color3.new(1, 1, 1)
   var64.Size = UDim2.fromScale(1, 1)
   var64.Position = UDim2.fromScale(0, 0)
   var60.Contents = var1.createElement(var4, var64)
   return var1.createElement(var5, var28, var60)
end

local var87 = {}
var87.Localization = var6.Localization
var7 = var6.withContext(var87)(var7)
return var7
