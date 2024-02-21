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
      local var654 = {}
      var654.contentSize = arg1
      arg1:setState(var654)
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
   local var703 = {}
   var703.Priority = 2
   local var705 = {}
   local var709 = {}
   var709.AutoButtonColor = false
   var709.BackgroundTransparency = 0.25
   var709.BackgroundColor3 = var17
   var709.Size = UDim2.fromScale(1, 1)
   var709.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var722 = {}
   local var728 = {}
   var728.AnchorPoint = Vector2.new(1, 0)
   var728.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var728.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var752 = {}
   local var756 = {}
   var756.BackgroundColor = var3.background
   function var756.OnClick()
   end
   
   var756.Size = var6
   var756.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var767 = {}
   local var771 = {}
   var771.AutoSizeCanvas = true
   local var773 = {}
   var773.SortOrder = Enum.SortOrder.LayoutOrder
   var771.AutoSizeLayoutOptions = var773
   var771.Layout = Enum.FillDirection.Vertical
   var771.OnCanvasResize = arg1.updateContentsSize
   var771.Position = UDim2.new(0, 0, 0, 0)
   var771.Size = UDim2.new(1, 0, 1, 65494)
   local var789 = {}
   local var793 = {}
   var793.PaddingLeft = UDim.new(0, 10)
   var793.PaddingRight = UDim.new(0, 10)
   var793.PaddingTop = UDim.new(0, 10)
   var793.PaddingBottom = UDim.new(0, 20)
   var789.Padding = var2.createElement("UIPadding", var793)
   local var814 = {}
   var814.AutomaticSize = Enum.AutomaticSize.XY
   var814.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var814.Layout = Enum.FillDirection.Vertical
   var814.Spacing = 0
   var814.Size = UDim2.fromScale(1, 0)
   var789.Content = var2.createElement(var13, var814, arg1.props[var2.Children])
   local var831 = {}
   var831.BackgroundTransparency = 1
   var831.Size = UDim2.new(1, 0, 0, 10)
   var831.LayoutOrder = var7:getNextOrder()
   var789.ExtraPadding = var2.createElement("Frame", var831)
   var767.Container = var2.createElement(var15, var771, var789)
   local var846 = {}
   local var847 = {}
   var847.Left = 10
   var847.Right = 10
   var846.Padding = var847
   var846.Position = UDim2.new(0, 0, 1, 65494)
   var846.Spacing = 20
   var846.Size = UDim2.new(1, 0, 0, 42)
   var846.ZIndex = 3
   local var864 = {}
   local var865 = true
   if var865 then
      local var869 = {}
      var869.LayoutOrder = var7:getNextOrder()
      var869.Size = UDim2.new(1, 65528, 0, 20)
      var869.Position = UDim2.new(0, 0, 0, 65516)
      var869.BackgroundColor3 = Color3.new(1, 1, 1)
      var869.BorderColor3 = Color3.new(1, 1, 1)
      local var894 = {}
      local var898 = {}
      var898.Color = ColorSequence.new(var3.background)
      var898.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var898.Transparency = NumberSequence.new({})
      var894.Gradient = var2.createElement("UIGradient", var898)
      local var2 = var2.createElement("Frame", var869, var894)
   end
   var864.GradientOverlay = var865
   local var919 = {}
   var919.AutomaticSize = Enum.AutomaticSize.Y
   var919.AnchorPoint = Vector2.new(0, 1)
   var919.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var919.VerticalAlignment = Enum.VerticalAlignment.Center
   var919.Layout = Enum.FillDirection.Horizontal
   var919.OnClick = arg1.footerButtonClicked
   local var929 = {}
   var929.Bottom = 8
   var919.Padding = var929
   var919.Position = UDim2.new(0, 0, 1, 0)
   var919.Size = UDim2.new(1, 0, 0, 0)
   var919.Spacing = 20
   local var944 = {}
   local var948 = {}
   var948.AutomaticSize = Enum.AutomaticSize.XY
   var948.LayoutOrder = var7:getNextOrder()
   var948.OnClick = arg1.onReset
   var948.Text = var1:getText("General", "SearchOptionsResetAll")
   var944.CancelButton = var2.createElement(var12, var948)
   local var961 = {}
   var961.LayoutOrder = var7:getNextOrder()
   var961.OnClick = arg1.onSubmit
   var961.Style = "RoundPrimary"
   var961.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var961.Text = var4
   local var978 = {}
   local var982 = {}
   var982.Cursor = "PointingHand"
   var978.HoverArea = var2.createElement(var11, var982)
   var944.ApplyButton = var2.createElement(var10, var961, var978)
   var864.Footer = var2.createElement(var13, var919, var944)
   var767.BottomButtonsContainer = var2.createElement(var13, var846, var864)
   var752.Contents = var2.createElement(var13, var756, var767)
   var722.MainPositioning = var2.createElement(var13, var7.join(var728, var0.WrapperProps), var752)
   var705.ClickEventDetectFrame = var2.createElement("ImageButton", var709, var722)
   return var2.createElement(var14, var703, var705)
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
   local var703 = {}
   var703.Priority = 2
   local var705 = {}
   local var709 = {}
   var709.AutoButtonColor = false
   var709.BackgroundTransparency = 0.25
   var709.BackgroundColor3 = var17
   var709.Size = UDim2.fromScale(1, 1)
   var709.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var722 = {}
   local var728 = {}
   var728.AnchorPoint = Vector2.new(1, 0)
   var728.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var728.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var752 = {}
   local var756 = {}
   var756.BackgroundColor = var3.background
   function var756.OnClick()
   end
   
   var756.Size = var6
   var756.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var767 = {}
   local var771 = {}
   var771.AutoSizeCanvas = true
   local var773 = {}
   var773.SortOrder = Enum.SortOrder.LayoutOrder
   var771.AutoSizeLayoutOptions = var773
   var771.Layout = Enum.FillDirection.Vertical
   var771.OnCanvasResize = arg1.updateContentsSize
   var771.Position = UDim2.new(0, 0, 0, 0)
   var771.Size = UDim2.new(1, 0, 1, 65494)
   local var789 = {}
   local var793 = {}
   var793.PaddingLeft = UDim.new(0, 10)
   var793.PaddingRight = UDim.new(0, 10)
   var793.PaddingTop = UDim.new(0, 10)
   var793.PaddingBottom = UDim.new(0, 20)
   var789.Padding = var2.createElement("UIPadding", var793)
   local var814 = {}
   var814.AutomaticSize = Enum.AutomaticSize.XY
   var814.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var814.Layout = Enum.FillDirection.Vertical
   var814.Spacing = 0
   var814.Size = UDim2.fromScale(1, 0)
   var789.Content = var2.createElement(var13, var814, arg1.props[var2.Children])
   local var831 = {}
   var831.BackgroundTransparency = 1
   var831.Size = UDim2.new(1, 0, 0, 10)
   var831.LayoutOrder = var7:getNextOrder()
   var789.ExtraPadding = var2.createElement("Frame", var831)
   var767.Container = var2.createElement(var15, var771, var789)
   local var846 = {}
   local var847 = {}
   var847.Left = 10
   var847.Right = 10
   var846.Padding = var847
   var846.Position = UDim2.new(0, 0, 1, 65494)
   var846.Spacing = 20
   var846.Size = UDim2.new(1, 0, 0, 42)
   var846.ZIndex = 3
   local var864 = {}
   local var865 = true
   if var865 then
      local var869 = {}
      var869.LayoutOrder = var7:getNextOrder()
      var869.Size = UDim2.new(1, 65528, 0, 20)
      var869.Position = UDim2.new(0, 0, 0, 65516)
      var869.BackgroundColor3 = Color3.new(1, 1, 1)
      var869.BorderColor3 = Color3.new(1, 1, 1)
      local var894 = {}
      local var898 = {}
      var898.Color = ColorSequence.new(var3.background)
      var898.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var898.Transparency = NumberSequence.new({})
      var894.Gradient = var2.createElement("UIGradient", var898)
      local var2 = var2.createElement("Frame", var869, var894)
   end
   var864.GradientOverlay = var865
   local var919 = {}
   var919.AutomaticSize = Enum.AutomaticSize.Y
   var919.AnchorPoint = Vector2.new(0, 1)
   var919.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var919.VerticalAlignment = Enum.VerticalAlignment.Center
   var919.Layout = Enum.FillDirection.Horizontal
   var919.OnClick = arg1.footerButtonClicked
   local var929 = {}
   var929.Bottom = 8
   var919.Padding = var929
   var919.Position = UDim2.new(0, 0, 1, 0)
   var919.Size = UDim2.new(1, 0, 0, 0)
   var919.Spacing = 20
   local var944 = {}
   local var948 = {}
   var948.AutomaticSize = Enum.AutomaticSize.XY
   var948.LayoutOrder = var7:getNextOrder()
   var948.OnClick = arg1.onReset
   var948.Text = var1:getText("General", "SearchOptionsResetAll")
   var944.CancelButton = var2.createElement(var12, var948)
   local var961 = {}
   var961.LayoutOrder = var7:getNextOrder()
   var961.OnClick = arg1.onSubmit
   var961.Style = "RoundPrimary"
   var961.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var961.Text = var4
   local var978 = {}
   local var982 = {}
   var982.Cursor = "PointingHand"
   var978.HoverArea = var2.createElement(var11, var982)
   var944.ApplyButton = var2.createElement(var10, var961, var978)
   var864.Footer = var2.createElement(var13, var919, var944)
   var767.BottomButtonsContainer = var2.createElement(var13, var846, var864)
   var752.Contents = var2.createElement(var13, var756, var767)
   var722.MainPositioning = var2.createElement(var13, var7.join(var728, var0.WrapperProps), var752)
   var705.ClickEventDetectFrame = var2.createElement("ImageButton", var709, var722)
   return var2.createElement(var14, var703, var705)
end

fun26 = var6.withContext
local var992 = {}
var992.Localization = var6.Localization
var992.Modal = require(var0.Core.ContextServices.ModalContext)
var992.Network = require(var0.Core.ContextServices.NetworkContext)
var992.Stylizer = var6.Stylizer
var992.Settings = require(var0.Core.ContextServices.Settings)
var19 = fun26(var992)(var19)
local var1008 = require(var1.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.searchWithOptions()
      arg1.props.OnClose()
   end
   
   return var0
end)(var19)
var19 = var1008
var1008 = var3.Wrappers.withAbsoluteSize
return var1008(var19)
