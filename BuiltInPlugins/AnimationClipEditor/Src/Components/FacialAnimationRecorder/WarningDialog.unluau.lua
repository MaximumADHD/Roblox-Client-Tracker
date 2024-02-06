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

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var0.TitleText
   local var4 = Enum.Font.SourceSansBold
   local var5 = var0.BodyText
   local var6 = Enum.Font.SourceSans
   local var224 = {}
   var224.Title = var0.Title or var1:getText("Dialog", "DefaultTitle")
   var224.OnClose = var0.OnClose
   var224.BorderPadding = 20
   var224.OnButtonPressed = var0.OnButtonPressed
   var224.Buttons = var0.Buttons
   var224.ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right
   var224.MinContentSize = Vector2.new(450, var10(var3, 20, var4, Vector2.new(450, 1000)).Y + 10 + var10(var5, 20, var6, Vector2.new(450, 1000)).Y)
   var224.Modal = true
   local var231 = {}
   local var235 = {}
   var235.Layout = Enum.FillDirection.Vertical
   var235.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var235.AutomaticSize = Enum.AutomaticSize.XY
   var235.Spacing = 10
   local var240 = {}
   local var244 = {}
   var244.AutomaticSize = Enum.AutomaticSize.XY
   var244.TextXAlignment = Enum.TextXAlignment.Left
   var244.Text = var3
   var244.Font = var4
   var244.TextSize = 20
   var244.TextColor3 = var2.TextColor
   var244.BackgroundTransparency = 1
   var244.TextWrapped = true
   var244.LayoutOrder = 1
   var240.Message = var1.createElement(var9, var244)
   local var256 = {}
   var256.AutomaticSize = Enum.AutomaticSize.XY
   var256.TextXAlignment = Enum.TextXAlignment.Left
   var256.Text = var5
   var256.Font = var6
   var256.TextSize = 20
   var256.TextColor3 = var2.TextColor
   var256.BackgroundTransparency = 1
   var256.TextWrapped = true
   var256.LayoutOrder = 2
   var240.Message2 = var1.createElement(var9, var256)
   var231.Content = var1.createElement(var8, var235, var240)
   local var7 = var0.learnMoreUrl
   if var7 then
      local var270 = {}
      var270.LayoutOrder = 3
      var270.Text = var0.learnMoreLabel or var1:getText("FaceCapture", "DefaultLearnMoreLabel")
      var270.TextYAlignment = Enum.TextYAlignment.Bottom
      function var270.OnClick(arg1)
      end
      
      local var274 = {}
      var274.Font = Enum.Font.SourceSans
      var274.TextColor = var13.Blue
      var274.TextSize = 20
      var274.ShowUnderline = true
      var270.Style = var274
      var270.Position = UDim2.new(0, 0, 0, 157)
      local var1 = var1.createElement(var3, var270)
   end
   var231.LinkText = var7
   return var1.createElement(var11, var224, var231)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var0.TitleText
   local var4 = Enum.Font.SourceSansBold
   local var5 = var0.BodyText
   local var6 = Enum.Font.SourceSans
   local var224 = {}
   var224.Title = var0.Title or var1:getText("Dialog", "DefaultTitle")
   var224.OnClose = var0.OnClose
   var224.BorderPadding = 20
   var224.OnButtonPressed = var0.OnButtonPressed
   var224.Buttons = var0.Buttons
   var224.ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right
   var224.MinContentSize = Vector2.new(450, var10(var3, 20, var4, Vector2.new(450, 1000)).Y + 10 + var10(var5, 20, var6, Vector2.new(450, 1000)).Y)
   var224.Modal = true
   local var231 = {}
   local var235 = {}
   var235.Layout = Enum.FillDirection.Vertical
   var235.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var235.AutomaticSize = Enum.AutomaticSize.XY
   var235.Spacing = 10
   local var240 = {}
   local var244 = {}
   var244.AutomaticSize = Enum.AutomaticSize.XY
   var244.TextXAlignment = Enum.TextXAlignment.Left
   var244.Text = var3
   var244.Font = var4
   var244.TextSize = 20
   var244.TextColor3 = var2.TextColor
   var244.BackgroundTransparency = 1
   var244.TextWrapped = true
   var244.LayoutOrder = 1
   var240.Message = var1.createElement(var9, var244)
   local var256 = {}
   var256.AutomaticSize = Enum.AutomaticSize.XY
   var256.TextXAlignment = Enum.TextXAlignment.Left
   var256.Text = var5
   var256.Font = var6
   var256.TextSize = 20
   var256.TextColor3 = var2.TextColor
   var256.BackgroundTransparency = 1
   var256.TextWrapped = true
   var256.LayoutOrder = 2
   var240.Message2 = var1.createElement(var9, var256)
   var231.Content = var1.createElement(var8, var235, var240)
   local var7 = var0.learnMoreUrl
   if var7 then
      local var270 = {}
      var270.LayoutOrder = 3
      var270.Text = var0.learnMoreLabel or var1:getText("FaceCapture", "DefaultLearnMoreLabel")
      var270.TextYAlignment = Enum.TextYAlignment.Bottom
      function var270.OnClick(arg1)
      end
      
      local var274 = {}
      var274.Font = Enum.Font.SourceSans
      var274.TextColor = var13.Blue
      var274.TextSize = 20
      var274.ShowUnderline = true
      var270.Style = var274
      var270.Position = UDim2.new(0, 0, 0, 157)
      local var1 = var1.createElement(var3, var270)
   end
   var231.LinkText = var7
   return var1.createElement(var11, var224, var231)
end

fun4 = var4.withContext
local var288 = {}
var288.Mouse = var4.Mouse
var288.Stylizer = var4.Stylizer
var288.Localization = var4.Localization
var12 = fun4(var288)(var12)
return var12
