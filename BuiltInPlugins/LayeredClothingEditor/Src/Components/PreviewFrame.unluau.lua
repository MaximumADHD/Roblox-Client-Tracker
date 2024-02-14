-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Packages.AvatarToolsShared)
local var4 = var3.Util.AccessoryAndBodyToolShared
local var5 = var4.PreviewConstantsInterface
local var6 = var3.Components
local var7 = var6.AnimationPlaybackSlider
local var8 = var6.PreviewDockWidget
local var9 = var6.PreviewCategoryList
local var10 = require(var0.Packages.Framework)
local var11 = var10.ContextServices
local var12 = var10.Util
local var13 = var12.LayoutOrderIterator
local var14 = var10.UI.Pane
local var15 = require(var0.Src.Components.Preview.PreviewTabsRibbon)
local var16 = require(var0.Src.Components.Preview.Grid)
local var17 = require(var0.Src.Components.Preview.PreviewTopBarWrapper)
local var18 = require(var0.Src.Actions.SelectPreviewTab)
local var19 = require(var0.Src.Actions.SetCategoryFilter)
local var20 = require(var0.Src.Actions.SetSliderPlayhead)
local var21 = require(var0.Src.Actions.SetIsPlaying)
local var22 = require(var0.Src.Actions.SetPlayhead)
local var23 = require(var0.Src.Actions.SetTrackLength)
local var24 = var4.PreviewingInfo
local var25 = var1.PureComponent:extend("PreviewFrame")
var12.Typecheck.wrap(var25, script)
function var25.init(arg1)
   local var95 = {}
   var95.gridHeightOffset = 0
   var95.gridWidthOffset = 0
   arg1.state = var95
   arg1.previewFrameRef = var1.createRef()
   function arg1.onCategoryChanged(arg1, arg2)
      local var104 = arg1.props
      var104 = arg1
      var104.SetSelectedTab(var104)
      local var107 = arg1.props
      var107 = arg2
      var107.SetCategoryFilter(var107)
   end
   
   function arg1.onAbsoluteSizeChanged(arg1)
      local var0 = arg1.props
      local var1 = 1
      local var123 = var5
      var123 = var0.SelectedTab
      if var123.shouldTabShowPlaybackSlider(var123) then
         local var0 = var0.Stylizer.SliderHeight
         local var1 = var1 + 1
      end
      local var129 = {}
      var129.gridHeightOffset = arg1.PreviewTopBar.AbsoluteSize.Y + var1 * 6 + 0
      var129.gridWidthOffset = arg1.GridContainer.CategoryList.AbsoluteSize.X + 6
      arg1:setState(var129)
   end
   
end

function var25.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.Stylizer
   local var3 = var13.new()
   local var4 = 1
   if arg1.previewFrameRef.current then
      local var0 = arg1.previewFrameRef.current.GridContainer.Grid.ZIndex + 1
   end
   local var165 = {}
   var165.BackgroundColor3 = var2.BackgroundColor
   var165.BorderSizePixel = 0
   var165.Size = var0.Size
   var165.LayoutOrder = var0.LayoutOrder
   var1.Ref = arg1.previewFrameRef
   var1.Change.AbsoluteSize = arg1.onAbsoluteSizeChanged
   local var175 = {}
   local var179 = {}
   var179.FillDirection = Enum.FillDirection.Vertical
   var179.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var179.VerticalAlignment = Enum.VerticalAlignment.Top
   var179.SortOrder = Enum.SortOrder.LayoutOrder
   var179.Padding = UDim.new(0, var2.Padding)
   var175.UIListLayout = var1.createElement("UIListLayout", var179)
   local var192 = {}
   var192.PaddingTop = UDim.new(0, var2.Padding)
   var175.UIPadding = var1.createElement("UIPadding", var192)
   local var201 = {}
   var201.LayoutOrder = var3:getNextOrder()
   var175.PreviewTopBar = var1.createElement(var17, var201)
   local var208 = {}
   var208.Size = UDim2.new(1, 0, 1, var1.gridHeightOffset)
   var208.Layout = Enum.FillDirection.Horizontal
   var208.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var208.LayoutOrder = var3:getNextOrder()
   var208.BackgroundColor = var2.GridContainerBackgroundColor
   var208.Spacing = var2.GridContainerSpacing
   local var221 = {}
   var221.Top = var2.GridContainerPadding
   var221.Bottom = var2.GridContainerPadding
   var208.Padding = var221
   local var224 = {}
   local var228 = {}
   var228.LayoutOrder = var3:getNextOrder()
   var228.OnCategoryChanged = arg1.onCategoryChanged
   function var228.OnArrowClick(arg1, arg2)
      local var235 = arg1.props
      var235 = arg1
      var235.SetSelectedTab(var235)
      local var238 = arg1.props
      var238 = arg2
      var238.SetCategoryFilter(var238)
   end
   
   var224.CategoryList = var1.createElement(var9, var228)
   local var244 = {}
   var244.Size = UDim2.new(1, var1.gridWidthOffset, 1, 0)
   var244.layoutOrder = var3:getNextOrder()
   var244.UpdateUserAddedAssets = var0.UpdateUserAddedAssets
   var244.UserAddedAssets = var0.UserAddedAssets
   var224.Grid = var1.createElement(var16, var244)
   var175.GridContainer = var1.createElement(var14, var208, var224)
   local var256 = var5
   var256 = var0.SelectedTab
   local var5 = var256.shouldTabShowPlaybackSlider(var256)
   if var5 then
      local var262 = {}
      var262.Size = UDim2.new(1, var2.MainPadding, 0, var2.SliderHeight)
      var262.LayoutOrder = var3:getNextOrder()
      local var272 = {}
      local var276 = {}
      var276.IsPlaying = var0.IsPlaying
      var276.Playhead = var0.Playhead
      var276.OnSliderPlayheadChanged = var0.SetSliderPlayhead
      var276.OnPlayPauseClicked = var0.SetIsPlaying
      var276.Size = UDim2.new(1, 0, 0, var2.SliderHeight)
      var276.TrackLength = var0.TrackLength
      var272.AnimPlaybackSlider = var1.createElement(var7, var276)
      local var0 = var1.createElement(var14, var262, var272)
   end
   var175.AnimPlaybackSliderContainer = var5
   return var1.createElement("Frame", var165, var175)
