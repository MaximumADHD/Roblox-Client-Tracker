-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.LinkText
local var4 = var2.ContextServices
local var5 = game:GetService("GuiService")
local var6 = var2.UI
local var7 = var6.DockWidget
local var8 = var6.Pane
local var9 = var6.TextLabel
local var10 = var2.Util.GetTextSize
local var11 = var6.StyledDialog
local var12 = var1.PureComponent:extend("WarningDialog")
var2.Util.Typecheck.wrap(var12, script)
local var13 = var2.Style.Colors
function var12.init(arg1)
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var0.TitleText
   local var4 = Enum.Font.SourceSansBold
   local var5 = var0.BodyText
   local var6 = Enum.Font.SourceSans
   local var88 = {}
   var88.Title = var0.Title or var1:getText("Dialog", "DefaultTitle")
   var88.OnClose = var0.OnClose
   var88.BorderPadding = 20
   var88.OnButtonPressed = var0.OnButtonPressed
   var88.Buttons = var0.Buttons
   var88.ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right
   var88.MinContentSize = Vector2.new(450, var10(var3, 20, var4, Vector2.new(450, 1000)).Y + 10 + var10(var5, 20, var6, Vector2.new(450, 1000)).Y)
   var88.Modal = true
   local var95 = {}
   local var99 = {}
   var99.Layout = Enum.FillDirection.Vertical
   var99.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var99.AutomaticSize = Enum.AutomaticSize.XY
   var99.Spacing = 10
   local var104 = {}
   local var108 = {}
   var108.AutomaticSize = Enum.AutomaticSize.XY
   var108.TextXAlignment = Enum.TextXAlignment.Left
   var108.Text = var3
   var108.Font = var4
   var108.TextSize = 20
   var108.TextColor3 = var2.TextColor
   var108.BackgroundTransparency = 1
   var108.TextWrapped = true
   var108.LayoutOrder = 1
   var104.Message = var1.createElement(var9, var108)
   local var120 = {}
   var120.AutomaticSize = Enum.AutomaticSize.XY
   var120.TextXAlignment = Enum.TextXAlignment.Left
   var120.Text = var5
   var120.Font = var6
   var120.TextSize = 20
   var120.TextColor3 = var2.TextColor
   var120.BackgroundTransparency = 1
   var120.TextWrapped = true
   var120.LayoutOrder = 2
   var104.Message2 = var1.createElement(var9, var120)
   var95.Content = var1.createElement(var8, var99, var104)
   local var7 = var0.learnMoreUrl
   if var7 then
      local var134 = {}
      var134.LayoutOrder = 3
      var134.Text = var0.learnMoreLabel or var1:getText("FaceCapture", "DefaultLearnMoreLabel")
      var134.TextYAlignment = Enum.TextYAlignment.Bottom
      function var134.OnClick(arg1)
      end
      
      local var138 = {}
      var138.Font = Enum.Font.SourceSans
      var138.TextColor = var13.Blue
      var138.TextSize = 20
      var138.ShowUnderline = true
      var134.Style = var138
      var134.Position = UDim2.new(0, 0, 0, 157)
      local var1 = var1.createElement(var3, var134)
   end
   var95.LinkText = var7
   return var1.createElement(var11, var88, var95)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var0.TitleText
   local var4 = Enum.Font.SourceSansBold
   local var5 = var0.BodyText
   local var6 = Enum.Font.SourceSans
   local var88 = {}
   var88.Title = var0.Title or var1:getText("Dialog", "DefaultTitle")
   var88.OnClose = var0.OnClose
   var88.BorderPadding = 20
   var88.OnButtonPressed = var0.OnButtonPressed
   var88.Buttons = var0.Buttons
   var88.ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right
   var88.MinContentSize = Vector2.new(450, var10(var3, 20, var4, Vector2.new(450, 1000)).Y + 10 + var10(var5, 20, var6, Vector2.new(450, 1000)).Y)
   var88.Modal = true
   local var95 = {}
   local var99 = {}
   var99.Layout = Enum.FillDirection.Vertical
   var99.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var99.AutomaticSize = Enum.AutomaticSize.XY
   var99.Spacing = 10
   local var104 = {}
   local var108 = {}
   var108.AutomaticSize = Enum.AutomaticSize.XY
   var108.TextXAlignment = Enum.TextXAlignment.Left
   var108.Text = var3
   var108.Font = var4
   var108.TextSize = 20
   var108.TextColor3 = var2.TextColor
   var108.BackgroundTransparency = 1
   var108.TextWrapped = true
   var108.LayoutOrder = 1
   var104.Message = var1.createElement(var9, var108)
   local var120 = {}
   var120.AutomaticSize = Enum.AutomaticSize.XY
   var120.TextXAlignment = Enum.TextXAlignment.Left
   var120.Text = var5
   var120.Font = var6
   var120.TextSize = 20
   var120.TextColor3 = var2.TextColor
   var120.BackgroundTransparency = 1
   var120.TextWrapped = true
   var120.LayoutOrder = 2
   var104.Message2 = var1.createElement(var9, var120)
   var95.Content = var1.createElement(var8, var99, var104)
   local var7 = var0.learnMoreUrl
   if var7 then
      local var134 = {}
      var134.LayoutOrder = 3
      var134.Text = var0.learnMoreLabel or var1:getText("FaceCapture", "DefaultLearnMoreLabel")
      var134.TextYAlignment = Enum.TextYAlignment.Bottom
      function var134.OnClick(arg1)
      end
      
      local var138 = {}
      var138.Font = Enum.Font.SourceSans
      var138.TextColor = var13.Blue
      var138.TextSize = 20
      var138.ShowUnderline = true
      var134.Style = var138
      var134.Position = UDim2.new(0, 0, 0, 157)
      local var1 = var1.createElement(var3, var134)
   end
   var95.LinkText = var7
   return var1.createElement(var11, var88, var95)
end

fun2 = var4.withContext
local var152 = {}
var152.Mouse = var4.Mouse
var152.Stylizer = var4.Stylizer
var152.Localization = var4.Localization
var12 = fun2(var152)(var12)
return var12
