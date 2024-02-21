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
      local var735 = {}
      var735.AbsoluteSize = arg1.AbsoluteSize
      var735.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var735)
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
            local var772 = 0
            if var772 < arg2.Position.Z then
               var772 = var0
               var0.SetHorizontalScrollZoom(var772, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var861 = var7
      var861 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var861.getScaledKeyframePosition(var861, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
   local var1028 = {}
   var1028.BackgroundTransparency = 1
   var1028.ZIndex = var0.ZIndex
   var1028.LayoutOrder = var0.LayoutOrder
   var1028.Size = var0.Size
   var1.Change.AbsoluteSize = arg1.updateSize
   var1.Event.InputBegan = arg1.inputBegan
   var1.Event.InputEnded = arg1.inputEnded
   var1.Event.MouseLeave = arg1.stopDragging
   local var1046 = {}
   local var1050 = {}
   var1050.FillDirection = Enum.FillDirection.Vertical
   var1050.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var1050.SortOrder = Enum.SortOrder.LayoutOrder
   var1050.VerticalAlignment = Enum.VerticalAlignment.Top
   var1046.Layout = var1.createElement("UIListLayout", var1050)
   local var1059 = {}
   var1059.StartTick = var2
   var1059.EndTick = var3
   var1059.LastTick = var0.LastTick
   var1059.SnapMode = var0.SnapMode
   var1059.TrackPadding = var9
   var1059.FrameRate = var0.FrameRate
   var1059.ShowAsSeconds = var4
   var1059.LayoutOrder = 0
   var1059.ParentSize = var7
   var1059.ParentPosition = var8
   var1059.StepAnimation = arg1.stepAnimation
   var1059.SnapToNearestKeyframe = var0.SnapToNearestKeyframe
   var1059.SnapToNearestFrame = var0.SnapToNearestFrame
   var1059.AnimationData = var0.AnimationData
   var1059.Playhead = var6
   var1059.ZIndex = 2
   var1059.EditorMode = var0.EditorMode
   var1059.OnToggleEditorClicked = arg1.toggleEditorClicked
   var1046.TimelineContainer = var1.createElement(var11, var1059)
   if true then
      local var1077 = {}
      var1077.ShowEvents = var5
      var1077.StartTick = var2
      var1077.EndTick = var3
      var1077.TrackPadding = var9
      var1077.TopTrackIndex = var0.TopTrackIndex
      var1077.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var1077.ShowAsSeconds = var4
      var1077.IsChannelAnimation = var0.IsChannelAnimation
      var1077.ColorsPosition = var0.ColorsPosition
      var1077.ZIndex = 1
      var1077.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var9, var1077) or nil
   end
   var1046.DopeSheetController = nil
   if var10 then
      local var1183 = {}
      var1183.ShowEvents = var5
      var1183.StartTick = var2
      var1183.EndTick = var3
      var1183.TrackPadding = var9
      var1183.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var1183.ShowAsSeconds = var4
      var1183.Playhead = var6
      var1183.ZIndex = 1
      var1183.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var10, var1183) or nil
   end
   var1046.CurveEditorController = nil
   if var0.CannotPasteError then
      local var1265 = {}
      var1265.Text = var0.Localization:getText("Toast", "CannotPasteError")
      var1265.OnClose = var0.CloseCannotPasteToast
      local var0 = var1.createElement(var14, var1265) or nil
   end
   var1046.CannotPasteToast = nil
   local var1332 = {}
   local var1338 = {}
   var1338.Position = UDim2.new(0.5, 0, 0, var6.TIMELINE_HEIGHT)
   var1338.DominantAxis = Enum.DominantAxis.Width
   var1338.Weight = 1
   var1338.Padding = 0
   var1338.ZIndex = 2
   local var1355 = var1.createElement(var5, var1338)
   var1332.TimelineBorder = var1355
   var1355 = false
   if var1355 then
      local var1372 = {}
      var1372.Position = UDim2.new(0, arg1.getPlayheadPositionX(), 0, 0)
      var1372.AnchorPoint = Vector2.new(0.5, 0)
      var1372.Height = var7.Y
      var1372.ShowHead = true
      var1372.HeadSize = UDim2.new(0, 5, 0, 5)
      var1372.ZIndex = 3
      var1372.Thickness = 1
      local var0 = var1.createElement(var13, var1372)
   end
   var1332.Scrubber = var1355
   local var3 = {}
   var3.Size = UDim2.new(0, var7.X - var6.SCROLL_BAR_PADDING + 1, 0, var6.SCROLL_BAR_SIZE)
   var3.Position = UDim2.new(0, 0, 1, var6.SCROLL_BAR_SIZE)
   var3.Direction = var12.HORIZONTAL
   var3.ZIndex = 4
   var3.LayoutOrder = 2
   var3.ContainerSize = Vector2.new(var7.X, var7.Y)
   var3.AdjustScrollZoom = var0.SetHorizontalScrollZoom
   var3.Scroll = var0.HorizontalScroll
   var3.Zoom = var0.HorizontalZoom
   var3.Min = var8.X + 1
   local var34 = var1.createElement(var12, var3)
   var1332.HorizontalZoomBar = var34
   var34 = var10
   if var34 then
      local var38 = {}
      var38.Size = UDim2.new(0, var6.SCROLL_BAR_SIZE, 0, var7.Y - var6.SCROLL_BAR_SIZE - var6.SCROLL_BAR_PADDING - var6.TIMELINE_HEIGHT + 1)
      var38.Position = UDim2.new(1, 0, 0, var6.TIMELINE_HEIGHT)
      var38.Direction = var12.VERTICAL
      var38.ZIndex = 4
      var38.LayoutOrder = 2
      var38.ContainerSize = Vector2.new(var7.X, var7.Y - var6.SCROLL_BAR_SIZE - var6.TIMELINE_HEIGHT)
      var38.AdjustScrollZoom = var0.SetVerticalScrollZoom
      var38.Scroll = var0.VerticalScroll
      var38.Zoom = var0.VerticalZoom
      var38.Min = var8.Y + var6.TIMELINE_HEIGHT + 1
      local var0 = var1.createElement(var12, var38)
   end
   var1332.VerticalZoomBar = var34
   local var87 = {}
   function var87.OnKeyPressed(arg1)
      local var90 = {}
      var90.AbsoluteSize = arg1.AbsoluteSize
      var90.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var90)
   end
   
   function var87.OnKeyReleased(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var127 = 0
            if var127 < arg2.Position.Z then
               var127 = var0
               var0.SetHorizontalScrollZoom(var127, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
   
   var1332.KeyboardListener = var1.createElement(var4, var87)
   var1046.IgnoreLayout = var1.createElement("Folder", {}, var1332)
   return var1.createElement("Frame", var1028, var1046)
end

local var406 = {}
var406.Analytics = var3.Analytics
var406.Localization = var3.Localization
local var409 = var3.Mouse
var406.Mouse = var409
var23 = var3.withContext(var406)(var23)
function var409(arg1)
   local var0 = {}
   function var0.CloseCannotPasteToast(arg1)
      local var221 = {}
      var221.AbsoluteSize = arg1.AbsoluteSize
      var221.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var221)
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
            local var258 = 0
            if var258 < arg2.Position.Z then
               var258 = var0
               var0.SetHorizontalScrollZoom(var258, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var347 = var7
      var347 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var347.getScaledKeyframePosition(var347, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
end, var409)(var23)
