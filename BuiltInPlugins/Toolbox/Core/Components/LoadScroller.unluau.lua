-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Util.Constants)
local var5 = var3.ContextServices
local var6 = var3.UI.LoadingIndicator
local var7 = var3.UI.Pane
local var8 = require(var0.Core.Components.StyledScrollingFrame)
local var9 = var2.PureComponent:extend("LoadScroller")
local var213 = {}
var213.Size = UDim2.new(1, 0, 1, 0)
var9.defaultProps = var213
function var9.init(arg1, arg2)
   local var222 = {}
   var222.initialLoading = arg2.Loading
   arg1.state = var222
   arg1.scrollingFrameRef = var2.createRef()
   function arg1.calculateRenderBounds(arg1)
   end
   
   function arg1.checkForNextPage(arg1)
      arg1:setState(function(arg1)
      end)
   end
   
end

function var9.didMount(arg1)
   arg1.checkForNextPage()
end

function var9.didUpdate(arg1, arg2)
   arg1.checkForNextPage()
   if not arg1.props.Loading then
      if arg2.Loading then
         local var240 = {}
         var240.initialLoading = false
         arg1:setState(var240)
      end
   end
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.RenderTopContent
   if arg1.state.initialLoading then
      local var261 = {}
      var261.BackgroundColor3 = var0.Stylizer.backgroundColor
      var261.BackgroundTransparency = 1
      var261.LayoutOrder = 1
      var261.Size = UDim2.new(1, 0, 1, 0)
      local var271 = {}
      local var275 = {}
      var275.AnchorPoint = Vector2.new(0.5, 0.5)
      var275.Position = UDim2.new(0.5, 0, 0.5, 0)
      var271.LoadingIndicator = var2.createElement(var6, var275)
      return var2.createElement("Frame", var261, var271)
   end
   local var2 = nil
   if var1 then
      var2 = var1()
   end
   local var294 = {}
   var294.BackgroundTransparency = 1
   var294.Size = var0.Size
   var294.LayoutOrder = var0.LayoutOrder
   var294.Position = var0.Position
   var2.Change.AbsoluteSize = arg1.checkForNextPage
   local var300 = {}
   local var304 = {}
   var304.CanvasSize = UDim2.new(1, 0, 0, var0.CalculateCanvasHeight())
   var304.Size = UDim2.new(1, 0, 1, 0)
   var304.onScroll = arg1.checkForNextPage
   var2.Ref = arg1.scrollingFrameRef
   var2.Change.AbsoluteSize = arg1.checkForNextPage
   local var325 = {}
   local var329 = {}
   var329.PaddingLeft = UDim.new(0, var4.LOAD_SCROLL_PADDING)
   var329.PaddingRight = UDim.new(0, var4.LOAD_SCROLL_PADDING + var4.SCROLLBAR_BACKGROUND_THICKNESS)
   var329.PaddingTop = UDim.new(0, var4.LOAD_SCROLL_PADDING)
   var329.PaddingBottom = UDim.new(0, var4.LOAD_SCROLL_PADDING)
   var325.UIPadding = var2.createElement("UIPadding", var329)
   local var357 = {}
   var357.FillDirection = Enum.FillDirection.Vertical
   var357.SortOrder = Enum.SortOrder.LayoutOrder
   local var360 = var2.createElement("UIListLayout", var357)
   var325.Layout = var360
   var325.TopContent = var2
   var360 = var0.RenderContent
   local var4 = var360(var0.Items)
   var325.Content = var4
   var4 = var0.Loading
   if var4 then
      local var366 = {}
      var366.LayoutOrder = 3
      var366.Size = UDim2.fromScale(1, 1)
      var366.Layout = Enum.FillDirection.Vertical
      var366.HorizontalAlignment = Enum.HorizontalAlignment.Center
      local var374 = {}
      local var378 = {}
      var378.Size = UDim2.new(0, 60, 1, 0)
      var378.BackgroundTransparency = 1
      local var386 = {}
      var386.LoadingIndicator = var2.createElement(var6)
      var374.Wrapper = var2.createElement("Frame", var378, var386)
      local var0 = var2.createElement(var7, var366, var374)
   end
   var325.LoadingIndicator = var4
   var300.StyledScrollingFrame = var2.createElement(var8, var304, var325)
   return var2.createElement("Frame", var294, var300)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.RenderTopContent
   if arg1.state.initialLoading then
      local var261 = {}
      var261.BackgroundColor3 = var0.Stylizer.backgroundColor
      var261.BackgroundTransparency = 1
      var261.LayoutOrder = 1
      var261.Size = UDim2.new(1, 0, 1, 0)
      local var271 = {}
      local var275 = {}
      var275.AnchorPoint = Vector2.new(0.5, 0.5)
      var275.Position = UDim2.new(0.5, 0, 0.5, 0)
      var271.LoadingIndicator = var2.createElement(var6, var275)
      return var2.createElement("Frame", var261, var271)
   end
   local var2 = nil
   if var1 then
      var2 = var1()
   end
   local var294 = {}
   var294.BackgroundTransparency = 1
   var294.Size = var0.Size
   var294.LayoutOrder = var0.LayoutOrder
   var294.Position = var0.Position
   var2.Change.AbsoluteSize = arg1.checkForNextPage
   local var300 = {}
   local var304 = {}
   var304.CanvasSize = UDim2.new(1, 0, 0, var0.CalculateCanvasHeight())
   var304.Size = UDim2.new(1, 0, 1, 0)
   var304.onScroll = arg1.checkForNextPage
   var2.Ref = arg1.scrollingFrameRef
   var2.Change.AbsoluteSize = arg1.checkForNextPage
   local var325 = {}
   local var329 = {}
   var329.PaddingLeft = UDim.new(0, var4.LOAD_SCROLL_PADDING)
   var329.PaddingRight = UDim.new(0, var4.LOAD_SCROLL_PADDING + var4.SCROLLBAR_BACKGROUND_THICKNESS)
   var329.PaddingTop = UDim.new(0, var4.LOAD_SCROLL_PADDING)
   var329.PaddingBottom = UDim.new(0, var4.LOAD_SCROLL_PADDING)
   var325.UIPadding = var2.createElement("UIPadding", var329)
   local var357 = {}
   var357.FillDirection = Enum.FillDirection.Vertical
   var357.SortOrder = Enum.SortOrder.LayoutOrder
   local var360 = var2.createElement("UIListLayout", var357)
   var325.Layout = var360
   var325.TopContent = var2
   var360 = var0.RenderContent
   local var4 = var360(var0.Items)
   var325.Content = var4
   var4 = var0.Loading
   if var4 then
      local var366 = {}
      var366.LayoutOrder = 3
      var366.Size = UDim2.fromScale(1, 1)
      var366.Layout = Enum.FillDirection.Vertical
      var366.HorizontalAlignment = Enum.HorizontalAlignment.Center
      local var374 = {}
      local var378 = {}
      var378.Size = UDim2.new(0, 60, 1, 0)
      var378.BackgroundTransparency = 1
      local var386 = {}
      var386.LoadingIndicator = var2.createElement(var6)
      var374.Wrapper = var2.createElement("Frame", var378, var386)
      local var0 = var2.createElement(var7, var366, var374)
   end
   var325.LoadingIndicator = var4
   var300.StyledScrollingFrame = var2.createElement(var8, var304, var325)
   return var2.createElement("Frame", var294, var300)
end

fun6 = var5.withContext
local var395 = {}
var395.Stylizer = var5.Stylizer
var9 = fun6(var395)(var9)
return var9
