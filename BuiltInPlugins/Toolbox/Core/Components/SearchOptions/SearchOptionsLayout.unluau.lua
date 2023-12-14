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
local var19 = require(var0.Core.Flags.getFFlagToolboxImproveJestOutputSpam)
local var20 = var2.PureComponent:extend("SearchOptionsLayout")
function var20.init(arg1, arg2)
   if var19() then
      arg1.state = {}
   end
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
      local var131 = {}
      var131.contentSize = arg1
      arg1:setState(var131)
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
   local var180 = {}
   var180.Priority = 2
   local var182 = {}
   local var186 = {}
   var186.AutoButtonColor = false
   var186.BackgroundTransparency = 0.25
   var186.BackgroundColor3 = var17
   var186.Size = UDim2.fromScale(1, 1)
   var186.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var199 = {}
   local var205 = {}
   var205.AnchorPoint = Vector2.new(1, 0)
   var205.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var205.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var229 = {}
   local var233 = {}
   var233.BackgroundColor = var3.background
   function var233.OnClick()
   end
   
   var233.Size = var6
   var233.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var244 = {}
   local var248 = {}
   var248.AutoSizeCanvas = true
   local var250 = {}
   var250.SortOrder = Enum.SortOrder.LayoutOrder
   var248.AutoSizeLayoutOptions = var250
   var248.Layout = Enum.FillDirection.Vertical
   var248.OnCanvasResize = arg1.updateContentsSize
   var248.Position = UDim2.new(0, 0, 0, 0)
   var248.Size = UDim2.new(1, 0, 1, 65494)
   local var266 = {}
   local var270 = {}
   var270.PaddingLeft = UDim.new(0, 10)
   var270.PaddingRight = UDim.new(0, 10)
   var270.PaddingTop = UDim.new(0, 10)
   var270.PaddingBottom = UDim.new(0, 20)
   var266.Padding = var2.createElement("UIPadding", var270)
   local var291 = {}
   var291.AutomaticSize = Enum.AutomaticSize.XY
   var291.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var291.Layout = Enum.FillDirection.Vertical
   var291.Spacing = 0
   var291.Size = UDim2.fromScale(1, 0)
   var266.Content = var2.createElement(var13, var291, arg1.props[var2.Children])
   local var308 = {}
   var308.BackgroundTransparency = 1
   var308.Size = UDim2.new(1, 0, 0, 10)
   var308.LayoutOrder = var7:getNextOrder()
   var266.ExtraPadding = var2.createElement("Frame", var308)
   var244.Container = var2.createElement(var15, var248, var266)
   local var323 = {}
   local var324 = {}
   var324.Left = 10
   var324.Right = 10
   var323.Padding = var324
   var323.Position = UDim2.new(0, 0, 1, 65494)
   var323.Spacing = 20
   var323.Size = UDim2.new(1, 0, 0, 42)
   var323.ZIndex = 3
   local var341 = {}
   local var342 = true
   if var342 then
      local var346 = {}
      var346.LayoutOrder = var7:getNextOrder()
      var346.Size = UDim2.new(1, 65528, 0, 20)
      var346.Position = UDim2.new(0, 0, 0, 65516)
      var346.BackgroundColor3 = Color3.new(1, 1, 1)
      var346.BorderColor3 = Color3.new(1, 1, 1)
      local var371 = {}
      local var375 = {}
      var375.Color = ColorSequence.new(var3.background)
      var375.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var375.Transparency = NumberSequence.new({})
      var371.Gradient = var2.createElement("UIGradient", var375)
      local var2 = var2.createElement("Frame", var346, var371)
   end
   var341.GradientOverlay = var342
   local var396 = {}
   var396.AutomaticSize = Enum.AutomaticSize.Y
   var396.AnchorPoint = Vector2.new(0, 1)
   var396.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var396.VerticalAlignment = Enum.VerticalAlignment.Center
   var396.Layout = Enum.FillDirection.Horizontal
   var396.OnClick = arg1.footerButtonClicked
   local var406 = {}
   var406.Bottom = 8
   var396.Padding = var406
   var396.Position = UDim2.new(0, 0, 1, 0)
   var396.Size = UDim2.new(1, 0, 0, 0)
   var396.Spacing = 20
   local var421 = {}
   local var425 = {}
   var425.AutomaticSize = Enum.AutomaticSize.XY
   var425.LayoutOrder = var7:getNextOrder()
   var425.OnClick = arg1.onReset
   var425.Text = var1:getText("General", "SearchOptionsResetAll")
   var421.CancelButton = var2.createElement(var12, var425)
   local var438 = {}
   var438.LayoutOrder = var7:getNextOrder()
   var438.OnClick = arg1.onSubmit
   var438.Style = "RoundPrimary"
   var438.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var438.Text = var4
   local var455 = {}
   local var459 = {}
   var459.Cursor = "PointingHand"
   var455.HoverArea = var2.createElement(var11, var459)
   var421.ApplyButton = var2.createElement(var10, var438, var455)
   var341.Footer = var2.createElement(var13, var396, var421)
   var244.BottomButtonsContainer = var2.createElement(var13, var323, var341)
   var229.Contents = var2.createElement(var13, var233, var244)
   var199.MainPositioning = var2.createElement(var13, var7.join(var205, var0.WrapperProps), var229)
   var182.ClickEventDetectFrame = var2.createElement("ImageButton", var186, var199)
   return var2.createElement(var14, var180, var182)
