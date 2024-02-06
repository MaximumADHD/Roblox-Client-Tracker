-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.KeyboardListener
local var5 = var2.UI.Separator
local var6 = require(var0.Src.Util.Constants)
local var7 = require(var0.Src.Util.TrackUtils)
local var8 = require(var0.Src.Util.Input)
local var9 = require(var0.Src.Components.DopeSheetController)
local var10 = require(var0.Src.Components.Curves.CurveEditorController)
local var11 = require(var0.Src.Components.TimelineContainer)
local var12 = require(var0.Src.Components.ZoomBar)
local var13 = require(var0.Src.Components.Timeline.Scrubber)
local var14 = require(var0.Src.Components.Toast.NoticeToast)
local var15 = require(var0.Src.Actions.SetEditorMode)
local var16 = require(var0.Src.Actions.SetHorizontalScrollZoom)
local var17 = require(var0.Src.Actions.SetNotification)
local var18 = require(var0.Src.Actions.SetVerticalScrollZoom)
local var19 = require(var0.Src.Thunks.SnapToNearestFrame)
local var20 = require(var0.Src.Thunks.SnapToNearestKeyframe)
local var21 = require(var0.Src.Thunks.Playback.StepAnimation)
local var22 = require(var0.Src.Thunks.SwitchEditorMode)
local var23 = var1.PureComponent:extend("TrackEditor")
function var23.init(arg1)
   arg1.ctrlHeld = false
   arg1.dragging = false
   function arg1.updateSize(arg1)
      local var346 = {}
      var346.AbsoluteSize = arg1.AbsoluteSize
      var346.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var346)
   end
   
   function arg1.inputChanged(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var383 = 0
            if var383 < arg2.Position.Z then
               var383 = var0
               var0.SetHorizontalScrollZoom(var383, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
            end
            local var1 = 0
            if arg2.Position.Z < var1 then
               var1 = var0
               var0.SetHorizontalScrollZoom(var1, math.clamp(var1 - var6.ZOOM_INCREMENT, 0, 1))
               var0.OnScroll(arg2.Position.Z)
               if arg2.UserInputType == "Enum" then
                  if arg1.dragging then
                     local var0 = arg2.Delta.X / var3 * 1 / math.max(0.01, var1)
                     var0 = math.clamp(var2 + var0, 0, 1)
                     var0.SetHorizontalScrollZoom(var0, var1)
                  end
               end
            end
         end
         var0.OnScroll(arg2.Position.Z)
      end
      if arg2.UserInputType == "Enum" then
         if arg1.dragging then
            local var0 = arg2.Delta.X / var3 * 1 / math.max(0.01, var1)
            var0 = math.clamp(var2 + var0, 0, 1)
            var0.SetHorizontalScrollZoom(var0, var1)
         end
      end
   end
   
   function arg1.startDragging()
      arg1.dragging = true
   end
   
   function arg1.stopDragging()
      arg1.dragging = false
   end
   
   function arg1.getPlayheadPositionX()
      local var0 = arg1.props
      local var472 = var7
      var472 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var472.getScaledKeyframePosition(var472, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
   end
   
   function arg1.stepAnimation(arg1)
      local var0 = arg1.props
      local var1 = var6.PLAY_STATE.Pause
      if var0.PlayState == "Pause" then
         var1 = arg1
         var0.StepAnimation(var1)
      end
   end
   
   function arg1.inputBegan(arg1, arg2)
      if arg1.props.Mouse then
         if arg2.UserInputType == "Enum" then
            arg1.props.Mouse:__pushCursor("ClosedHand")
            arg1.startDragging()
         end
      end
   end
   
   function arg1.inputEnded(arg1, arg2)
      if arg1.props.Mouse then
         if arg1.dragging then
            if arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
               if arg2.UserInputType == "UserInputType" then
                  arg1.props.Mouse:__popCursor()
                  arg1.stopDragging()
               end
            end
         end
      end
      if arg2.UserInputType == "UserInputType" then
         arg1.props.Mouse:__popCursor()
         arg1.stopDragging()
      end
   end
   
   function arg1.getTrackPadding()
      local var0 = math.max(arg1.props.LastTick, arg1.props.EndTick) * arg1.props.FrameRate / var6.TICK_FREQUENCY
      if var0 < 100 then
         return var6.TRACK_PADDING_SMALL
      end
      if var0 < 1000 then
         return var6.TRACK_PADDING_MEDIUM
      end
      return var6.TRACK_PADDING_LARGE
   end
   
   function arg1.toggleEditorClicked()
      if arg1.props.IsChannelAnimation then
         if arg1.props.EditorMode == "IsChannelAnimation" then
            arg1.props.SwitchEditorMode(var6.EDITOR_MODE.DopeSheet, arg1.props.Analytics)
         end
         arg1.props.SwitchEditorMode(var6.EDITOR_MODE.CurveCanvas, arg1.props.Analytics)
      end
      if not arg1.props.ReadOnly then
         arg1.props.OnPromoteRequested()
      end
   end
   
end

function var23.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.StartTick
   local var3 = var0.EndTick
   local var4 = var0.ShowAsSeconds
   local var5 = var0.ShowEvents
   local var6 = var0.Playhead
   local var7 = var1.AbsoluteSize or Vector2.new()
   local var8 = var1.AbsolutePosition or Vector2.new()
   local var9 = arg1.getTrackPadding()
   if var2 <= var6 then
      if var3 >= var6 then
         local var0 = false
      end
      local var0 = true
   end
   if var0.EditorMode ~= var6.EDITOR_MODE.DopeSheet then
      local var0 = false
   end
   if var0.EditorMode ~= var6.EDITOR_MODE.CurveCanvas then
      local var0 = false
   end
   local var10 = true
   local var639 = {}
   var639.BackgroundTransparency = 1
   var639.ZIndex = var0.ZIndex
   var639.LayoutOrder = var0.LayoutOrder
   var639.Size = var0.Size
   var1.Change.AbsoluteSize = arg1.updateSize
   var1.Event.InputBegan = arg1.inputBegan
   var1.Event.InputEnded = arg1.inputEnded
   var1.Event.MouseLeave = arg1.stopDragging
   local var657 = {}
   local var661 = {}
   var661.FillDirection = Enum.FillDirection.Vertical
   var661.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var661.SortOrder = Enum.SortOrder.LayoutOrder
   var661.VerticalAlignment = Enum.VerticalAlignment.Top
   var657.Layout = var1.createElement("UIListLayout", var661)
   local var670 = {}
   var670.StartTick = var2
   var670.EndTick = var3
   var670.LastTick = var0.LastTick
   var670.SnapMode = var0.SnapMode
   var670.TrackPadding = var9
   var670.FrameRate = var0.FrameRate
   var670.ShowAsSeconds = var4
   var670.LayoutOrder = 0
   var670.ParentSize = var7
   var670.ParentPosition = var8
   var670.StepAnimation = arg1.stepAnimation
   var670.SnapToNearestKeyframe = var0.SnapToNearestKeyframe
   var670.SnapToNearestFrame = var0.SnapToNearestFrame
   var670.AnimationData = var0.AnimationData
   var670.Playhead = var6
   var670.ZIndex = 2
   var670.EditorMode = var0.EditorMode
   var670.OnToggleEditorClicked = arg1.toggleEditorClicked
   var657.TimelineContainer = var1.createElement(var11, var670)
   if true then
      local var681 = {}
      var681.ShowEvents = var5
      var681.StartTick = var2
      var681.EndTick = var3
      var681.TrackPadding = var9
      var681.TopTrackIndex = var0.TopTrackIndex
      var681.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var681.ShowAsSeconds = var4
      var681.IsChannelAnimation = var0.IsChannelAnimation
      var681.ColorsPosition = var0.ColorsPosition
      var681.ZIndex = 1
      var681.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var9, var681) or nil
   end
   var657.DopeSheetController = nil
   if var10 then
      local var702 = {}
      var702.ShowEvents = var5
      var702.StartTick = var2
      var702.EndTick = var3
      var702.TrackPadding = var9
      var702.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var702.ShowAsSeconds = var4
      var702.Playhead = var6
      var702.ZIndex = 1
      var702.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var10, var702) or nil
   end
   var657.CurveEditorController = nil
   if var0.CannotPasteError then
      local var723 = {}
      var723.Text = var0.Localization:getText("Toast", "CannotPasteError")
      var723.OnClose = var0.CloseCannotPasteToast
      local var0 = var1.createElement(var14, var723) or nil
   end
   var657.CannotPasteToast = nil
   local var737 = {}
   local var741 = {}
   var741.Position = UDim2.new(0.5, 0, 0, var6.TIMELINE_HEIGHT)
   var741.DominantAxis = Enum.DominantAxis.Width
   var741.Weight = 1
   var741.Padding = 0
   var741.ZIndex = 2
   local var753 = var1.createElement(var5, var741)
   var737.TimelineBorder = var753
   var753 = false
   if var753 then
      local var757 = {}
      var757.Position = UDim2.new(0, arg1.getPlayheadPositionX(), 0, 0)
      var757.AnchorPoint = Vector2.new(0.5, 0)
      var757.Height = var7.Y
      var757.ShowHead = true
      var757.HeadSize = UDim2.new(0, 5, 0, 5)
      var757.ZIndex = 3
      var757.Thickness = 1
      local var0 = var1.createElement(var13, var757)
   end
   var737.Scrubber = var753
   local var789 = {}
   var789.Size = UDim2.new(0, var7.X - var6.SCROLL_BAR_PADDING + 1, 0, var6.SCROLL_BAR_SIZE)
   var789.Position = UDim2.new(0, 0, 1, var6.SCROLL_BAR_SIZE)
   var789.Direction = var12.HORIZONTAL
   var789.ZIndex = 4
   var789.LayoutOrder = 2
   var789.ContainerSize = Vector2.new(var7.X, var7.Y)
   var789.AdjustScrollZoom = var0.SetHorizontalScrollZoom
   var789.Scroll = var0.HorizontalScroll
   var789.Zoom = var0.HorizontalZoom
   var789.Min = var8.X + 1
   local var29 = var1.createElement(var12, var789)
   var737.HorizontalZoomBar = var29
   var29 = var10
   if var29 then
      local var33 = {}
      var33.Size = UDim2.new(0, var6.SCROLL_BAR_SIZE, 0, var7.Y - var6.SCROLL_BAR_SIZE - var6.SCROLL_BAR_PADDING - var6.TIMELINE_HEIGHT + 1)
      var33.Position = UDim2.new(1, 0, 0, var6.TIMELINE_HEIGHT)
      var33.Direction = var12.VERTICAL
      var33.ZIndex = 4
      var33.LayoutOrder = 2
      var33.ContainerSize = Vector2.new(var7.X, var7.Y - var6.SCROLL_BAR_SIZE - var6.TIMELINE_HEIGHT)
      var33.AdjustScrollZoom = var0.SetVerticalScrollZoom
      var33.Scroll = var0.VerticalScroll
      var33.Zoom = var0.VerticalZoom
      var33.Min = var8.Y + var6.TIMELINE_HEIGHT + 1
      local var0 = var1.createElement(var12, var33)
   end
   var737.VerticalZoomBar = var29
   local var82 = {}
   function var82.OnKeyPressed(arg1)
      local var85 = {}
      var85.AbsoluteSize = arg1.AbsoluteSize
      var85.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var85)
   end
   
   function var82.OnKeyReleased(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var122 = 0
            if var122 < arg2.Position.Z then
               var122 = var0
               var0.SetHorizontalScrollZoom(var122, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
            end
            local var1 = 0
            if arg2.Position.Z < var1 then
               var1 = var0
               var0.SetHorizontalScrollZoom(var1, math.clamp(var1 - var6.ZOOM_INCREMENT, 0, 1))
               var0.OnScroll(arg2.Position.Z)
               if arg2.UserInputType == "Enum" then
                  if arg1.dragging then
                     local var0 = arg2.Delta.X / var3 * 1 / math.max(0.01, var1)
                     var0 = math.clamp(var2 + var0, 0, 1)
                     var0.SetHorizontalScrollZoom(var0, var1)
                  end
               end
            end
         end
         var0.OnScroll(arg2.Position.Z)
      end
      if arg2.UserInputType == "Enum" then
         if arg1.dragging then
            local var0 = arg2.Delta.X / var3 * 1 / math.max(0.01, var1)
            var0 = math.clamp(var2 + var0, 0, 1)
            var0.SetHorizontalScrollZoom(var0, var1)
         end
      end
   end
   
   var737.KeyboardListener = var1.createElement(var4, var82)
   var657.IgnoreLayout = var1.createElement("Folder", {}, var737)
   return var1.createElement("Frame", var639, var657)
end

local var401 = {}
var401.Analytics = var3.Analytics
var401.Localization = var3.Localization
local var404 = var3.Mouse
var401.Mouse = var404
var23 = var3.withContext(var401)(var23)
function var404(arg1)
   local var0 = {}
   function var0.CloseCannotPasteToast(arg1)
      local var216 = {}
      var216.AbsoluteSize = arg1.AbsoluteSize
      var216.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var216)
   end
   
   function var0.SetHorizontalScrollZoom(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var253 = 0
            if var253 < arg2.Position.Z then
               var253 = var0
               var0.SetHorizontalScrollZoom(var253, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
            end
            local var1 = 0
            if arg2.Position.Z < var1 then
               var1 = var0
               var0.SetHorizontalScrollZoom(var1, math.clamp(var1 - var6.ZOOM_INCREMENT, 0, 1))
               var0.OnScroll(arg2.Position.Z)
               if arg2.UserInputType == "Enum" then
                  if arg1.dragging then
                     local var0 = arg2.Delta.X / var3 * 1 / math.max(0.01, var1)
                     var0 = math.clamp(var2 + var0, 0, 1)
                     var0.SetHorizontalScrollZoom(var0, var1)
                  end
               end
            end
         end
         var0.OnScroll(arg2.Position.Z)
      end
      if arg2.UserInputType == "Enum" then
         if arg1.dragging then
            local var0 = arg2.Delta.X / var3 * 1 / math.max(0.01, var1)
            var0 = math.clamp(var2 + var0, 0, 1)
            var0.SetHorizontalScrollZoom(var0, var1)
         end
      end
   end
   
   function var0.SetVerticalScrollZoom()
      arg1.dragging = true
   end
   
   function var0.StepAnimation()
      arg1.dragging = false
   end
   
   function var0.SnapToNearestKeyframe()
      local var0 = arg1.props
      local var342 = var7
      var342 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var342.getScaledKeyframePosition(var342, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
   end
   
   function var0.SnapToNearestFrame(arg1)
      local var0 = arg1.props
      local var1 = var6.PLAY_STATE.Pause
      if var0.PlayState == "Pause" then
         var1 = arg1
         var0.StepAnimation(var1)
      end
   end
   
   function var0.SetEditorMode(arg1, arg2)
      if arg1.props.Mouse then
         if arg2.UserInputType == "Enum" then
            arg1.props.Mouse:__pushCursor("ClosedHand")
            arg1.startDragging()
         end
      end
   end
   
   function var0.SwitchEditorMode(arg1, arg2)
      if arg1.props.Mouse then
         if arg1.dragging then
            if arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
               if arg2.UserInputType == "UserInputType" then
                  arg1.props.Mouse:__popCursor()
                  arg1.stopDragging()
               end
            end
         end
      end
      if arg2.UserInputType == "UserInputType" then
         arg1.props.Mouse:__popCursor()
         arg1.stopDragging()
      end
   end
   
   return var0
end

return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.AnimationData = arg1.AnimationData
   var0.CannotPasteError = arg1.Notifications.CannotPasteError
   var0.EditorMode = arg1.Status.EditorMode
   var0.IsPlaying = arg1.Status.IsPlaying
   var0.PlayState = arg1.Status.PlayState
   var0.SnapMode = arg1.Status.SnapMode
   var0.ReadOnly = arg1.Status.ReadOnly
   return var0
end, var404)(var23)
