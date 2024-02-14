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

local function fun15(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var0.TitleText
   local var4 = Enum.Font.SourceSansBold
   local var5 = var0.BodyText
   local var6 = Enum.Font.SourceSans
   local var555 = {}
   var555.Title = var0.Title or var1:getText("Dialog", "DefaultTitle")
   var555.OnClose = var0.OnClose
   var555.BorderPadding = 20
   var555.OnButtonPressed = var0.OnButtonPressed
   var555.Buttons = var0.Buttons
   var555.ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right
   var555.MinContentSize = Vector2.new(450, var10(var3, 20, var4, Vector2.new(450, 1000)).Y + 10 + var10(var5, 20, var6, Vector2.new(450, 1000)).Y)
   var555.Modal = true
   local var562 = {}
   local var566 = {}
   var566.Layout = Enum.FillDirection.Vertical
   var566.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var566.AutomaticSize = Enum.AutomaticSize.XY
   var566.Spacing = 10
   local var571 = {}
   local var575 = {}
   var575.AutomaticSize = Enum.AutomaticSize.XY
   var575.TextXAlignment = Enum.TextXAlignment.Left
   var575.Text = var3
   var575.Font = var4
   var575.TextSize = 20
   var575.TextColor3 = var2.TextColor
   var575.BackgroundTransparency = 1
   var575.TextWrapped = true
   var575.LayoutOrder = 1
   var571.Message = var1.createElement(var9, var575)
   local var587 = {}
   var587.AutomaticSize = Enum.AutomaticSize.XY
   var587.TextXAlignment = Enum.TextXAlignment.Left
   var587.Text = var5
   var587.Font = var6
   var587.TextSize = 20
   var587.TextColor3 = var2.TextColor
   var587.BackgroundTransparency = 1
   var587.TextWrapped = true
   var587.LayoutOrder = 2
   var571.Message2 = var1.createElement(var9, var587)
   var562.Content = var1.createElement(var8, var566, var571)
   local var7 = var0.learnMoreUrl
   if var7 then
      local var601 = {}
      var601.LayoutOrder = 3
      var601.Text = var0.learnMoreLabel or var1:getText("FaceCapture", "DefaultLearnMoreLabel")
      var601.TextYAlignment = Enum.TextYAlignment.Bottom
      function var601.OnClick(arg1)
      end
      
      local var605 = {}
      var605.Font = Enum.Font.SourceSans
      var605.TextColor = var13.Blue
      var605.TextSize = 20
      var605.ShowUnderline = true
      var601.Style = var605
      var601.Position = UDim2.new(0, 0, 0, 157)
      local var1 = var1.createElement(var3, var601)
   end
   var562.LinkText = var7
   return var1.createElement(var11, var555, var562)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var0.TitleText
   local var4 = Enum.Font.SourceSansBold
   local var5 = var0.BodyText
   local var6 = Enum.Font.SourceSans
   local var555 = {}
   var555.Title = var0.Title or var1:getText("Dialog", "DefaultTitle")
   var555.OnClose = var0.OnClose
   var555.BorderPadding = 20
   var555.OnButtonPressed = var0.OnButtonPressed
   var555.Buttons = var0.Buttons
   var555.ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right
   var555.MinContentSize = Vector2.new(450, var10(var3, 20, var4, Vector2.new(450, 1000)).Y + 10 + var10(var5, 20, var6, Vector2.new(450, 1000)).Y)
   var555.Modal = true
   local var562 = {}
   local var566 = {}
   var566.Layout = Enum.FillDirection.Vertical
   var566.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var566.AutomaticSize = Enum.AutomaticSize.XY
   var566.Spacing = 10
   local var571 = {}
   local var575 = {}
   var575.AutomaticSize = Enum.AutomaticSize.XY
   var575.TextXAlignment = Enum.TextXAlignment.Left
   var575.Text = var3
   var575.Font = var4
   var575.TextSize = 20
   var575.TextColor3 = var2.TextColor
   var575.BackgroundTransparency = 1
   var575.TextWrapped = true
   var575.LayoutOrder = 1
   var571.Message = var1.createElement(var9, var575)
   local var587 = {}
   var587.AutomaticSize = Enum.AutomaticSize.XY
   var587.TextXAlignment = Enum.TextXAlignment.Left
   var587.Text = var5
   var587.Font = var6
   var587.TextSize = 20
   var587.TextColor3 = var2.TextColor
   var587.BackgroundTransparency = 1
   var587.TextWrapped = true
   var587.LayoutOrder = 2
   var571.Message2 = var1.createElement(var9, var587)
   var562.Content = var1.createElement(var8, var566, var571)
   local var7 = var0.learnMoreUrl
   if var7 then
      local var601 = {}
      var601.LayoutOrder = 3
      var601.Text = var0.learnMoreLabel or var1:getText("FaceCapture", "DefaultLearnMoreLabel")
      var601.TextYAlignment = Enum.TextYAlignment.Bottom
      function var601.OnClick(arg1)
      end
      
      local var605 = {}
      var605.Font = Enum.Font.SourceSans
      var605.TextColor = var13.Blue
      var605.TextSize = 20
      var605.ShowUnderline = true
      var601.Style = var605
      var601.Position = UDim2.new(0, 0, 0, 157)
      local var1 = var1.createElement(var3, var601)
   end
   var562.LinkText = var7
   return var1.createElement(var11, var555, var562)
end

fun15 = var4.withContext
local var619 = {}
var619.Mouse = var4.Mouse
var619.Stylizer = var4.Stylizer
var619.Localization = var4.Localization
var12 = fun15(var619)(var12)
return var12