end

function var20.render(arg1)
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
   local var180 = {}
   var180.Priority = 2
   local var182 = {}
   local var186 = {}
   var186.AutoButtonColor = false
   var186.BackgroundTransparency = 0.25
   var186.BackgroundColor3 = var17
   var186.Size = UDim2.fromScale(1, 1)
   var186.ZIndex = 10
   var2.Event.Activated = arg1.cancel
   local var199 = {}
   local var205 = {}
   var205.AnchorPoint = Vector2.new(1, 0)
   var205.Position = UDim2.new(1, 65532, 0, var18 + 4)
   var205.Size = UDim2.new(0, var5.TOOLBOX_MIN_WIDTH, 1, var18 + 8 + 42)
   local var229 = {}
   local var233 = {}
   var233.BackgroundColor = var3.background
   function var233.OnClick()
   end
   
   var233.Size = var6
   var233.Style = "BorderBox"
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var244 = {}
   local var248 = {}
   var248.AutoSizeCanvas = true
   local var250 = {}
   var250.SortOrder = Enum.SortOrder.LayoutOrder
   var248.AutoSizeLayoutOptions = var250
   var248.Layout = Enum.FillDirection.Vertical
   var248.OnCanvasResize = arg1.updateContentsSize
   var248.Position = UDim2.new(0, 0, 0, 0)
   var248.Size = UDim2.new(1, 0, 1, 65494)
   local var266 = {}
   local var270 = {}
   var270.PaddingLeft = UDim.new(0, 10)
   var270.PaddingRight = UDim.new(0, 10)
   var270.PaddingTop = UDim.new(0, 10)
   var270.PaddingBottom = UDim.new(0, 20)
   var266.Padding = var2.createElement("UIPadding", var270)
   local var291 = {}
   var291.AutomaticSize = Enum.AutomaticSize.XY
   var291.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var291.Layout = Enum.FillDirection.Vertical
   var291.Spacing = 0
   var291.Size = UDim2.fromScale(1, 0)
   var266.Content = var2.createElement(var13, var291, arg1.props[var2.Children])
   local var308 = {}
   var308.BackgroundTransparency = 1
   var308.Size = UDim2.new(1, 0, 0, 10)
   var308.LayoutOrder = var7:getNextOrder()
   var266.ExtraPadding = var2.createElement("Frame", var308)
   var244.Container = var2.createElement(var15, var248, var266)
   local var323 = {}
   local var324 = {}
   var324.Left = 10
   var324.Right = 10
   var323.Padding = var324
   var323.Position = UDim2.new(0, 0, 1, 65494)
   var323.Spacing = 20
   var323.Size = UDim2.new(1, 0, 0, 42)
   var323.ZIndex = 3
   local var341 = {}
   local var342 = true
   if var342 then
      local var346 = {}
      var346.LayoutOrder = var7:getNextOrder()
      var346.Size = UDim2.new(1, 65528, 0, 20)
      var346.Position = UDim2.new(0, 0, 0, 65516)
      var346.BackgroundColor3 = Color3.new(1, 1, 1)
      var346.BorderColor3 = Color3.new(1, 1, 1)
      local var371 = {}
      local var375 = {}
      var375.Color = ColorSequence.new(var3.background)
      var375.Rotation = 90
      local var0 = NumberSequenceKeypoint.new(0, 1)
      local var1 = NumberSequenceKeypoint.new(1, 0.25)
      var375.Transparency = NumberSequence.new({})
      var371.Gradient = var2.createElement("UIGradient", var375)
      local var2 = var2.createElement("Frame", var346, var371)
   end
   var341.GradientOverlay = var342
   local var396 = {}
   var396.AutomaticSize = Enum.AutomaticSize.Y
   var396.AnchorPoint = Vector2.new(0, 1)
   var396.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var396.VerticalAlignment = Enum.VerticalAlignment.Center
   var396.Layout = Enum.FillDirection.Horizontal
   var396.OnClick = arg1.footerButtonClicked
   local var406 = {}
   var406.Bottom = 8
   var396.Padding = var406
   var396.Position = UDim2.new(0, 0, 1, 0)
   var396.Size = UDim2.new(1, 0, 0, 0)
   var396.Spacing = 20
   local var421 = {}
   local var425 = {}
   var425.AutomaticSize = Enum.AutomaticSize.XY
   var425.LayoutOrder = var7:getNextOrder()
   var425.OnClick = arg1.onReset
   var425.Text = var1:getText("General", "SearchOptionsResetAll")
   var421.CancelButton = var2.createElement(var12, var425)
   local var438 = {}
   var438.LayoutOrder = var7:getNextOrder()
   var438.OnClick = arg1.onSubmit
   var438.Style = "RoundPrimary"
   var438.Size = UDim2.fromOffset(var5.X + var16.X * 2, var5.Y + var16.Y * 2)
   var438.Text = var4
   local var455 = {}
   local var459 = {}
   var459.Cursor = "PointingHand"
   var455.HoverArea = var2.createElement(var11, var459)
   var421.ApplyButton = var2.createElement(var10, var438, var455)
   var341.Footer = var2.createElement(var13, var396, var421)
   var244.BottomButtonsContainer = var2.createElement(var13, var323, var341)
   var229.Contents = var2.createElement(var13, var233, var244)
   var199.MainPositioning = var2.createElement(var13, var7.join(var205, var0.WrapperProps), var229)
   var182.ClickEventDetectFrame = var2.createElement("ImageButton", var186, var199)
   return var2.createElement(var14, var180, var182)
end

fun9 = var6.withContext
local var469 = {}
var469.Localization = var6.Localization
var469.Modal = require(var0.Core.ContextServices.ModalContext)
var469.Network = require(var0.Core.ContextServices.NetworkContext)
var469.Stylizer = var6.Stylizer
var469.Settings = require(var0.Core.ContextServices.Settings)
var20 = fun9(var469)(var20)
local var485 = require(var1.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.searchWithOptions()
      arg1.props.OnClose()
   end
   
   return var0
end)(var20)
var20 = var485
var485 = var3.Wrappers.withAbsoluteSize
return var485(var20)
