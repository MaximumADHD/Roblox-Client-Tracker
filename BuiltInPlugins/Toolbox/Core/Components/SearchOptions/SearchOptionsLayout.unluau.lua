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
      local var124 = {}
      var124.contentSize = arg1
      arg1:setState(var124)
   end
   
end

local function fun9(arg1)
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
   local var173 = {}
   var173.Priority = 2
   local var175 = {}
   local var179 = {}
   var179.AutoButtonColor = false
   var179.BackgroundTransparency = 0.25
   var179.BackgroundColor3 = var17
   var179.Size = UDim2.fromScale(1, 1)
   var179.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var192 = {}
   local var198 = {}
   var198.AnchorPoint = Vector2.new(1, 0)
   var198.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var198.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var222 = {}
   local var226 = {}
   var226.BackgroundColor = var3.background
   function var226.OnClick()
   end
   
   var226.Size = var6
   var226.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var237 = {}
   local var241 = {}
   var241.AutoSizeCanvas = true
   local var243 = {}
   var243.SortOrder = Enum.SortOrder.LayoutOrder
   var241.AutoSizeLayoutOptions = var243
   var241.Layout = Enum.FillDirection.Vertical
   var241.OnCanvasResize = arg1.updateContentsSize
   var241.Position = UDim2.new(0, 0, 0, 0)
   var241.Size = UDim2.new(1, 0, 1, 65494)
   local var259 = {}
   local var263 = {}
   var263.PaddingLeft = UDim.new(0, 10)
   var263.PaddingRight = UDim.new(0, 10)
   var263.PaddingTop = UDim.new(0, 10)
   var263.PaddingBottom = UDim.new(0, 20)
   var259.Padding = var2.createElement("UIPadding", var263)
   local var284 = {}
   var284.AutomaticSize = Enum.AutomaticSize.XY
   var284.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var284.Layout = Enum.FillDirection.Vertical
   var284.Spacing = 0
   var284.Size = UDim2.fromScale(1, 0)
   var259.Content = var2.createElement(var13, var284, arg1.props[var2.Children])
   local var301 = {}
   var301.BackgroundTransparency = 1
   var301.Size = UDim2.new(1, 0, 0, 10)
   var301.LayoutOrder = var7:getNextOrder()
   var259.ExtraPadding = var2.createElement("Frame", var301)
   var237.Container = var2.createElement(var15, var241, var259)
   local var316 = {}
   local var317 = {}
   var317.Left = 10
   var317.Right = 10
   var316.Padding = var317
   var316.Position = UDim2.new(0, 0, 1, 65494)
   var316.Spacing = 20
   var316.Size = UDim2.new(1, 0, 0, 42)
   var316.ZIndex = 3
   local var334 = {}
   local var335 = true
   if var335 then
      local var339 = {}
      var339.LayoutOrder = var7:getNextOrder()
      var339.Size = UDim2.new(1, 65528, 0, 20)
      var339.Position = UDim2.new(0, 0, 0, 65516)
      var339.BackgroundColor3 = Color3.new(1, 1, 1)
      var339.BorderColor3 = Color3.new(1, 1, 1)
      local var364 = {}
      local var368 = {}
      var368.Color = ColorSequence.new(var3.background)
      var368.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var368.Transparency = NumberSequence.new({})
      var364.Gradient = var2.createElement("UIGradient", var368)
      local var2 = var2.createElement("Frame", var339, var364)
   end
   var334.GradientOverlay = var335
   local var389 = {}
   var389.AutomaticSize = Enum.AutomaticSize.Y
   var389.AnchorPoint = Vector2.new(0, 1)
   var389.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var389.VerticalAlignment = Enum.VerticalAlignment.Center
   var389.Layout = Enum.FillDirection.Horizontal
   var389.OnClick = arg1.footerButtonClicked
   local var399 = {}
   var399.Bottom = 8
   var389.Padding = var399
   var389.Position = UDim2.new(0, 0, 1, 0)
   var389.Size = UDim2.new(1, 0, 0, 0)
   var389.Spacing = 20
   local var414 = {}
   local var418 = {}
   var418.AutomaticSize = Enum.AutomaticSize.XY
   var418.LayoutOrder = var7:getNextOrder()
   var418.OnClick = arg1.onReset
   var418.Text = var1:getText("General", "SearchOptionsResetAll")
   var414.CancelButton = var2.createElement(var12, var418)
   local var431 = {}
   var431.LayoutOrder = var7:getNextOrder()
   var431.OnClick = arg1.onSubmit
   var431.Style = "RoundPrimary"
   var431.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var431.Text = var4
   local var448 = {}
   local var452 = {}
   var452.Cursor = "PointingHand"
   var448.HoverArea = var2.createElement(var11, var452)
   var414.ApplyButton = var2.createElement(var10, var431, var448)
   var334.Footer = var2.createElement(var13, var389, var414)
   var237.BottomButtonsContainer = var2.createElement(var13, var316, var334)
   var222.Contents = var2.createElement(var13, var226, var237)
   var192.MainPositioning = var2.createElement(var13, var7.join(var198, var0.WrapperProps), var222)
   var175.ClickEventDetectFrame = var2.createElement("ImageButton", var179, var192)
   return var2.createElement(var14, var173, var175)
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
   local var173 = {}
   var173.Priority = 2
   local var175 = {}
   local var179 = {}
   var179.AutoButtonColor = false
   var179.BackgroundTransparency = 0.25
   var179.BackgroundColor3 = var17
   var179.Size = UDim2.fromScale(1, 1)
   var179.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var192 = {}
   local var198 = {}
   var198.AnchorPoint = Vector2.new(1, 0)
   var198.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var198.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var222 = {}
   local var226 = {}
   var226.BackgroundColor = var3.background
   function var226.OnClick()
   end
   
   var226.Size = var6
   var226.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var237 = {}
   local var241 = {}
   var241.AutoSizeCanvas = true
   local var243 = {}
   var243.SortOrder = Enum.SortOrder.LayoutOrder
   var241.AutoSizeLayoutOptions = var243
   var241.Layout = Enum.FillDirection.Vertical
   var241.OnCanvasResize = arg1.updateContentsSize
   var241.Position = UDim2.new(0, 0, 0, 0)
   var241.Size = UDim2.new(1, 0, 1, 65494)
   local var259 = {}
   local var263 = {}
   var263.PaddingLeft = UDim.new(0, 10)
   var263.PaddingRight = UDim.new(0, 10)
   var263.PaddingTop = UDim.new(0, 10)
   var263.PaddingBottom = UDim.new(0, 20)
   var259.Padding = var2.createElement("UIPadding", var263)
   local var284 = {}
   var284.AutomaticSize = Enum.AutomaticSize.XY
   var284.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var284.Layout = Enum.FillDirection.Vertical
   var284.Spacing = 0
   var284.Size = UDim2.fromScale(1, 0)
   var259.Content = var2.createElement(var13, var284, arg1.props[var2.Children])
   local var301 = {}
   var301.BackgroundTransparency = 1
   var301.Size = UDim2.new(1, 0, 0, 10)
   var301.LayoutOrder = var7:getNextOrder()
   var259.ExtraPadding = var2.createElement("Frame", var301)
   var237.Container = var2.createElement(var15, var241, var259)
   local var316 = {}
   local var317 = {}
   var317.Left = 10
   var317.Right = 10
   var316.Padding = var317
   var316.Position = UDim2.new(0, 0, 1, 65494)
   var316.Spacing = 20
   var316.Size = UDim2.new(1, 0, 0, 42)
   var316.ZIndex = 3
   local var334 = {}
   local var335 = true
   if var335 then
      local var339 = {}
      var339.LayoutOrder = var7:getNextOrder()
      var339.Size = UDim2.new(1, 65528, 0, 20)
      var339.Position = UDim2.new(0, 0, 0, 65516)
      var339.BackgroundColor3 = Color3.new(1, 1, 1)
      var339.BorderColor3 = Color3.new(1, 1, 1)
      local var364 = {}
      local var368 = {}
      var368.Color = ColorSequence.new(var3.background)
      var368.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var368.Transparency = NumberSequence.new({})
      var364.Gradient = var2.createElement("UIGradient", var368)
      local var2 = var2.createElement("Frame", var339, var364)
   end
   var334.GradientOverlay = var335
   local var389 = {}
   var389.AutomaticSize = Enum.AutomaticSize.Y
   var389.AnchorPoint = Vector2.new(0, 1)
   var389.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var389.VerticalAlignment = Enum.VerticalAlignment.Center
   var389.Layout = Enum.FillDirection.Horizontal
   var389.OnClick = arg1.footerButtonClicked
   local var399 = {}
   var399.Bottom = 8
   var389.Padding = var399
   var389.Position = UDim2.new(0, 0, 1, 0)
   var389.Size = UDim2.new(1, 0, 0, 0)
   var389.Spacing = 20
   local var414 = {}
   local var418 = {}
   var418.AutomaticSize = Enum.AutomaticSize.XY
   var418.LayoutOrder = var7:getNextOrder()
   var418.OnClick = arg1.onReset
   var418.Text = var1:getText("General", "SearchOptionsResetAll")
   var414.CancelButton = var2.createElement(var12, var418)
   local var431 = {}
   var431.LayoutOrder = var7:getNextOrder()
   var431.OnClick = arg1.onSubmit
   var431.Style = "RoundPrimary"
   var431.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var431.Text = var4
   local var448 = {}
   local var452 = {}
   var452.Cursor = "PointingHand"
   var448.HoverArea = var2.createElement(var11, var452)
   var414.ApplyButton = var2.createElement(var10, var431, var448)
   var334.Footer = var2.createElement(var13, var389, var414)
   var237.BottomButtonsContainer = var2.createElement(var13, var316, var334)
   var222.Contents = var2.createElement(var13, var226, var237)
   var192.MainPositioning = var2.createElement(var13, var7.join(var198, var0.WrapperProps), var222)
   var175.ClickEventDetectFrame = var2.createElement("ImageButton", var179, var192)
   return var2.createElement(var14, var173, var175)
end

fun9 = var6.withContext
local var462 = {}
var462.Localization = var6.Localization
var462.Modal = require(var0.Core.ContextServices.ModalContext)
var462.Network = require(var0.Core.ContextServices.NetworkContext)
var462.Stylizer = var6.Stylizer
var462.Settings = require(var0.Core.ContextServices.Settings)
var19 = fun9(var462)(var19)
local var478 = require(var1.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.searchWithOptions()
      arg1.props.OnClose()
   end
   
   return var0
end)(var19)
var19 = var478
var478 = var3.Wrappers.withAbsoluteSize
return var478(var19)
