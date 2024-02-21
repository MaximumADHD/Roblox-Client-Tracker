-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.PureComponent:extend("ErrorDialogContents")
local function fun4(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.Localization
   local var2 = var0.dialogTheme
   local var3 = arg1.props
   local var4 = var3.Entries
   local var5 = nil
   if var4 then
      var5 = table.concat(var4, "; ")
   end
   local var254 = {}
   var254.Size = UDim2.new(1, 0, 1, 0)
   var254.BackgroundTransparency = 1
   local var262 = {}
   local var266 = {}
   var266.SortOrder = Enum.SortOrder.LayoutOrder
   var266.FillDirection = Enum.FillDirection.Vertical
   var266.Padding = UDim.new(0, 10)
   var262.Layout = var1.createElement("UIListLayout", var266)
   local var277 = {}
   var277.LayoutOrder = 1
   var277.Size = UDim2.new(1, 0, 0, 21)
   var277.BackgroundTransparency = 1
   local var286 = {}
   local var290 = {}
   var290.Size = UDim2.new(0, 21, 0, 21)
   var290.BackgroundTransparency = 1
   var290.Image = var2.errorImage
   var286.Icon = var1.createElement("ImageLabel", var290)
   local var303 = {}
   var303.Size = UDim2.new(1, 65515, 1, 0)
   var303.Position = UDim2.new(0, 31, 0, 0)
   var303.BackgroundTransparency = 1
   var303.TextSize = var2.textSize
   var303.TextColor3 = var2.textColor
   var303.Font = var2.headerFont
   var303.TextXAlignment = Enum.TextXAlignment.Left
   local var321 = var2
   var321 = var3.ErrorHeader or var2.RIG_ERRORS_HEADER_KEY
   var303.Text = var1:getText(var321.DIALOG_KEY, var321)
   var286.Text = var1.createElement("TextLabel", var303)
   var262.Header = var1.createElement("Frame", var277, var286)
   local var330 = {}
   var330.LayoutOrder = 2
   var330.Size = UDim2.new(1, 0, 1, 65505)
   var330.BackgroundTransparency = 1
   var330.TextSize = var2.textSize
   var330.TextColor3 = var2.textColor
   var330.Font = var0.font
   var330.TextXAlignment = Enum.TextXAlignment.Left
   var330.TextYAlignment = Enum.TextYAlignment.Top
   var330.TextWrapped = true
   var330.TextTruncate = Enum.TextTruncate.AtEnd
   local var348 = {}
   var348.entries = var5
   var330.Text = var1:getText(var3.ErrorKey or var2.RIG_ERRORS_KEY, var3.ErrorType, var348)
   var262.Body = var1.createElement("TextLabel", var330)
   return var1.createElement("Frame", var254, var262)
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
   local var254 = {}
   var254.Size = UDim2.new(1, 0, 1, 0)
   var254.BackgroundTransparency = 1
   local var262 = {}
   local var266 = {}
   var266.SortOrder = Enum.SortOrder.LayoutOrder
   var266.FillDirection = Enum.FillDirection.Vertical
   var266.Padding = UDim.new(0, 10)
   var262.Layout = var1.createElement("UIListLayout", var266)
   local var277 = {}
   var277.LayoutOrder = 1
   var277.Size = UDim2.new(1, 0, 0, 21)
   var277.BackgroundTransparency = 1
   local var286 = {}
   local var290 = {}
   var290.Size = UDim2.new(0, 21, 0, 21)
   var290.BackgroundTransparency = 1
   var290.Image = var2.errorImage
   var286.Icon = var1.createElement("ImageLabel", var290)
   local var303 = {}
   var303.Size = UDim2.new(1, 65515, 1, 0)
   var303.Position = UDim2.new(0, 31, 0, 0)
   var303.BackgroundTransparency = 1
   var303.TextSize = var2.textSize
   var303.TextColor3 = var2.textColor
   var303.Font = var2.headerFont
   var303.TextXAlignment = Enum.TextXAlignment.Left
   local var321 = var2
   var321 = var3.ErrorHeader or var2.RIG_ERRORS_HEADER_KEY
   var303.Text = var1:getText(var321.DIALOG_KEY, var321)
   var286.Text = var1.createElement("TextLabel", var303)
   var262.Header = var1.createElement("Frame", var277, var286)
   local var330 = {}
   var330.LayoutOrder = 2
   var330.Size = UDim2.new(1, 0, 1, 65505)
   var330.BackgroundTransparency = 1
   var330.TextSize = var2.textSize
   var330.TextColor3 = var2.textColor
   var330.Font = var0.font
   var330.TextXAlignment = Enum.TextXAlignment.Left
   var330.TextYAlignment = Enum.TextYAlignment.Top
   var330.TextWrapped = true
   var330.TextTruncate = Enum.TextTruncate.AtEnd
   local var348 = {}
   var348.entries = var5
   var330.Text = var1:getText(var3.ErrorKey or var2.RIG_ERRORS_KEY, var3.ErrorType, var348)
   var262.Body = var1.createElement("TextLabel", var330)
   return var1.createElement("Frame", var254, var262)
end

fun4 = var3.withContext
local var353 = {}
var353.Stylizer = var3.Stylizer
var353.Localization = var3.Localization
var4 = fun4(var353)(var4)
return var4
