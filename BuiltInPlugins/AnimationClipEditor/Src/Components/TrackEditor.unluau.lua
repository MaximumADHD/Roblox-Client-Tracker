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
      local var120 = {}
      var120.AbsoluteSize = arg1.AbsoluteSize
      var120.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var120)
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
            local var157 = 0
            if var157 < arg2.Position.Z then
               var157 = var0
               var0.SetHorizontalScrollZoom(var157, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var246 = var7
      var246 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var246.getScaledKeyframePosition(var246, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
   local var413 = {}
   var413.BackgroundTransparency = 1
   var413.ZIndex = var0.ZIndex
   var413.LayoutOrder = var0.LayoutOrder
   var413.Size = var0.Size
   var1.Change.AbsoluteSize = arg1.updateSize
   var1.Event.InputBegan = arg1.inputBegan
   var1.Event.InputEnded = arg1.inputEnded
   var1.Event.MouseLeave = arg1.stopDragging
   local var431 = {}
   local var435 = {}
   var435.FillDirection = Enum.FillDirection.Vertical
   var435.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var435.SortOrder = Enum.SortOrder.LayoutOrder
   var435.VerticalAlignment = Enum.VerticalAlignment.Top
   var431.Layout = var1.createElement("UIListLayout", var435)
   local var444 = {}
   var444.StartTick = var2
   var444.EndTick = var3
   var444.LastTick = var0.LastTick
   var444.SnapMode = var0.SnapMode
   var444.TrackPadding = var9
   var444.FrameRate = var0.FrameRate
   var444.ShowAsSeconds = var4
   var444.LayoutOrder = 0
   var444.ParentSize = var7
   var444.ParentPosition = var8
   var444.StepAnimation = arg1.stepAnimation
   var444.SnapToNearestKeyframe = var0.SnapToNearestKeyframe
   var444.SnapToNearestFrame = var0.SnapToNearestFrame
   var444.AnimationData = var0.AnimationData
   var444.Playhead = var6
   var444.ZIndex = 2
   var444.EditorMode = var0.EditorMode
   var444.OnToggleEditorClicked = arg1.toggleEditorClicked
   var431.TimelineContainer = var1.createElement(var11, var444)
   if true then
      local var455 = {}
      var455.ShowEvents = var5
      var455.StartTick = var2
      var455.EndTick = var3
      var455.TrackPadding = var9
      var455.TopTrackIndex = var0.TopTrackIndex
      var455.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var455.ShowAsSeconds = var4
      var455.IsChannelAnimation = var0.IsChannelAnimation
      var455.ColorsPosition = var0.ColorsPosition
      var455.ZIndex = 1
      var455.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var9, var455) or nil
   end
   var431.DopeSheetController = nil
   if var10 then
      local var476 = {}
      var476.ShowEvents = var5
      var476.StartTick = var2
      var476.EndTick = var3
      var476.TrackPadding = var9
      var476.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var476.ShowAsSeconds = var4
      var476.Playhead = var6
      var476.ZIndex = 1
      var476.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var10, var476) or nil
   end
   var431.CurveEditorController = nil
   if var0.CannotPasteError then
      local var497 = {}
      var497.Text = var0.Localization:getText("Toast", "CannotPasteError")
      var497.OnClose = var0.CloseCannotPasteToast
      local var0 = var1.createElement(var14, var497) or nil
   end
   var431.CannotPasteToast = nil
   local var511 = {}
   local var515 = {}
   var515.Position = UDim2.new(0.5, 0, 0, var6.TIMELINE_HEIGHT)
   var515.DominantAxis = Enum.DominantAxis.Width
   var515.Weight = 1
   var515.Padding = 0
   var515.ZIndex = 2
   local var527 = var1.createElement(var5, var515)
   var511.TimelineBorder = var527
   var527 = false
   if var527 then
      local var531 = {}
      var531.Position = UDim2.new(0, arg1.getPlayheadPositionX(), 0, 0)
      var531.AnchorPoint = Vector2.new(0.5, 0)
      var531.Height = var7.Y
      var531.ShowHead = true
      var531.HeadSize = UDim2.new(0, 5, 0, 5)
      var531.ZIndex = 3
      var531.Thickness = 1
      local var0 = var1.createElement(var13, var531)
   end
   var511.Scrubber = var527
   local var557 = {}
   var557.Size = UDim2.new(0, var7.X - var6.SCROLL_BAR_PADDING + 1, 0, var6.SCROLL_BAR_SIZE)
   var557.Position = UDim2.new(0, 0, 1, var6.SCROLL_BAR_SIZE)
   var557.Direction = var12.HORIZONTAL
   var557.ZIndex = 4
   var557.LayoutOrder = 2
   var557.ContainerSize = Vector2.new(var7.X, var7.Y)
   var557.AdjustScrollZoom = var0.SetHorizontalScrollZoom
   var557.Scroll = var0.HorizontalScroll
   var557.Zoom = var0.HorizontalZoom
   var557.Min = var8.X + 1
   local var588 = var1.createElement(var12, var557)
   var511.HorizontalZoomBar = var588
   var588 = var10
   if var588 then
      local var592 = {}
      var592.Size = UDim2.new(0, var6.SCROLL_BAR_SIZE, 0, var7.Y - var6.SCROLL_BAR_SIZE - var6.SCROLL_BAR_PADDING - var6.TIMELINE_HEIGHT + 1)
      var592.Position = UDim2.new(1, 0, 0, var6.TIMELINE_HEIGHT)
      var592.Direction = var12.VERTICAL
      var592.ZIndex = 4
      var592.LayoutOrder = 2
      var592.ContainerSize = Vector2.new(var7.X, var7.Y - var6.SCROLL_BAR_SIZE - var6.TIMELINE_HEIGHT)
      var592.AdjustScrollZoom = var0.SetVerticalScrollZoom
      var592.Scroll = var0.VerticalScroll
      var592.Zoom = var0.VerticalZoom
      var592.Min = var8.Y + var6.TIMELINE_HEIGHT + 1
      local var0 = var1.createElement(var12, var592)
   end
   var511.VerticalZoomBar = var588
   local var641 = {}
   function var641.OnKeyPressed(arg1)
      local var644 = {}
      var644.AbsoluteSize = arg1.AbsoluteSize
      var644.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var644)
   end
   
   function var641.OnKeyReleased(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var681 = 0
            if var681 < arg2.Position.Z then
               var681 = var0
               var0.SetHorizontalScrollZoom(var681, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
   
   var511.KeyboardListener = var1.createElement(var4, var641)
   var431.IgnoreLayout = var1.createElement("Folder", {}, var511)
   return var1.createElement("Frame", var413, var431)
end

local var960 = {}
var960.Analytics = var3.Analytics
var960.Localization = var3.Localization
local var963 = var3.Mouse
var960.Mouse = var963
var23 = var3.withContext(var960)(var23)
function var963(arg1)
   local var0 = {}
   function var0.CloseCannotPasteToast(arg1)
      local var775 = {}
      var775.AbsoluteSize = arg1.AbsoluteSize
      var775.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var775)
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
            local var812 = 0
            if var812 < arg2.Position.Z then
               var812 = var0
               var0.SetHorizontalScrollZoom(var812, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var901 = var7
      var901 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var901.getScaledKeyframePosition(var901, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
end, var963)(var23)
