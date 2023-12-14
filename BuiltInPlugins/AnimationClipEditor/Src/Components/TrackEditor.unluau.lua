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
      local var380 = {}
      var380.AbsoluteSize = arg1.AbsoluteSize
      var380.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var380)
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
            local var417 = 0
            if var417 < arg2.Position.Z then
               var417 = var0
               var0.SetHorizontalScrollZoom(var417, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var506 = var7
      var506 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var506.getScaledKeyframePosition(var506, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
   local var673 = {}
   var673.BackgroundTransparency = 1
   var673.ZIndex = var0.ZIndex
   var673.LayoutOrder = var0.LayoutOrder
   var673.Size = var0.Size
   var1.Change.AbsoluteSize = arg1.updateSize
   var1.Event.InputBegan = arg1.inputBegan
   var1.Event.InputEnded = arg1.inputEnded
   var1.Event.MouseLeave = arg1.stopDragging
   local var691 = {}
   local var695 = {}
   var695.FillDirection = Enum.FillDirection.Vertical
   var695.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var695.SortOrder = Enum.SortOrder.LayoutOrder
   var695.VerticalAlignment = Enum.VerticalAlignment.Top
   var691.Layout = var1.createElement("UIListLayout", var695)
   local var704 = {}
   var704.StartTick = var2
   var704.EndTick = var3
   var704.LastTick = var0.LastTick
   var704.SnapMode = var0.SnapMode
   var704.TrackPadding = var9
   var704.FrameRate = var0.FrameRate
   var704.ShowAsSeconds = var4
   var704.LayoutOrder = 0
   var704.ParentSize = var7
   var704.ParentPosition = var8
   var704.StepAnimation = arg1.stepAnimation
   var704.SnapToNearestKeyframe = var0.SnapToNearestKeyframe
   var704.SnapToNearestFrame = var0.SnapToNearestFrame
   var704.AnimationData = var0.AnimationData
   var704.Playhead = var6
   var704.ZIndex = 2
   var704.EditorMode = var0.EditorMode
   var704.OnToggleEditorClicked = arg1.toggleEditorClicked
   var691.TimelineContainer = var1.createElement(var11, var704)
   if true then
      local var715 = {}
      var715.ShowEvents = var5
      var715.StartTick = var2
      var715.EndTick = var3
      var715.TrackPadding = var9
      var715.TopTrackIndex = var0.TopTrackIndex
      var715.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var715.ShowAsSeconds = var4
      var715.IsChannelAnimation = var0.IsChannelAnimation
      var715.ColorsPosition = var0.ColorsPosition
      var715.ZIndex = 1
      var715.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var9, var715) or nil
   end
   var691.DopeSheetController = nil
   if var10 then
      local var736 = {}
      var736.ShowEvents = var5
      var736.StartTick = var2
      var736.EndTick = var3
      var736.TrackPadding = var9
      var736.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var736.ShowAsSeconds = var4
      var736.Playhead = var6
      var736.ZIndex = 1
      var736.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var10, var736) or nil
   end
   var691.CurveEditorController = nil
   if var0.CannotPasteError then
      local var757 = {}
      var757.Text = var0.Localization:getText("Toast", "CannotPasteError")
      var757.OnClose = var0.CloseCannotPasteToast
      local var0 = var1.createElement(var14, var757) or nil
   end
   var691.CannotPasteToast = nil
   local var771 = {}
   local var775 = {}
   var775.Position = UDim2.new(0.5, 0, 0, var6.TIMELINE_HEIGHT)
   var775.DominantAxis = Enum.DominantAxis.Width
   var775.Weight = 1
   var775.Padding = 0
   var775.ZIndex = 2
   local var787 = var1.createElement(var5, var775)
   var771.TimelineBorder = var787
   var787 = false
   if var787 then
      local var791 = {}
      var791.Position = UDim2.new(0, arg1.getPlayheadPositionX(), 0, 0)
      var791.AnchorPoint = Vector2.new(0.5, 0)
      var791.Height = var7.Y
      var791.ShowHead = true
      var791.HeadSize = UDim2.new(0, 5, 0, 5)
      var791.ZIndex = 3
      var791.Thickness = 1
      local var0 = var1.createElement(var13, var791)
   end
   var771.Scrubber = var787
   local var817 = {}
   var817.Size = UDim2.new(0, var7.X - var6.SCROLL_BAR_PADDING + 1, 0, var6.SCROLL_BAR_SIZE)
   var817.Position = UDim2.new(0, 0, 1, var6.SCROLL_BAR_SIZE)
   var817.Direction = var12.HORIZONTAL
   var817.ZIndex = 4
   var817.LayoutOrder = 2
   var817.ContainerSize = Vector2.new(var7.X, var7.Y)
   var817.AdjustScrollZoom = var0.SetHorizontalScrollZoom
   var817.Scroll = var0.HorizontalScroll
   var817.Zoom = var0.HorizontalZoom
   var817.Min = var8.X + 1
   local var848 = var1.createElement(var12, var817)
   var771.HorizontalZoomBar = var848
   var848 = var10
   if var848 then
      local var852 = {}
      var852.Size = UDim2.new(0, var6.SCROLL_BAR_SIZE, 0, var7.Y - var6.SCROLL_BAR_SIZE - var6.SCROLL_BAR_PADDING - var6.TIMELINE_HEIGHT + 1)
      var852.Position = UDim2.new(1, 0, 0, var6.TIMELINE_HEIGHT)
      var852.Direction = var12.VERTICAL
      var852.ZIndex = 4
      var852.LayoutOrder = 2
      var852.ContainerSize = Vector2.new(var7.X, var7.Y - var6.SCROLL_BAR_SIZE - var6.TIMELINE_HEIGHT)
      var852.AdjustScrollZoom = var0.SetVerticalScrollZoom
      var852.Scroll = var0.VerticalScroll
      var852.Zoom = var0.VerticalZoom
      var852.Min = var8.Y + var6.TIMELINE_HEIGHT + 1
      local var0 = var1.createElement(var12, var852)
   end
   var771.VerticalZoomBar = var848
   local var901 = {}
   function var901.OnKeyPressed(arg1)
      local var904 = {}
      var904.AbsoluteSize = arg1.AbsoluteSize
      var904.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var904)
   end
   
   function var901.OnKeyReleased(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var941 = 0
            if var941 < arg2.Position.Z then
               var941 = var0
               var0.SetHorizontalScrollZoom(var941, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
   
   var771.KeyboardListener = var1.createElement(var4, var901)
   var691.IgnoreLayout = var1.createElement("Folder", {}, var771)
   return var1.createElement("Frame", var673, var691)
end

local var1220 = {}
var1220.Analytics = var3.Analytics
var1220.Localization = var3.Localization
local var1223 = var3.Mouse
var1220.Mouse = var1223
var23 = var3.withContext(var1220)(var23)
function var1223(arg1)
   local var0 = {}
   function var0.CloseCannotPasteToast(arg1)
      local var1035 = {}
      var1035.AbsoluteSize = arg1.AbsoluteSize
      var1035.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var1035)
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
            local var1072 = 0
            if var1072 < arg2.Position.Z then
               var1072 = var0
               var0.SetHorizontalScrollZoom(var1072, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var1161 = var7
      var1161 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var1161.getScaledKeyframePosition(var1161, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
end, var1223)(var23)
