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
      local var129 = {}
      var129.AbsoluteSize = arg1.AbsoluteSize
      var129.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var129)
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
            local var166 = 0
            if var166 < arg2.Position.Z then
               var166 = var0
               var0.SetHorizontalScrollZoom(var166, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var255 = var7
      var255 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var255.getScaledKeyframePosition(var255, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
   local var422 = {}
   var422.BackgroundTransparency = 1
   var422.ZIndex = var0.ZIndex
   var422.LayoutOrder = var0.LayoutOrder
   var422.Size = var0.Size
   var1.Change.AbsoluteSize = arg1.updateSize
   var1.Event.InputBegan = arg1.inputBegan
   var1.Event.InputEnded = arg1.inputEnded
   var1.Event.MouseLeave = arg1.stopDragging
   local var440 = {}
   local var444 = {}
   var444.FillDirection = Enum.FillDirection.Vertical
   var444.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var444.SortOrder = Enum.SortOrder.LayoutOrder
   var444.VerticalAlignment = Enum.VerticalAlignment.Top
   var440.Layout = var1.createElement("UIListLayout", var444)
   local var453 = {}
   var453.StartTick = var2
   var453.EndTick = var3
   var453.LastTick = var0.LastTick
   var453.SnapMode = var0.SnapMode
   var453.TrackPadding = var9
   var453.FrameRate = var0.FrameRate
   var453.ShowAsSeconds = var4
   var453.LayoutOrder = 0
   var453.ParentSize = var7
   var453.ParentPosition = var8
   var453.StepAnimation = arg1.stepAnimation
   var453.SnapToNearestKeyframe = var0.SnapToNearestKeyframe
   var453.SnapToNearestFrame = var0.SnapToNearestFrame
   var453.AnimationData = var0.AnimationData
   var453.Playhead = var6
   var453.ZIndex = 2
   var453.EditorMode = var0.EditorMode
   var453.OnToggleEditorClicked = arg1.toggleEditorClicked
   var440.TimelineContainer = var1.createElement(var11, var453)
   if true then
      local var464 = {}
      var464.ShowEvents = var5
      var464.StartTick = var2
      var464.EndTick = var3
      var464.TrackPadding = var9
      var464.TopTrackIndex = var0.TopTrackIndex
      var464.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var464.ShowAsSeconds = var4
      var464.IsChannelAnimation = var0.IsChannelAnimation
      var464.ColorsPosition = var0.ColorsPosition
      var464.ZIndex = 1
      var464.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var9, var464) or nil
   end
   var440.DopeSheetController = nil
   if var10 then
      local var485 = {}
      var485.ShowEvents = var5
      var485.StartTick = var2
      var485.EndTick = var3
      var485.TrackPadding = var9
      var485.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var485.ShowAsSeconds = var4
      var485.Playhead = var6
      var485.ZIndex = 1
      var485.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var10, var485) or nil
   end
   var440.CurveEditorController = nil
   if var0.CannotPasteError then
      local var506 = {}
      var506.Text = var0.Localization:getText("Toast", "CannotPasteError")
      var506.OnClose = var0.CloseCannotPasteToast
      local var0 = var1.createElement(var14, var506) or nil
   end
   var440.CannotPasteToast = nil
   local var520 = {}
   local var524 = {}
   var524.Position = UDim2.new(0.5, 0, 0, var6.TIMELINE_HEIGHT)
   var524.DominantAxis = Enum.DominantAxis.Width
   var524.Weight = 1
   var524.Padding = 0
   var524.ZIndex = 2
   local var536 = var1.createElement(var5, var524)
   var520.TimelineBorder = var536
   var536 = false
   if var536 then
      local var540 = {}
      var540.Position = UDim2.new(0, arg1.getPlayheadPositionX(), 0, 0)
      var540.AnchorPoint = Vector2.new(0.5, 0)
      var540.Height = var7.Y
      var540.ShowHead = true
      var540.HeadSize = UDim2.new(0, 5, 0, 5)
      var540.ZIndex = 3
      var540.Thickness = 1
      local var0 = var1.createElement(var13, var540)
   end
   var520.Scrubber = var536
   local var566 = {}
   var566.Size = UDim2.new(0, var7.X - var6.SCROLL_BAR_PADDING + 1, 0, var6.SCROLL_BAR_SIZE)
   var566.Position = UDim2.new(0, 0, 1, var6.SCROLL_BAR_SIZE)
   var566.Direction = var12.HORIZONTAL
   var566.ZIndex = 4
   var566.LayoutOrder = 2
   var566.ContainerSize = Vector2.new(var7.X, var7.Y)
   var566.AdjustScrollZoom = var0.SetHorizontalScrollZoom
   var566.Scroll = var0.HorizontalScroll
   var566.Zoom = var0.HorizontalZoom
   var566.Min = var8.X + 1
   local var597 = var1.createElement(var12, var566)
   var520.HorizontalZoomBar = var597
   var597 = var10
   if var597 then
      local var601 = {}
      var601.Size = UDim2.new(0, var6.SCROLL_BAR_SIZE, 0, var7.Y - var6.SCROLL_BAR_SIZE - var6.SCROLL_BAR_PADDING - var6.TIMELINE_HEIGHT + 1)
      var601.Position = UDim2.new(1, 0, 0, var6.TIMELINE_HEIGHT)
      var601.Direction = var12.VERTICAL
      var601.ZIndex = 4
      var601.LayoutOrder = 2
      var601.ContainerSize = Vector2.new(var7.X, var7.Y - var6.SCROLL_BAR_SIZE - var6.TIMELINE_HEIGHT)
      var601.AdjustScrollZoom = var0.SetVerticalScrollZoom
      var601.Scroll = var0.VerticalScroll
      var601.Zoom = var0.VerticalZoom
      var601.Min = var8.Y + var6.TIMELINE_HEIGHT + 1
      local var0 = var1.createElement(var12, var601)
   end
   var520.VerticalZoomBar = var597
   local var650 = {}
   function var650.OnKeyPressed(arg1)
      local var653 = {}
      var653.AbsoluteSize = arg1.AbsoluteSize
      var653.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var653)
   end
   
   function var650.OnKeyReleased(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var690 = 0
            if var690 < arg2.Position.Z then
               var690 = var0
               var0.SetHorizontalScrollZoom(var690, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
   
   var520.KeyboardListener = var1.createElement(var4, var650)
   var440.IgnoreLayout = var1.createElement("Folder", {}, var520)
   return var1.createElement("Frame", var422, var440)
end

local var969 = {}
var969.Analytics = var3.Analytics
var969.Localization = var3.Localization
local var972 = var3.Mouse
var969.Mouse = var972
var23 = var3.withContext(var969)(var23)
function var972(arg1)
   local var0 = {}
   function var0.CloseCannotPasteToast(arg1)
      local var784 = {}
      var784.AbsoluteSize = arg1.AbsoluteSize
      var784.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var784)
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
            local var821 = 0
            if var821 < arg2.Position.Z then
               var821 = var0
               var0.SetHorizontalScrollZoom(var821, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var910 = var7
      var910 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var910.getScaledKeyframePosition(var910, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
end, var972)(var23)
