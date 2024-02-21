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
   local var71 = {}
   var71.Style = "AcceptCancel"
   var71.Enabled = var0.Enabled
   var71.Modal = true
   var71.Title = var1:getText("BreakpointsWindow", "DeleteAll")
   var71.MinContentSize = Vector2.new(300, 100)
   local var84 = {}
   var84.Key = "Yes"
   var84.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupYes")
   local var90 = {}
   var90.Key = "No"
   var90.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupNo")
   var71.Buttons = {}
   function var71.OnButtonPressed(arg1)
      if arg1 == "Yes" then
         var0.DeleteAllBreakpoints()
      end
      var0.CloseDialog()
   end
   
   function var71.OnClose()
      var0.CloseDialog()
   end
   
   local var103 = {}
   local var107 = {}
   var107.BackgroundTransparency = 1
   var107.TextSize = 20
   var107.Text = var1:getText("BreakpointsWindow", "DeleteAllPopupText")
   var107.TextColor3 = Color3.new(1, 1, 1)
   var107.Size = UDim2.fromScale(1, 1)
   var107.Position = UDim2.fromScale(0, 0)
   var103.Contents = var1.createElement(var4, var107)
   return var1.createElement(var5, var71, var103)
end

local var130 = {}
var130.Localization = var6.Localization
var7 = var6.withContext(var130)(var7)
return var7
