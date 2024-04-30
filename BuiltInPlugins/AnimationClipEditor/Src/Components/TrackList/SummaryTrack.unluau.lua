-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.IK.IKController)
local var4 = require(var0.Src.Components.FaceControlsEditor.FaceControlsEditorController)
local var5 = require(var0.Src.Components.FacialAnimationRecorder.RecordingModeButton)
local var6 = require(var0.Src.Components.TrackList.TrackListEntry)
local var7 = require(var0.Src.Components.TrackList.AddTrackButton)
local var8 = require(var0.Src.Util.Constants)
local var9 = require(var0.Src.Util.isEmpty)
local var10 = require(var0.Src.Util.StringUtils)
local var11 = require(var0.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
local var12 = var1.PureComponent:extend("SummaryTrack")
function var12.init(arg1)
   function arg1.onTrackAdded(arg1, arg2, arg3)
      if arg1.props.OnTrackAdded then
         local var148 = arg1
         local var149 = var148.props
         var149 = arg1
         var148 = arg2
         var149.OnTrackAdded(var149, var148, arg3)
      end
   end
   
end

function truncateAtMiddle(arg1, arg2, arg3)
   local var0 = arg1
   if arg2 < var0 then
      local var0 = arg2 - var0
      local var168 = string.sub(arg1, 0, math.ceil((var0) / 2))
      var168 = arg1
      return var168 ... var0 ... string.sub(var168, arg1 - math.floor((var0) / 2))
   end
   return arg1
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var185 = var10
   var185 = var2
   local var8 = var185.getTextWidth(var185, var5.textSize, var1.font)
   local var191 = var11()
   if var191 then
      var6 = truncateAtMiddle(var2, 16)
      local var196 = var10
      var196 = var6
      var8 = var196.getTextWidth(var196, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var191 = var4
   local var218 = {}
   var218.Height = var8.SUMMARY_TRACK_HEIGHT
   var218.Indent = 1
   var218.LayoutOrder = var0.LayoutOrder
   var218.Primary = true
   local var223 = {}
   local var227 = {}
   var227.Size = UDim2.new(1, 0, 1, 0)
   var227.Position = UDim2.new(0, 0, 0, 0)
   local var240 = 1
   var227.BackgroundTransparency = var240
   if var11() then
      var240 = var6
      if not var240 then
         var240 = var2
      end
   end
   var240 = var2
   var227.Text = var240
   var227.Font = var1.font
   var227.TextSize = var5.textSize
   var227.TextColor3 = var5.textColor
   var227.TextXAlignment = Enum.TextXAlignment.Left
   var223.NameLabel = var1.createElement("TextLabel", var227)
   local var251 = {}
   var251.AnchorPoint = Vector2.new(0, 0.5)
   var251.BorderSizePixel = 0
   var251.BackgroundTransparency = 0
   var251.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var264 = {}
   local var268 = {}
   var268.FillDirection = Enum.FillDirection.Horizontal
   var268.VerticalAlignment = Enum.VerticalAlignment.Center
   var268.SortOrder = Enum.SortOrder.LayoutOrder
   var268.Padding = UDim.new(0, 12)
   var264.LeftButtonsList = var1.createElement("UIListLayout", var268)
   var264.IKController = var1.createElement(var3, {})
   var264.FaceControlsEditorController = var1.createElement(var4, {})
   var264.RecordingModeButton = var11() and var1.createElement(var5, {})
   var223.LeftButtonsListContainer = var1.createElement("Frame", var251, var264)
   if var191 and var9(var4) then
      local var299 = {}
      var299.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var299.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var299.Tracks = var3
      var299.Facs = var4
      var299.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var299) or nil
   end
   var223.AddTrackButton = nil
   return var1.createElement(var6, var218, var223)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var185 = var10
   var185 = var2
   local var8 = var185.getTextWidth(var185, var5.textSize, var1.font)
   local var191 = var11()
   if var191 then
      var6 = truncateAtMiddle(var2, 16)
      local var196 = var10
      var196 = var6
      var8 = var196.getTextWidth(var196, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var191 = var4
   local var218 = {}
   var218.Height = var8.SUMMARY_TRACK_HEIGHT
   var218.Indent = 1
   var218.LayoutOrder = var0.LayoutOrder
   var218.Primary = true
   local var223 = {}
   local var227 = {}
   var227.Size = UDim2.new(1, 0, 1, 0)
   var227.Position = UDim2.new(0, 0, 0, 0)
   local var240 = 1
   var227.BackgroundTransparency = var240
   if var11() then
      var240 = var6
      if not var240 then
         var240 = var2
      end
   end
   var240 = var2
   var227.Text = var240
   var227.Font = var1.font
   var227.TextSize = var5.textSize
   var227.TextColor3 = var5.textColor
   var227.TextXAlignment = Enum.TextXAlignment.Left
   var223.NameLabel = var1.createElement("TextLabel", var227)
   local var251 = {}
   var251.AnchorPoint = Vector2.new(0, 0.5)
   var251.BorderSizePixel = 0
   var251.BackgroundTransparency = 0
   var251.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var264 = {}
   local var268 = {}
   var268.FillDirection = Enum.FillDirection.Horizontal
   var268.VerticalAlignment = Enum.VerticalAlignment.Center
   var268.SortOrder = Enum.SortOrder.LayoutOrder
   var268.Padding = UDim.new(0, 12)
   var264.LeftButtonsList = var1.createElement("UIListLayout", var268)
   var264.IKController = var1.createElement(var3, {})
   var264.FaceControlsEditorController = var1.createElement(var4, {})
   var264.RecordingModeButton = var11() and var1.createElement(var5, {})
   var223.LeftButtonsListContainer = var1.createElement("Frame", var251, var264)
   if var191 and var9(var4) then
      local var299 = {}
      var299.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var299.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var299.Tracks = var3
      var299.Facs = var4
      var299.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var299) or nil
   end
   var223.AddTrackButton = nil
   return var1.createElement(var6, var218, var223)
end

fun4 = var2.withContext
local var322 = {}
var322.Stylizer = var2.Stylizer
var12 = fun4(var322)(var12)
return var12
