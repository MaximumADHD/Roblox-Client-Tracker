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
      local var60 = var7
      var60 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var60.getScaledKeyframePosition(var60, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
   local var227 = {}
   var227.BackgroundTransparency = 1
   var227.ZIndex = var0.ZIndex
   var227.LayoutOrder = var0.LayoutOrder
   var227.Size = var0.Size
   var1.Change.AbsoluteSize = arg1.updateSize
   var1.Event.InputBegan = arg1.inputBegan
   var1.Event.InputEnded = arg1.inputEnded
   var1.Event.MouseLeave = arg1.stopDragging
   local var245 = {}
   local var249 = {}
   var249.FillDirection = Enum.FillDirection.Vertical
   var249.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var249.SortOrder = Enum.SortOrder.LayoutOrder
   var249.VerticalAlignment = Enum.VerticalAlignment.Top
   var245.Layout = var1.createElement("UIListLayout", var249)
   local var258 = {}
   var258.StartTick = var2
   var258.EndTick = var3
   var258.LastTick = var0.LastTick
   var258.SnapMode = var0.SnapMode
   var258.TrackPadding = var9
   var258.FrameRate = var0.FrameRate
   var258.ShowAsSeconds = var4
   var258.LayoutOrder = 0
   var258.ParentSize = var7
   var258.ParentPosition = var8
   var258.StepAnimation = arg1.stepAnimation
   var258.SnapToNearestKeyframe = var0.SnapToNearestKeyframe
   var258.SnapToNearestFrame = var0.SnapToNearestFrame
   var258.AnimationData = var0.AnimationData
   var258.Playhead = var6
   var258.ZIndex = 2
   var258.EditorMode = var0.EditorMode
   var258.OnToggleEditorClicked = arg1.toggleEditorClicked
   var245.TimelineContainer = var1.createElement(var11, var258)
   if true then
      local var269 = {}
      var269.ShowEvents = var5
      var269.StartTick = var2
      var269.EndTick = var3
      var269.TrackPadding = var9
      var269.TopTrackIndex = var0.TopTrackIndex
      var269.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var269.ShowAsSeconds = var4
      var269.IsChannelAnimation = var0.IsChannelAnimation
      var269.ColorsPosition = var0.ColorsPosition
      var269.ZIndex = 1
      var269.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var9, var269) or nil
   end
   var245.DopeSheetController = nil
   if var10 then
      local var290 = {}
      var290.ShowEvents = var5
      var290.StartTick = var2
      var290.EndTick = var3
      var290.TrackPadding = var9
      var290.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var290.ShowAsSeconds = var4
      var290.Playhead = var6
      var290.ZIndex = 1
      var290.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var10, var290) or nil
   end
   var245.CurveEditorController = nil
   if var0.CannotPasteError then
      local var311 = {}
      var311.Text = var0.Localization:getText("Toast", "CannotPasteError")
      var311.OnClose = var0.CloseCannotPasteToast
      local var0 = var1.createElement(var14, var311) or nil
   end
   var245.CannotPasteToast = nil
   local var325 = {}
   local var329 = {}
   var329.Position = UDim2.new(0.5, 0, 0, var6.TIMELINE_HEIGHT)
   var329.DominantAxis = Enum.DominantAxis.Width
   var329.Weight = 1
   var329.Padding = 0
   var329.ZIndex = 2
   local var341 = var1.createElement(var5, var329)
   var325.TimelineBorder = var341
   var341 = false
   if var341 then
      local var345 = {}
      var345.Position = UDim2.new(0, arg1.getPlayheadPositionX(), 0, 0)
      var345.AnchorPoint = Vector2.new(0.5, 0)
      var345.Height = var7.Y
      var345.ShowHead = true
      var345.HeadSize = UDim2.new(0, 5, 0, 5)
      var345.ZIndex = 3
      var345.Thickness = 1
      local var0 = var1.createElement(var13, var345)
   end
   var325.Scrubber = var341
   local var371 = {}
   var371.Size = UDim2.new(0, var7.X - var6.SCROLL_BAR_PADDING + 1, 0, var6.SCROLL_BAR_SIZE)
   var371.Position = UDim2.new(0, 0, 1, var6.SCROLL_BAR_SIZE)
   var371.Direction = var12.HORIZONTAL
   var371.ZIndex = 4
   var371.LayoutOrder = 2
   var371.ContainerSize = Vector2.new(var7.X, var7.Y)
   var371.AdjustScrollZoom = var0.SetHorizontalScrollZoom
   var371.Scroll = var0.HorizontalScroll
   var371.Zoom = var0.HorizontalZoom
   var371.Min = var8.X + 1
   local var402 = var1.createElement(var12, var371)
   var325.HorizontalZoomBar = var402
   var402 = var10
   if var402 then
      local var406 = {}
      var406.Size = UDim2.new(0, var6.SCROLL_BAR_SIZE, 0, var7.Y - var6.SCROLL_BAR_SIZE - var6.SCROLL_BAR_PADDING - var6.TIMELINE_HEIGHT + 1)
      var406.Position = UDim2.new(1, 0, 0, var6.TIMELINE_HEIGHT)
      var406.Direction = var12.VERTICAL
      var406.ZIndex = 4
      var406.LayoutOrder = 2
      var406.ContainerSize = Vector2.new(var7.X, var7.Y - var6.SCROLL_BAR_SIZE - var6.TIMELINE_HEIGHT)
      var406.AdjustScrollZoom = var0.SetVerticalScrollZoom
      var406.Scroll = var0.VerticalScroll
      var406.Zoom = var0.VerticalZoom
      var406.Min = var8.Y + var6.TIMELINE_HEIGHT + 1
      local var0 = var1.createElement(var12, var406)
   end
   var325.VerticalZoomBar = var402
   local var455 = {}
   function var455.OnKeyPressed(arg1)
      local var458 = {}
      var458.AbsoluteSize = arg1.AbsoluteSize
      var458.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var458)
   end
   
   function var455.OnKeyReleased(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var495 = 0
            if var495 < arg2.Position.Z then
               var495 = var0
               var0.SetHorizontalScrollZoom(var495, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
   
   var325.KeyboardListener = var1.createElement(var4, var455)
   var245.IgnoreLayout = var1.createElement("Folder", {}, var325)
   return var1.createElement("Frame", var227, var245)
end

local var774 = {}
var774.Analytics = var3.Analytics
var774.Localization = var3.Localization
local var777 = var3.Mouse
var774.Mouse = var777
var23 = var3.withContext(var774)(var23)
function var777(arg1)
   local var0 = {}
   function var0.CloseCannotPasteToast(arg1)
      local var589 = {}
      var589.AbsoluteSize = arg1.AbsoluteSize
      var589.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var589)
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
            local var626 = 0
            if var626 < arg2.Position.Z then
               var626 = var0
               var0.SetHorizontalScrollZoom(var626, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var715 = var7
      var715 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var715.getScaledKeyframePosition(var715, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
end, var777)(var23)
