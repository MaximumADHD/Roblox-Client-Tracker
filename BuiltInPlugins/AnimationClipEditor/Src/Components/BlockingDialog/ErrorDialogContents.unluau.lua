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
   local var137 = {}
   var137.Size = UDim2.new(1, 0, 1, 0)
   var137.BackgroundTransparency = 1
   local var145 = {}
   local var149 = {}
   var149.SortOrder = Enum.SortOrder.LayoutOrder
   var149.FillDirection = Enum.FillDirection.Vertical
   var149.Padding = UDim.new(0, 10)
   var145.Layout = var1.createElement("UIListLayout", var149)
   local var160 = {}
   var160.LayoutOrder = 1
   var160.Size = UDim2.new(1, 0, 0, 21)
   var160.BackgroundTransparency = 1
   local var169 = {}
   local var173 = {}
   var173.Size = UDim2.new(0, 21, 0, 21)
   var173.BackgroundTransparency = 1
   var173.Image = var2.errorImage
   var169.Icon = var1.createElement("ImageLabel", var173)
   local var186 = {}
   var186.Size = UDim2.new(1, 65515, 1, 0)
   var186.Position = UDim2.new(0, 31, 0, 0)
   var186.BackgroundTransparency = 1
   var186.TextSize = var2.textSize
   var186.TextColor3 = var2.textColor
   var186.Font = var2.headerFont
   var186.TextXAlignment = Enum.TextXAlignment.Left
   local var204 = var2
   var204 = var3.ErrorHeader or var2.RIG_ERRORS_HEADER_KEY
   var186.Text = var1:getText(var204.DIALOG_KEY, var204)
   var169.Text = var1.createElement("TextLabel", var186)
   var145.Header = var1.createElement("Frame", var160, var169)
   local var213 = {}
   var213.LayoutOrder = 2
   var213.Size = UDim2.new(1, 0, 1, 65505)
   var213.BackgroundTransparency = 1
   var213.TextSize = var2.textSize
   var213.TextColor3 = var2.textColor
   var213.Font = var0.font
   var213.TextXAlignment = Enum.TextXAlignment.Left
   var213.TextYAlignment = Enum.TextYAlignment.Top
   var213.TextWrapped = true
   var213.TextTruncate = Enum.TextTruncate.AtEnd
   local var231 = {}
   var231.entries = var5
   var213.Text = var1:getText(var3.ErrorKey or var2.RIG_ERRORS_KEY, var3.ErrorType, var231)
   var145.Body = var1.createElement("TextLabel", var213)
   return var1.createElement("Frame", var137, var145)
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
   local var137 = {}
   var137.Size = UDim2.new(1, 0, 1, 0)
   var137.BackgroundTransparency = 1
   local var145 = {}
   local var149 = {}
   var149.SortOrder = Enum.SortOrder.LayoutOrder
   var149.FillDirection = Enum.FillDirection.Vertical
   var149.Padding = UDim.new(0, 10)
   var145.Layout = var1.createElement("UIListLayout", var149)
   local var160 = {}
   var160.LayoutOrder = 1
   var160.Size = UDim2.new(1, 0, 0, 21)
   var160.BackgroundTransparency = 1
   local var169 = {}
   local var173 = {}
   var173.Size = UDim2.new(0, 21, 0, 21)
   var173.BackgroundTransparency = 1
   var173.Image = var2.errorImage
   var169.Icon = var1.createElement("ImageLabel", var173)
   local var186 = {}
   var186.Size = UDim2.new(1, 65515, 1, 0)
   var186.Position = UDim2.new(0, 31, 0, 0)
   var186.BackgroundTransparency = 1
   var186.TextSize = var2.textSize
   var186.TextColor3 = var2.textColor
   var186.Font = var2.headerFont
   var186.TextXAlignment = Enum.TextXAlignment.Left
   local var204 = var2
   var204 = var3.ErrorHeader or var2.RIG_ERRORS_HEADER_KEY
   var186.Text = var1:getText(var204.DIALOG_KEY, var204)
   var169.Text = var1.createElement("TextLabel", var186)
   var145.Header = var1.createElement("Frame", var160, var169)
   local var213 = {}
   var213.LayoutOrder = 2
   var213.Size = UDim2.new(1, 0, 1, 65505)
   var213.BackgroundTransparency = 1
   var213.TextSize = var2.textSize
   var213.TextColor3 = var2.textColor
   var213.Font = var0.font
   var213.TextXAlignment = Enum.TextXAlignment.Left
   var213.TextYAlignment = Enum.TextYAlignment.Top
   var213.TextWrapped = true
   var213.TextTruncate = Enum.TextTruncate.AtEnd
   local var231 = {}
   var231.entries = var5
   var213.Text = var1:getText(var3.ErrorKey or var2.RIG_ERRORS_KEY, var3.ErrorType, var231)
   var145.Body = var1.createElement("TextLabel", var213)
   return var1.createElement("Frame", var137, var145)
end

fun0 = var3.withContext
local var236 = {}
var236.Stylizer = var3.Stylizer
var236.Localization = var3.Localization
var4 = fun0(var236)(var4)
return var4
