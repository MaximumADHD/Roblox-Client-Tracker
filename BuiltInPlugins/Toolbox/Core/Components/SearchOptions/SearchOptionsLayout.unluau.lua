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
      local var331 = {}
      var331.contentSize = arg1
      arg1:setState(var331)
   end
   
end

local function fun13(arg1)
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
   local var380 = {}
   var380.Priority = 2
   local var382 = {}
   local var386 = {}
   var386.AutoButtonColor = false
   var386.BackgroundTransparency = 0.25
   var386.BackgroundColor3 = var17
   var386.Size = UDim2.fromScale(1, 1)
   var386.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var399 = {}
   local var405 = {}
   var405.AnchorPoint = Vector2.new(1, 0)
   var405.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var405.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var429 = {}
   local var433 = {}
   var433.BackgroundColor = var3.background
   function var433.OnClick()
   end
   
   var433.Size = var6
   var433.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var444 = {}
   local var448 = {}
   var448.AutoSizeCanvas = true
   local var450 = {}
   var450.SortOrder = Enum.SortOrder.LayoutOrder
   var448.AutoSizeLayoutOptions = var450
   var448.Layout = Enum.FillDirection.Vertical
   var448.OnCanvasResize = arg1.updateContentsSize
   var448.Position = UDim2.new(0, 0, 0, 0)
   var448.Size = UDim2.new(1, 0, 1, 65494)
   local var466 = {}
   local var470 = {}
   var470.PaddingLeft = UDim.new(0, 10)
   var470.PaddingRight = UDim.new(0, 10)
   var470.PaddingTop = UDim.new(0, 10)
   var470.PaddingBottom = UDim.new(0, 20)
   var466.Padding = var2.createElement("UIPadding", var470)
   local var491 = {}
   var491.AutomaticSize = Enum.AutomaticSize.XY
   var491.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var491.Layout = Enum.FillDirection.Vertical
   var491.Spacing = 0
   var491.Size = UDim2.fromScale(1, 0)
   var466.Content = var2.createElement(var13, var491, arg1.props[var2.Children])
   local var508 = {}
   var508.BackgroundTransparency = 1
   var508.Size = UDim2.new(1, 0, 0, 10)
   var508.LayoutOrder = var7:getNextOrder()
   var466.ExtraPadding = var2.createElement("Frame", var508)
   var444.Container = var2.createElement(var15, var448, var466)
   local var523 = {}
   local var524 = {}
   var524.Left = 10
   var524.Right = 10
   var523.Padding = var524
   var523.Position = UDim2.new(0, 0, 1, 65494)
   var523.Spacing = 20
   var523.Size = UDim2.new(1, 0, 0, 42)
   var523.ZIndex = 3
   local var541 = {}
   local var542 = true
   if var542 then
      local var546 = {}
      var546.LayoutOrder = var7:getNextOrder()
      var546.Size = UDim2.new(1, 65528, 0, 20)
      var546.Position = UDim2.new(0, 0, 0, 65516)
      var546.BackgroundColor3 = Color3.new(1, 1, 1)
      var546.BorderColor3 = Color3.new(1, 1, 1)
      local var571 = {}
      local var575 = {}
      var575.Color = ColorSequence.new(var3.background)
      var575.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var575.Transparency = NumberSequence.new({})
      var571.Gradient = var2.createElement("UIGradient", var575)
      local var2 = var2.createElement("Frame", var546, var571)
   end
   var541.GradientOverlay = var542
   local var596 = {}
   var596.AutomaticSize = Enum.AutomaticSize.Y
   var596.AnchorPoint = Vector2.new(0, 1)
   var596.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var596.VerticalAlignment = Enum.VerticalAlignment.Center
   var596.Layout = Enum.FillDirection.Horizontal
   var596.OnClick = arg1.footerButtonClicked
   local var606 = {}
   var606.Bottom = 8
   var596.Padding = var606
   var596.Position = UDim2.new(0, 0, 1, 0)
   var596.Size = UDim2.new(1, 0, 0, 0)
   var596.Spacing = 20
   local var621 = {}
   local var625 = {}
   var625.AutomaticSize = Enum.AutomaticSize.XY
   var625.LayoutOrder = var7:getNextOrder()
   var625.OnClick = arg1.onReset
   var625.Text = var1:getText("General", "SearchOptionsResetAll")
   var621.CancelButton = var2.createElement(var12, var625)
   local var638 = {}
   var638.LayoutOrder = var7:getNextOrder()
   var638.OnClick = arg1.onSubmit
   var638.Style = "RoundPrimary"
   var638.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var638.Text = var4
   local var655 = {}
   local var659 = {}
   var659.Cursor = "PointingHand"
   var655.HoverArea = var2.createElement(var11, var659)
   var621.ApplyButton = var2.createElement(var10, var638, var655)
   var541.Footer = var2.createElement(var13, var596, var621)
   var444.BottomButtonsContainer = var2.createElement(var13, var523, var541)
   var429.Contents = var2.createElement(var13, var433, var444)
   var399.MainPositioning = var2.createElement(var13, var7.join(var405, var0.WrapperProps), var429)
   var382.ClickEventDetectFrame = var2.createElement("ImageButton", var386, var399)
   return var2.createElement(var14, var380, var382)
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
   local var380 = {}
   var380.Priority = 2
   local var382 = {}
   local var386 = {}
   var386.AutoButtonColor = false
   var386.BackgroundTransparency = 0.25
   var386.BackgroundColor3 = var17
   var386.Size = UDim2.fromScale(1, 1)
   var386.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var399 = {}
   local var405 = {}
   var405.AnchorPoint = Vector2.new(1, 0)
   var405.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var405.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var429 = {}
   local var433 = {}
   var433.BackgroundColor = var3.background
   function var433.OnClick()
   end
   
   var433.Size = var6
   var433.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var444 = {}
   local var448 = {}
   var448.AutoSizeCanvas = true
   local var450 = {}
   var450.SortOrder = Enum.SortOrder.LayoutOrder
   var448.AutoSizeLayoutOptions = var450
   var448.Layout = Enum.FillDirection.Vertical
   var448.OnCanvasResize = arg1.updateContentsSize
   var448.Position = UDim2.new(0, 0, 0, 0)
   var448.Size = UDim2.new(1, 0, 1, 65494)
   local var466 = {}
   local var470 = {}
   var470.PaddingLeft = UDim.new(0, 10)
   var470.PaddingRight = UDim.new(0, 10)
   var470.PaddingTop = UDim.new(0, 10)
   var470.PaddingBottom = UDim.new(0, 20)
   var466.Padding = var2.createElement("UIPadding", var470)
   local var491 = {}
   var491.AutomaticSize = Enum.AutomaticSize.XY
   var491.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var491.Layout = Enum.FillDirection.Vertical
   var491.Spacing = 0
   var491.Size = UDim2.fromScale(1, 0)
   var466.Content = var2.createElement(var13, var491, arg1.props[var2.Children])
   local var508 = {}
   var508.BackgroundTransparency = 1
   var508.Size = UDim2.new(1, 0, 0, 10)
   var508.LayoutOrder = var7:getNextOrder()
   var466.ExtraPadding = var2.createElement("Frame", var508)
   var444.Container = var2.createElement(var15, var448, var466)
   local var523 = {}
   local var524 = {}
   var524.Left = 10
   var524.Right = 10
   var523.Padding = var524
   var523.Position = UDim2.new(0, 0, 1, 65494)
   var523.Spacing = 20
   var523.Size = UDim2.new(1, 0, 0, 42)
   var523.ZIndex = 3
   local var541 = {}
   local var542 = true
   if var542 then
      local var546 = {}
      var546.LayoutOrder = var7:getNextOrder()
      var546.Size = UDim2.new(1, 65528, 0, 20)
      var546.Position = UDim2.new(0, 0, 0, 65516)
      var546.BackgroundColor3 = Color3.new(1, 1, 1)
      var546.BorderColor3 = Color3.new(1, 1, 1)
      local var571 = {}
      local var575 = {}
      var575.Color = ColorSequence.new(var3.background)
      var575.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var575.Transparency = NumberSequence.new({})
      var571.Gradient = var2.createElement("UIGradient", var575)
      local var2 = var2.createElement("Frame", var546, var571)
   end
   var541.GradientOverlay = var542
   local var596 = {}
   var596.AutomaticSize = Enum.AutomaticSize.Y
   var596.AnchorPoint = Vector2.new(0, 1)
   var596.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var596.VerticalAlignment = Enum.VerticalAlignment.Center
   var596.Layout = Enum.FillDirection.Horizontal
   var596.OnClick = arg1.footerButtonClicked
   local var606 = {}
   var606.Bottom = 8
   var596.Padding = var606
   var596.Position = UDim2.new(0, 0, 1, 0)
   var596.Size = UDim2.new(1, 0, 0, 0)
   var596.Spacing = 20
   local var621 = {}
   local var625 = {}
   var625.AutomaticSize = Enum.AutomaticSize.XY
   var625.LayoutOrder = var7:getNextOrder()
   var625.OnClick = arg1.onReset
   var625.Text = var1:getText("General", "SearchOptionsResetAll")
   var621.CancelButton = var2.createElement(var12, var625)
   local var638 = {}
   var638.LayoutOrder = var7:getNextOrder()
   var638.OnClick = arg1.onSubmit
   var638.Style = "RoundPrimary"
   var638.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var638.Text = var4
   local var655 = {}
   local var659 = {}
   var659.Cursor = "PointingHand"
   var655.HoverArea = var2.createElement(var11, var659)
   var621.ApplyButton = var2.createElement(var10, var638, var655)
   var541.Footer = var2.createElement(var13, var596, var621)
   var444.BottomButtonsContainer = var2.createElement(var13, var523, var541)
   var429.Contents = var2.createElement(var13, var433, var444)
   var399.MainPositioning = var2.createElement(var13, var7.join(var405, var0.WrapperProps), var429)
   var382.ClickEventDetectFrame = var2.createElement("ImageButton", var386, var399)
   return var2.createElement(var14, var380, var382)
end

fun13 = var6.withContext
local var669 = {}
var669.Localization = var6.Localization
var669.Modal = require(var0.Core.ContextServices.ModalContext)
var669.Network = require(var0.Core.ContextServices.NetworkContext)
var669.Stylizer = var6.Stylizer
var669.Settings = require(var0.Core.ContextServices.Settings)
var19 = fun13(var669)(var19)
local var685 = require(var1.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.searchWithOptions()
      arg1.props.OnClose()
   end
   
   return var0
end)(var19)
var19 = var685
var685 = var3.Wrappers.withAbsoluteSize
return var685(var19)
