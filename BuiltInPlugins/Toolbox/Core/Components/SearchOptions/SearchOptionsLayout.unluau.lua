-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Networking.Requests.SearchWithOptions)
local var5 = require(var0.Core.Util.Constants)
local var6 = var3.ContextServices
local var7 = require(var1.Dash)
local var8 = var3.Util.GetTextSize
local var9 = var3.Util.LayoutOrderIterator
local var10 = var3.UI.Button
local var11 = var3.UI.HoverArea
local var12 = var3.UI.LinkText
local var13 = var3.UI.Pane
local var14 = var3.UI.ShowOnTop
local var15 = var3.UI.ScrollingFrame
local var16 = Vector2.new(17, 6)
local var17 = Color3.fromRGB(0, 0, 0)
local var18 = var5.TAB_WIDGET_HEIGHT + var5.HEADER_HEIGHT
local var19 = var2.PureComponent:extend("SearchOptionsLayout")
function var19.init(arg1, arg2)
   arg1.state = {}
   arg1.layoutRef = var2.createRef()
   function arg1.cancel()
      arg1.props.OnClose()
   end
   
   function arg1.mouseEnter()
      arg1.props.Modal.onSearchOptionsMouse(true)
   end
   
   function arg1.mouseLeave()
      arg1.props.Modal.onSearchOptionsMouse(false)
   end
   
   function arg1.onReset()
      arg1.props.OnReset()
   end
   
   function arg1.onSubmit()
      arg1.search(arg1.props.GetSearchOptions())
   end
   
   function arg1.search(arg1)
      local var0 = arg1.props
      var0.searchWithOptions(var0.Network.networkInterface, var0.Settings:get("Plugin"), arg1)
      arg1.cancel()
   end
   
   function arg1.updateContentsSize(arg1)
      local var637 = {}
      var637.contentSize = arg1
      arg1:setState(var637)
   end
   
end

