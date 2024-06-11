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
   local var209 = {}
   var209.Style = "AcceptCancel"
   var209.Enabled = var0.Enabled
   var209.Modal = true
   var209.Title = var1:getText("BreakpointsWindow", "DeleteAll")
   var209.MinContentSize = Vector2.new(300, 100)
   local var222 = {}
   var222.Key = "Yes"
   var222.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupYes")
   local var228 = {}
   var228.Key = "No"
   var228.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupNo")
   var209.Buttons = {}
   function var209.OnButtonPressed(arg1)
      if arg1 == "Yes" then
         var0.DeleteAllBreakpoints()
      end
      var0.CloseDialog()
   end
   
   function var209.OnClose()
      var0.CloseDialog()
   end
   
   local var241 = {}
   local var245 = {}
   var245.BackgroundTransparency = 1
   var245.TextSize = 20
   var245.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupText")
   var245.TextColor3 = Color3.new(1, 1, 1)
   var245.Size = UDim2.fromScale(1, 1)
   var245.Position = UDim2.fromScale(0, 0)
   var241.Contents = var1.createElement(var4, var245)
   return var1.createElement(var5, var209, var241)
end

local var268 = {}
var268.Localization = var6.Localization
var7 = var6.withContext(var268)(var7)
return var7
