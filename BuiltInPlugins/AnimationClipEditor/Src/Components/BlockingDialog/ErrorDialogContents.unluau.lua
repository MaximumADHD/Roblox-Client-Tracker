-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.PureComponent:extend("ErrorDialogContents")
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.Localization
   local var2 = var0.dialogTheme
   local var3 = arg1.props
   local var4 = var3.Entries
   local var5 = nil
   if var4 then
      var5 = table.concat(var4, "; ")
   end
   local var48 = {}
   var48.Size = UDim2.new(1, 0, 1, 0)
   var48.BackgroundTransparency = 1
   local var56 = {}
   local var60 = {}
   var60.SortOrder = Enum.SortOrder.LayoutOrder
   var60.FillDirection = Enum.FillDirection.Vertical
   var60.Padding = UDim.new(0, 10)
   var56.Layout = var1.createElement("UIListLayout", var60)
   local var71 = {}
   var71.LayoutOrder = 1
   var71.Size = UDim2.new(1, 0, 0, 21)
   var71.BackgroundTransparency = 1
   local var80 = {}
   local var84 = {}
   var84.Size = UDim2.new(0, 21, 0, 21)
   var84.BackgroundTransparency = 1
   var84.Image = var2.errorImage
   var80.Icon = var1.createElement("ImageLabel", var84)
   local var97 = {}
   var97.Size = UDim2.new(1, 65515, 1, 0)
   var97.Position = UDim2.new(0, 31, 0, 0)
   var97.BackgroundTransparency = 1
   var97.TextSize = var2.textSize
   var97.TextColor3 = var2.textColor
   var97.Font = var2.headerFont
   var97.TextXAlignment = Enum.TextXAlignment.Left
   local var115 = var2
   var115 = var3.ErrorHeader or var2.RIG_ERRORS_HEADER_KEY
   var97.Text = var1:getText(var115.DIALOG_KEY, var115)
   var80.Text = var1.createElement("TextLabel", var97)
   var56.Header = var1.createElement("Frame", var71, var80)
   local var124 = {}
   var124.LayoutOrder = 2
   var124.Size = UDim2.new(1, 0, 1, 65505)
   var124.BackgroundTransparency = 1
   var124.TextSize = var2.textSize
   var124.TextColor3 = var2.textColor
   var124.Font = var0.font
   var124.TextXAlignment = Enum.TextXAlignment.Left
   var124.TextYAlignment = Enum.TextYAlignment.Top
   var124.TextWrapped = true
   var124.TextTruncate = Enum.TextTruncate.AtEnd
   local var142 = {}
   var142.entries = var5
   var124.Text = var1:getText(var3.ErrorKey or var2.RIG_ERRORS_KEY, var3.ErrorType, var142)
   var56.Body = var1.createElement("TextLabel", var124)
   return var1.createElement("Frame", var48, var56)
end

function var4.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.Localization
   local var2 = var0.dialogTheme
   local var3 = arg1.props
   local var4 = var3.Entries
   local var5 = nil
   if var4 then
      var5 = table.concat(var4, "; ")
   end
   local var48 = {}
   var48.Size = UDim2.new(1, 0, 1, 0)
   var48.BackgroundTransparency = 1
   local var56 = {}
   local var60 = {}
   var60.SortOrder = Enum.SortOrder.LayoutOrder
   var60.FillDirection = Enum.FillDirection.Vertical
   var60.Padding = UDim.new(0, 10)
   var56.Layout = var1.createElement("UIListLayout", var60)
   local var71 = {}
   var71.LayoutOrder = 1
   var71.Size = UDim2.new(1, 0, 0, 21)
   var71.BackgroundTransparency = 1
   local var80 = {}
   local var84 = {}
   var84.Size = UDim2.new(0, 21, 0, 21)
   var84.BackgroundTransparency = 1
   var84.Image = var2.errorImage
   var80.Icon = var1.createElement("ImageLabel", var84)
   local var97 = {}
   var97.Size = UDim2.new(1, 65515, 1, 0)
   var97.Position = UDim2.new(0, 31, 0, 0)
   var97.BackgroundTransparency = 1
   var97.TextSize = var2.textSize
   var97.TextColor3 = var2.textColor
   var97.Font = var2.headerFont
   var97.TextXAlignment = Enum.TextXAlignment.Left
   local var115 = var2
   var115 = var3.ErrorHeader or var2.RIG_ERRORS_HEADER_KEY
   var97.Text = var1:getText(var115.DIALOG_KEY, var115)
   var80.Text = var1.createElement("TextLabel", var97)
   var56.Header = var1.createElement("Frame", var71, var80)
   local var124 = {}
   var124.LayoutOrder = 2
   var124.Size = UDim2.new(1, 0, 1, 65505)
   var124.BackgroundTransparency = 1
   var124.TextSize = var2.textSize
   var124.TextColor3 = var2.textColor
   var124.Font = var0.font
   var124.TextXAlignment = Enum.TextXAlignment.Left
   var124.TextYAlignment = Enum.TextYAlignment.Top
   var124.TextWrapped = true
   var124.TextTruncate = Enum.TextTruncate.AtEnd
   local var142 = {}
   var142.entries = var5
   var124.Text = var1:getText(var3.ErrorKey or var2.RIG_ERRORS_KEY, var3.ErrorType, var142)
   var56.Body = var1.createElement("TextLabel", var124)
   return var1.createElement("Frame", var48, var56)
end

fun0 = var3.withContext
local var147 = {}
var147.Stylizer = var3.Stylizer
var147.Localization = var3.Localization
var4 = fun0(var147)(var4)
return var4