local function fun26(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = arg1.state.contentSize
   local var3 = var0.Stylizer.searchOptions
   local var4 = var1:getText("General", "SearchOptionsDone")
   local var5 = var8(var4, nil, nil, Vector2.new(0, 0))
   local var6 = UDim2.new(1, 0, 1, 0)
   if var2 then
      local var0 = var2.Y + 42
      if var0 < var0.AbsoluteSize.Y - var18 + 40 then
         var6 = UDim2.new(1, 0, 0, var0)
         local var0 = false
      end
   end
   local var7 = var9.new()
   local var686 = {}
   var686.Priority = 2
   local var688 = {}
   local var692 = {}
   var692.AutoButtonColor = false
   var692.BackgroundTransparency = 0.25
   var692.BackgroundColor3 = var17
   var692.Size = UDim2.fromScale(1, 1)
   var692.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var705 = {}
   local var711 = {}
   var711.AnchorPoint = Vector2.new(1, 0)
   var711.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var711.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var735 = {}
   local var739 = {}
   var739.BackgroundColor = var3.background
   function var739.OnClick()
   end
   
   var739.Size = var6
   var739.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var750 = {}
   local var754 = {}
   var754.AutoSizeCanvas = true
   local var756 = {}
   var756.SortOrder = Enum.SortOrder.LayoutOrder
   var754.AutoSizeLayoutOptions = var756
   var754.Layout = Enum.FillDirection.Vertical
   var754.OnCanvasResize = arg1.updateContentsSize
   var754.Position = UDim2.new(0, 0, 0, 0)
   var754.Size = UDim2.new(1, 0, 1, 65494)
   local var772 = {}
   local var776 = {}
   var776.PaddingLeft = UDim.new(0, 10)
   var776.PaddingRight = UDim.new(0, 10)
   var776.PaddingTop = UDim.new(0, 10)
   var776.PaddingBottom = UDim.new(0, 20)
   var772.Padding = var2.createElement("UIPadding", var776)
   local var797 = {}
   var797.AutomaticSize = Enum.AutomaticSize.XY
   var797.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var797.Layout = Enum.FillDirection.Vertical
   var797.Spacing = 0
   var797.Size = UDim2.fromScale(1, 0)
   var772.Content = var2.createElement(var13, var797, arg1.props[var2.Children])
   local var814 = {}
   var814.BackgroundTransparency = 1
   var814.Size = UDim2.new(1, 0, 0, 10)
   var814.LayoutOrder = var7:getNextOrder()
   var772.ExtraPadding = var2.createElement("Frame", var814)
   var750.Container = var2.createElement(var15, var754, var772)
   local var829 = {}
   local var830 = {}
   var830.Left = 10
   var830.Right = 10
   var829.Padding = var830
   var829.Position = UDim2.new(0, 0, 1, 65494)
   var829.Spacing = 20
   var829.Size = UDim2.new(1, 0, 0, 42)
   var829.ZIndex = 3
   local var847 = {}
   local var848 = true
   if var848 then
      local var852 = {}
      var852.LayoutOrder = var7:getNextOrder()
      var852.Size = UDim2.new(1, 65528, 0, 20)
      var852.Position = UDim2.new(0, 0, 0, 65516)
      var852.BackgroundColor3 = Color3.new(1, 1, 1)
      var852.BorderColor3 = Color3.new(1, 1, 1)
      local var877 = {}
      local var881 = {}
      var881.Color = ColorSequence.new(var3.background)
      var881.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var881.Transparency = NumberSequence.new({})
      var877.Gradient = var2.createElement("UIGradient", var881)
      local var2 = var2.createElement("Frame", var852, var877)
   end
   var847.GradientOverlay = var848
   local var902 = {}
   var902.AutomaticSize = Enum.AutomaticSize.Y
   var902.AnchorPoint = Vector2.new(0, 1)
   var902.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var902.VerticalAlignment = Enum.VerticalAlignment.Center
   var902.Layout = Enum.FillDirection.Horizontal
   var902.OnClick = arg1.footerButtonClicked
   local var912 = {}
   var912.Bottom = 8
   var902.Padding = var912
   var902.Position = UDim2.new(0, 0, 1, 0)
   var902.Size = UDim2.new(1, 0, 0, 0)
   var902.Spacing = 20
   local var927 = {}
   local var931 = {}
   var931.AutomaticSize = Enum.AutomaticSize.XY
   var931.LayoutOrder = var7:getNextOrder()
   var931.OnClick = arg1.onReset
   var931.Text = var1:getText("General", "SearchOptionsResetAll")
   var927.CancelButton = var2.createElement(var12, var931)
   local var944 = {}
   var944.LayoutOrder = var7:getNextOrder()
   var944.OnClick = arg1.onSubmit
   var944.Style = "RoundPrimary"
   var944.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var944.Text = var4
   local var961 = {}
   local var965 = {}
   var965.Cursor = "PointingHand"
   var961.HoverArea = var2.createElement(var11, var965)
   var927.ApplyButton = var2.createElement(var10, var944, var961)
   var847.Footer = var2.createElement(var13, var902, var927)
   var750.BottomButtonsContainer = var2.createElement(var13, var829, var847)
   var735.Contents = var2.createElement(var13, var739, var750)
   var705.MainPositioning = var2.createElement(var13, var7.join(var711, var0.WrapperProps), var735)
   var688.ClickEventDetectFrame = var2.createElement("ImageButton", var692, var705)
   return var2.createElement(var14, var686, var688)
end

function var19.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = arg1.state.contentSize
   local var3 = var0.Stylizer.searchOptions
   local var4 = var1:getText("General", "SearchOptionsDone")
   local var5 = var8(var4, nil, nil, Vector2.new(0, 0))
   local var6 = UDim2.new(1, 0, 1, 0)
   if var2 then
      local var0 = var2.Y + 42
      if var0 < var0.AbsoluteSize.Y - var18 + 40 then
         var6 = UDim2.new(1, 0, 0, var0)
         local var0 = false
      end
   end
   local var7 = var9.new()
   local var686 = {}
   var686.Priority = 2
   local var688 = {}
   local var692 = {}
   var692.AutoButtonColor = false
   var692.BackgroundTransparency = 0.25
   var692.BackgroundColor3 = var17
   var692.Size = UDim2.fromScale(1, 1)
   var692.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var705 = {}
   local var711 = {}
   var711.AnchorPoint = Vector2.new(1, 0)
   var711.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var711.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var735 = {}
   local var739 = {}
   var739.BackgroundColor = var3.background
   function var739.OnClick()
   end
   
   var739.Size = var6
   var739.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var750 = {}
   local var754 = {}
   var754.AutoSizeCanvas = true
   local var756 = {}
   var756.SortOrder = Enum.SortOrder.LayoutOrder
   var754.AutoSizeLayoutOptions = var756
   var754.Layout = Enum.FillDirection.Vertical
   var754.OnCanvasResize = arg1.updateContentsSize
   var754.Position = UDim2.new(0, 0, 0, 0)
   var754.Size = UDim2.new(1, 0, 1, 65494)
   local var772 = {}
   local var776 = {}
   var776.PaddingLeft = UDim.new(0, 10)
   var776.PaddingRight = UDim.new(0, 10)
   var776.PaddingTop = UDim.new(0, 10)
   var776.PaddingBottom = UDim.new(0, 20)
   var772.Padding = var2.createElement("UIPadding", var776)
   local var797 = {}
   var797.AutomaticSize = Enum.AutomaticSize.XY
   var797.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var797.Layout = Enum.FillDirection.Vertical
   var797.Spacing = 0
   var797.Size = UDim2.fromScale(1, 0)
   var772.Content = var2.createElement(var13, var797, arg1.props[var2.Children])
   local var814 = {}
   var814.BackgroundTransparency = 1
   var814.Size = UDim2.new(1, 0, 0, 10)
   var814.LayoutOrder = var7:getNextOrder()
   var772.ExtraPadding = var2.createElement("Frame", var814)
   var750.Container = var2.createElement(var15, var754, var772)
   local var829 = {}
   local var830 = {}
   var830.Left = 10
   var830.Right = 10
   var829.Padding = var830
   var829.Position = UDim2.new(0, 0, 1, 65494)
   var829.Spacing = 20
   var829.Size = UDim2.new(1, 0, 0, 42)
   var829.ZIndex = 3
   local var847 = {}
   local var848 = true
   if var848 then
      local var852 = {}
      var852.LayoutOrder = var7:getNextOrder()
      var852.Size = UDim2.new(1, 65528, 0, 20)
      var852.Position = UDim2.new(0, 0, 0, 65516)
      var852.BackgroundColor3 = Color3.new(1, 1, 1)
      var852.BorderColor3 = Color3.new(1, 1, 1)
      local var877 = {}
      local var881 = {}
      var881.Color = ColorSequence.new(var3.background)
      var881.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var881.Transparency = NumberSequence.new({})
      var877.Gradient = var2.createElement("UIGradient", var881)
      local var2 = var2.createElement("Frame", var852, var877)
   end
   var847.GradientOverlay = var848
   local var902 = {}
   var902.AutomaticSize = Enum.AutomaticSize.Y
   var902.AnchorPoint = Vector2.new(0, 1)
   var902.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var902.VerticalAlignment = Enum.VerticalAlignment.Center
   var902.Layout = Enum.FillDirection.Horizontal
   var902.OnClick = arg1.footerButtonClicked
   local var912 = {}
   var912.Bottom = 8
   var902.Padding = var912
   var902.Position = UDim2.new(0, 0, 1, 0)
   var902.Size = UDim2.new(1, 0, 0, 0)
   var902.Spacing = 20
   local var927 = {}
   local var931 = {}
   var931.AutomaticSize = Enum.AutomaticSize.XY
   var931.LayoutOrder = var7:getNextOrder()
   var931.OnClick = arg1.onReset
   var931.Text = var1:getText("General", "SearchOptionsResetAll")
   var927.CancelButton = var2.createElement(var12, var931)
   local var944 = {}
   var944.LayoutOrder = var7:getNextOrder()
   var944.OnClick = arg1.onSubmit
   var944.Style = "RoundPrimary"
   var944.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var944.Text = var4
   local var961 = {}
   local var965 = {}
   var965.Cursor = "PointingHand"
   var961.HoverArea = var2.createElement(var11, var965)
   var927.ApplyButton = var2.createElement(var10, var944, var961)
   var847.Footer = var2.createElement(var13, var902, var927)
   var750.BottomButtonsContainer = var2.createElement(var13, var829, var847)
   var735.Contents = var2.createElement(var13, var739, var750)
   var705.MainPositioning = var2.createElement(var13, var7.join(var711, var0.WrapperProps), var735)
   var688.ClickEventDetectFrame = var2.createElement("ImageButton", var692, var705)
   return var2.createElement(var14, var686, var688)
end

fun26 = var6.withContext
local var975 = {}
var975.Localization = var6.Localization
var975.Modal = require(var0.Core.ContextServices.ModalContext)
var975.Network = require(var0.Core.ContextServices.NetworkContext)
var975.Stylizer = var6.Stylizer
var975.Settings = require(var0.Core.ContextServices.Settings)
var19 = fun26(var975)(var19)
local var991 = require(var1.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.searchWithOptions()
      arg1.props.OnClose()
   end
   
   return var0
end)(var19)
var19 = var991
var991 = var3.Wrappers.withAbsoluteSize
return var991(var19)
