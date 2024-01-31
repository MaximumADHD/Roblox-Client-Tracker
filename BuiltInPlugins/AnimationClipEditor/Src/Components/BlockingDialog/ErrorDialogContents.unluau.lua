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
   local var100 = {}
   var100.Size = UDim2.new(1, 0, 1, 0)
   var100.BackgroundTransparency = 1
   local var108 = {}
   local var112 = {}
   var112.SortOrder = Enum.SortOrder.LayoutOrder
   var112.FillDirection = Enum.FillDirection.Vertical
   var112.Padding = UDim.new(0, 10)
   var108.Layout = var1.createElement("UIListLayout", var112)
   local var123 = {}
   var123.LayoutOrder = 1
   var123.Size = UDim2.new(1, 0, 0, 21)
   var123.BackgroundTransparency = 1
   local var132 = {}
   local var136 = {}
   var136.Size = UDim2.new(0, 21, 0, 21)
   var136.BackgroundTransparency = 1
   var136.Image = var2.errorImage
   var132.Icon = var1.createElement("ImageLabel", var136)
   local var149 = {}
   var149.Size = UDim2.new(1, 65515, 1, 0)
   var149.Position = UDim2.new(0, 31, 0, 0)
   var149.BackgroundTransparency = 1
   var149.TextSize = var2.textSize
   var149.TextColor3 = var2.textColor
   var149.Font = var2.headerFont
   var149.TextXAlignment = Enum.TextXAlignment.Left
   local var167 = var2
   var167 = var3.ErrorHeader or var2.RIG_ERRORS_HEADER_KEY
   var149.Text = var1:getText(var167.DIALOG_KEY, var167)
   var132.Text = var1.createElement("TextLabel", var149)
   var108.Header = var1.createElement("Frame", var123, var132)
   local var176 = {}
   var176.LayoutOrder = 2
   var176.Size = UDim2.new(1, 0, 1, 65505)
   var176.BackgroundTransparency = 1
   var176.TextSize = var2.textSize
   var176.TextColor3 = var2.textColor
   var176.Font = var0.font
   var176.TextXAlignment = Enum.TextXAlignment.Left
   var176.TextYAlignment = Enum.TextYAlignment.Top
   var176.TextWrapped = true
   var176.TextTruncate = Enum.TextTruncate.AtEnd
   local var194 = {}
   var194.entries = var5
   var176.Text = var1:getText(var3.ErrorKey or var2.RIG_ERRORS_KEY, var3.ErrorType, var194)
   var108.Body = var1.createElement("TextLabel", var176)
   return var1.createElement("Frame", var100, var108)
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
   local var100 = {}
   var100.Size = UDim2.new(1, 0, 1, 0)
   var100.BackgroundTransparency = 1
   local var108 = {}
   local var112 = {}
   var112.SortOrder = Enum.SortOrder.LayoutOrder
   var112.FillDirection = Enum.FillDirection.Vertical
   var112.Padding = UDim.new(0, 10)
   var108.Layout = var1.createElement("UIListLayout", var112)
   local var123 = {}
   var123.LayoutOrder = 1
   var123.Size = UDim2.new(1, 0, 0, 21)
   var123.BackgroundTransparency = 1
   local var132 = {}
   local var136 = {}
   var136.Size = UDim2.new(0, 21, 0, 21)
   var136.BackgroundTransparency = 1
   var136.Image = var2.errorImage
   var132.Icon = var1.createElement("ImageLabel", var136)
   local var149 = {}
   var149.Size = UDim2.new(1, 65515, 1, 0)
   var149.Position = UDim2.new(0, 31, 0, 0)
   var149.BackgroundTransparency = 1
   var149.TextSize = var2.textSize
   var149.TextColor3 = var2.textColor
   var149.Font = var2.headerFont
   var149.TextXAlignment = Enum.TextXAlignment.Left
   local var167 = var2
   var167 = var3.ErrorHeader or var2.RIG_ERRORS_HEADER_KEY
   var149.Text = var1:getText(var167.DIALOG_KEY, var167)
   var132.Text = var1.createElement("TextLabel", var149)
   var108.Header = var1.createElement("Frame", var123, var132)
   local var176 = {}
   var176.LayoutOrder = 2
   var176.Size = UDim2.new(1, 0, 1, 65505)
   var176.BackgroundTransparency = 1
   var176.TextSize = var2.textSize
   var176.TextColor3 = var2.textColor
   var176.Font = var0.font
   var176.TextXAlignment = Enum.TextXAlignment.Left
   var176.TextYAlignment = Enum.TextYAlignment.Top
   var176.TextWrapped = true
   var176.TextTruncate = Enum.TextTruncate.AtEnd
   local var194 = {}
   var194.entries = var5
   var176.Text = var1:getText(var3.ErrorKey or var2.RIG_ERRORS_KEY, var3.ErrorType, var194)
   var108.Body = var1.createElement("TextLabel", var176)
   return var1.createElement("Frame", var100, var108)
end

fun0 = var3.withContext
local var199 = {}
var199.Stylizer = var3.Stylizer
var199.Localization = var3.Localization
var4 = fun0(var199)(var4)
return var4