end

local function fun5(arg1, arg2)
   if arg1.props.SelectedTab ~= arg2.SelectedTab then
      arg1.onAbsoluteSizeChanged(arg1.previewFrameRef.current)
   end
end

function var25.didUpdate(arg1, arg2)
   if arg1.props.SelectedTab ~= arg2.SelectedTab then
      arg1.onAbsoluteSizeChanged(arg1.previewFrameRef.current)
   end
end

fun5 = var11.withContext
local var294 = {}
var294.Stylizer = var11.Stylizer
var25 = fun5(var294)(var25)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = arg1.animation
   local var1 = {}
   var1.SelectedTab = arg1.previewStatus.selectedTab
   local var305 = var24
   var305 = arg1
   var1.AnimationId = var305.getPreviewingAnimationId(var305)
   var1.IsPlaying = var0.IsPlaying
   var1.Playhead = var0.Playhead
   var1.TrackLength = var0.TrackLength
   var1.SliderPlayhead = var0.SliderPlayhead
   return var1
end, function(arg1)
   local var0 = {}
   function var0.SetSelectedTab(arg1, arg2)
      local var317 = arg1.props
      var317 = arg1
      var317.SetSelectedTab(var317)
      local var320 = arg1.props
      var320 = arg2
      var320.SetCategoryFilter(var320)
   end
   
   function var0.SetCategoryFilter(arg1)
      local var0 = arg1.props
      local var1 = 1
      local var336 = var5
      var336 = var0.SelectedTab
      if var336.shouldTabShowPlaybackSlider(var336) then
         local var0 = var0.Stylizer.SliderHeight
         local var1 = var1 + 1
      end
      local var342 = {}
      var342.gridHeightOffset = arg1.PreviewTopBar.AbsoluteSize.Y + var1 * 6 + 0
      var342.gridWidthOffset = arg1.GridContainer.CategoryList.AbsoluteSize.X + 6
      arg1:setState(var342)
   end
   
   function var0.SetIsPlaying(arg1)
      local var349 = {}
      var349.gridHeightOffset = 0
      var349.gridWidthOffset = 0
      arg1.state = var349
      arg1.previewFrameRef = var1.createRef()
      function arg1.onCategoryChanged(arg1, arg2)
         local var358 = arg1.props
         var358 = arg1
         var358.SetSelectedTab(var358)
         local var361 = arg1.props
         var361 = arg2
         var361.SetCategoryFilter(var361)
      end
      
      function arg1.onAbsoluteSizeChanged(arg1)
         local var0 = arg1.props
         local var1 = 1
         local var377 = var5
         var377 = var0.SelectedTab
         if var377.shouldTabShowPlaybackSlider(var377) then
            local var0 = var0.Stylizer.SliderHeight
            local var1 = var1 + 1
         end
         local var383 = {}
         var383.gridHeightOffset = arg1.PreviewTopBar.AbsoluteSize.Y + var1 * 6 + 0
         var383.gridWidthOffset = arg1.GridContainer.CategoryList.AbsoluteSize.X + 6
         arg1:setState(var383)
      end
      
   end
   
   function var0.SetSliderPlayhead()
      arg1.onAbsoluteSizeChanged(arg1.previewFrameRef.current)
   end
   
   function var0.SetPlayhead(arg1)
      local var0 = arg1.props
      local var1 = arg1.state
      local var2 = var0.Stylizer
      local var3 = var13.new()
      local var4 = 1
      if arg1.previewFrameRef.current then
         local var0 = arg1.previewFrameRef.current.GridContainer.Grid.ZIndex + 1
      end
      local var424 = {}
      var424.BackgroundColor3 = var2.BackgroundColor
      var424.BorderSizePixel = 0
      var424.Size = var0.Size
      var424.LayoutOrder = var0.LayoutOrder
      var1.Ref = arg1.previewFrameRef
      var1.Change.AbsoluteSize = arg1.onAbsoluteSizeChanged
      local var434 = {}
      local var438 = {}
      var438.FillDirection = Enum.FillDirection.Vertical
      var438.HorizontalAlignment = Enum.HorizontalAlignment.Center
      var438.VerticalAlignment = Enum.VerticalAlignment.Top
      var438.SortOrder = Enum.SortOrder.LayoutOrder
      var438.Padding = UDim.new(0, var2.Padding)
      var434.UIListLayout = var1.createElement("UIListLayout", var438)
      local var451 = {}
      var451.PaddingTop = UDim.new(0, var2.Padding)
      var434.UIPadding = var1.createElement("UIPadding", var451)
      local var460 = {}
      var460.LayoutOrder = var3:getNextOrder()
      var434.PreviewTopBar = var1.createElement(var17, var460)
      local var467 = {}
      var467.Size = UDim2.new(1, 0, 1, var1.gridHeightOffset)
      var467.Layout = Enum.FillDirection.Horizontal
      var467.HorizontalAlignment = Enum.HorizontalAlignment.Left
      var467.LayoutOrder = var3:getNextOrder()
      var467.BackgroundColor = var2.GridContainerBackgroundColor
      var467.Spacing = var2.GridContainerSpacing
      local var480 = {}
      var480.Top = var2.GridContainerPadding
      var480.Bottom = var2.GridContainerPadding
      var467.Padding = var480
      local var483 = {}
      local var487 = {}
      var487.LayoutOrder = var3:getNextOrder()
      var487.OnCategoryChanged = arg1.onCategoryChanged
      function var487.OnArrowClick(arg1, arg2)
         local var494 = arg1.props
         var494 = arg1
         var494.SetSelectedTab(var494)
         local var497 = arg1.props
         var497 = arg2
         var497.SetCategoryFilter(var497)
      end
      
      var483.CategoryList = var1.createElement(var9, var487)
      local var503 = {}
      var503.Size = UDim2.new(1, var1.gridWidthOffset, 1, 0)
      var503.layoutOrder = var3:getNextOrder()
      var503.UpdateUserAddedAssets = var0.UpdateUserAddedAssets
      var503.UserAddedAssets = var0.UserAddedAssets
      var483.Grid = var1.createElement(var16, var503)
      var434.GridContainer = var1.createElement(var14, var467, var483)
      local var515 = var5
      var515 = var0.SelectedTab
      local var5 = var515.shouldTabShowPlaybackSlider(var515)
      if var5 then
         local var521 = {}
         var521.Size = UDim2.new(1, var2.MainPadding, 0, var2.SliderHeight)
         var521.LayoutOrder = var3:getNextOrder()
         local var531 = {}
         local var535 = {}
         var535.IsPlaying = var0.IsPlaying
         var535.Playhead = var0.Playhead
         var535.OnSliderPlayheadChanged = var0.SetSliderPlayhead
         var535.OnPlayPauseClicked = var0.SetIsPlaying
         var535.Size = UDim2.new(1, 0, 0, var2.SliderHeight)
         var535.TrackLength = var0.TrackLength
         var531.AnimPlaybackSlider = var1.createElement(var7, var535)
         local var0 = var1.createElement(var14, var521, var531)
      end
      var434.AnimPlaybackSliderContainer = var5
      return var1.createElement("Frame", var424, var434)
   end
   
   function var0.SetTrackLength(arg1, arg2)
      if arg1.props.SelectedTab ~= arg2.SelectedTab then
         arg1.onAbsoluteSizeChanged(arg1.previewFrameRef.current)
      end
   end
   
   return var0
end)(var25)
