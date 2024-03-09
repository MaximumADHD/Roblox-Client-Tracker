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
      local var439 = {}
      var439.AbsoluteSize = arg1.AbsoluteSize
      var439.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var439)
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
            local var476 = 0
            if var476 < arg2.Position.Z then
               var476 = var0
               var0.SetHorizontalScrollZoom(var476, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var565 = var7
      var565 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var565.getScaledKeyframePosition(var565, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
   local var732 = {}
   var732.BackgroundTransparency = 1
   var732.ZIndex = var0.ZIndex
   var732.LayoutOrder = var0.LayoutOrder
   var732.Size = var0.Size
   var1.Change.AbsoluteSize = arg1.updateSize
   var1.Event.InputBegan = arg1.inputBegan
   var1.Event.InputEnded = arg1.inputEnded
   var1.Event.MouseLeave = arg1.stopDragging
   local var750 = {}
   local var754 = {}
   var754.FillDirection = Enum.FillDirection.Vertical
   var754.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var754.SortOrder = Enum.SortOrder.LayoutOrder
   var754.VerticalAlignment = Enum.VerticalAlignment.Top
   var750.Layout = var1.createElement("UIListLayout", var754)
   local var763 = {}
   var763.StartTick = var2
   var763.EndTick = var3
   var763.LastTick = var0.LastTick
   var763.SnapMode = var0.SnapMode
   var763.TrackPadding = var9
   var763.FrameRate = var0.FrameRate
   var763.ShowAsSeconds = var4
   var763.LayoutOrder = 0
   var763.ParentSize = var7
   var763.ParentPosition = var8
   var763.StepAnimation = arg1.stepAnimation
   var763.SnapToNearestKeyframe = var0.SnapToNearestKeyframe
   var763.SnapToNearestFrame = var0.SnapToNearestFrame
   var763.AnimationData = var0.AnimationData
   var763.Playhead = var6
   var763.ZIndex = 2
   var763.EditorMode = var0.EditorMode
   var763.OnToggleEditorClicked = arg1.toggleEditorClicked
   var750.TimelineContainer = var1.createElement(var11, var763)
   if true then
      local var774 = {}
      var774.ShowEvents = var5
      var774.StartTick = var2
      var774.EndTick = var3
      var774.TrackPadding = var9
      var774.TopTrackIndex = var0.TopTrackIndex
      var774.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var774.ShowAsSeconds = var4
      var774.IsChannelAnimation = var0.IsChannelAnimation
      var774.ColorsPosition = var0.ColorsPosition
      var774.ZIndex = 1
      var774.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var9, var774) or nil
   end
   var750.DopeSheetController = nil
   if var10 then
      local var795 = {}
      var795.ShowEvents = var5
      var795.StartTick = var2
      var795.EndTick = var3
      var795.TrackPadding = var9
      var795.Size = UDim2.new(1, 0, 1, var6.TIMELINE_HEIGHT - var6.SCROLL_BAR_SIZE)
      var795.ShowAsSeconds = var4
      var795.Playhead = var6
      var795.ZIndex = 1
      var795.OnInputChanged = arg1.inputChanged
      local var0 = var1.createElement(var10, var795) or nil
   end
   var750.CurveEditorController = nil
   if var0.CannotPasteError then
      local var816 = {}
      var816.Text = var0.Localization:getText("Toast", "CannotPasteError")
      var816.OnClose = var0.CloseCannotPasteToast
      local var0 = var1.createElement(var14, var816) or nil
   end
   var750.CannotPasteToast = nil
   local var830 = {}
   local var834 = {}
   var834.Position = UDim2.new(0.5, 0, 0, var6.TIMELINE_HEIGHT)
   var834.DominantAxis = Enum.DominantAxis.Width
   var834.Weight = 1
   var834.Padding = 0
   var834.ZIndex = 2
   local var846 = var1.createElement(var5, var834)
   var830.TimelineBorder = var846
   var846 = false
   if var846 then
      local var850 = {}
      var850.Position = UDim2.new(0, arg1.getPlayheadPositionX(), 0, 0)
      var850.AnchorPoint = Vector2.new(0.5, 0)
      var850.Height = var7.Y
      var850.ShowHead = true
      var850.HeadSize = UDim2.new(0, 5, 0, 5)
      var850.ZIndex = 3
      var850.Thickness = 1
      local var0 = var1.createElement(var13, var850)
   end
   var830.Scrubber = var846
   local var876 = {}
   var876.Size = UDim2.new(0, var7.X - var6.SCROLL_BAR_PADDING + 1, 0, var6.SCROLL_BAR_SIZE)
   var876.Position = UDim2.new(0, 0, 1, var6.SCROLL_BAR_SIZE)
   var876.Direction = var12.HORIZONTAL
   var876.ZIndex = 4
   var876.LayoutOrder = 2
   var876.ContainerSize = Vector2.new(var7.X, var7.Y)
   var876.AdjustScrollZoom = var0.SetHorizontalScrollZoom
   var876.Scroll = var0.HorizontalScroll
   var876.Zoom = var0.HorizontalZoom
   var876.Min = var8.X + 1
   local var907 = var1.createElement(var12, var876)
   var830.HorizontalZoomBar = var907
   var907 = var10
   if var907 then
      local var911 = {}
      var911.Size = UDim2.new(0, var6.SCROLL_BAR_SIZE, 0, var7.Y - var6.SCROLL_BAR_SIZE - var6.SCROLL_BAR_PADDING - var6.TIMELINE_HEIGHT + 1)
      var911.Position = UDim2.new(1, 0, 0, var6.TIMELINE_HEIGHT)
      var911.Direction = var12.VERTICAL
      var911.ZIndex = 4
      var911.LayoutOrder = 2
      var911.ContainerSize = Vector2.new(var7.X, var7.Y - var6.SCROLL_BAR_SIZE - var6.TIMELINE_HEIGHT)
      var911.AdjustScrollZoom = var0.SetVerticalScrollZoom
      var911.Scroll = var0.VerticalScroll
      var911.Zoom = var0.VerticalZoom
      var911.Min = var8.Y + var6.TIMELINE_HEIGHT + 1
      local var0 = var1.createElement(var12, var911)
   end
   var830.VerticalZoomBar = var907
   local var960 = {}
   function var960.OnKeyPressed(arg1)
      local var963 = {}
      var963.AbsoluteSize = arg1.AbsoluteSize
      var963.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var963)
   end
   
   function var960.OnKeyReleased(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.HorizontalZoom
      local var2 = var0.HorizontalScroll
      local var3 = arg1.state.AbsoluteSize.X
      if arg2.UserInputType == "Enum" then
         local var0 = ((arg2.Position.X - arg1.state.AbsolutePosition.X) / var3 - var2) * (1 - var1)
         var0 = math.clamp(var2 + var0, 0, 1)
         if arg1.ctrlHeld then
            local var1000 = 0
            if var1000 < arg2.Position.Z then
               var1000 = var0
               var0.SetHorizontalScrollZoom(var1000, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
   
   var830.KeyboardListener = var1.createElement(var4, var960)
   var750.IgnoreLayout = var1.createElement("Folder", {}, var830)
   return var1.createElement("Frame", var732, var750)
end

local var1279 = {}
var1279.Analytics = var3.Analytics
var1279.Localization = var3.Localization
local var1282 = var3.Mouse
var1279.Mouse = var1282
var23 = var3.withContext(var1279)(var23)
function var1282(arg1)
   local var0 = {}
   function var0.CloseCannotPasteToast(arg1)
      local var1094 = {}
      var1094.AbsoluteSize = arg1.AbsoluteSize
      var1094.AbsolutePosition = arg1.AbsolutePosition
      arg1:setState(var1094)
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
            local var1131 = 0
            if var1131 < arg2.Position.Z then
               var1131 = var0
               var0.SetHorizontalScrollZoom(var1131, math.clamp(var1 + var6.ZOOM_INCREMENT, 0, 1))
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
      local var1220 = var7
      var1220 = var0.Playhead
      return arg1.getTrackPadding() * 0.5 + var1220.getScaledKeyframePosition(var1220, var0.StartTick, var0.EndTick, arg1.state.AbsoluteSize or Vector2.new().X - arg1.getTrackPadding())
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
end, var1282)(var23)
