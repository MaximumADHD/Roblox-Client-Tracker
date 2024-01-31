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
         local var359 = arg1
         local var360 = var359.props
         var360 = arg1
         var359 = arg2
         var360.OnTrackAdded(var360, var359, arg3)
      end
   end
   
end

function truncateAtMiddle(arg1, arg2, arg3)
   local var0 = arg1
   if arg2 < var0 then
      local var0 = arg2 - var0
      local var379 = string.sub(arg1, 0, math.ceil((var0) / 2))
      var379 = arg1
      return var379 ... var0 ... string.sub(var379, arg1 - math.floor((var0) / 2))
   end
   return arg1
end

local function fun9(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var396 = var10
   var396 = var2
   local var8 = var396.getTextWidth(var396, var5.textSize, var1.font)
   local var402 = var11()
   if var402 then
      var6 = truncateAtMiddle(var2, 16)
      local var407 = var10
      var407 = var6
      var8 = var407.getTextWidth(var407, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var402 = var4
   local var429 = {}
   var429.Height = var8.SUMMARY_TRACK_HEIGHT
   var429.Indent = 1
   var429.LayoutOrder = var0.LayoutOrder
   var429.Primary = true
   local var434 = {}
   local var438 = {}
   var438.Size = UDim2.new(1, 0, 1, 0)
   var438.Position = UDim2.new(0, 0, 0, 0)
   local var451 = 1
   var438.BackgroundTransparency = var451
   if var11() then
      var451 = var6
      if not var451 then
         var451 = var2
      end
   end
   var451 = var2
   var438.Text = var451
   var438.Font = var1.font
   var438.TextSize = var5.textSize
   var438.TextColor3 = var5.textColor
   var438.TextXAlignment = Enum.TextXAlignment.Left
   var434.NameLabel = var1.createElement("TextLabel", var438)
   local var462 = {}
   var462.AnchorPoint = Vector2.new(0, 0.5)
   var462.BorderSizePixel = 0
   var462.BackgroundTransparency = 0
   var462.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var475 = {}
   local var479 = {}
   var479.FillDirection = Enum.FillDirection.Horizontal
   var479.VerticalAlignment = Enum.VerticalAlignment.Center
   var479.SortOrder = Enum.SortOrder.LayoutOrder
   var479.Padding = UDim.new(0, 12)
   var475.LeftButtonsList = var1.createElement("UIListLayout", var479)
   var475.IKController = var1.createElement(var3, {})
   var475.FaceControlsEditorController = var1.createElement(var4, {})
   var475.RecordingModeButton = var11() and var1.createElement(var5, {})
   var434.LeftButtonsListContainer = var1.createElement("Frame", var462, var475)
   if var402 and var9(var4) then
      local var510 = {}
      var510.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var510.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var510.Tracks = var3
      var510.Facs = var4
      var510.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var510) or nil
   end
   var434.AddTrackButton = nil
   return var1.createElement(var6, var429, var434)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var396 = var10
   var396 = var2
   local var8 = var396.getTextWidth(var396, var5.textSize, var1.font)
   local var402 = var11()
   if var402 then
      var6 = truncateAtMiddle(var2, 16)
      local var407 = var10
      var407 = var6
      var8 = var407.getTextWidth(var407, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var402 = var4
   local var429 = {}
   var429.Height = var8.SUMMARY_TRACK_HEIGHT
   var429.Indent = 1
   var429.LayoutOrder = var0.LayoutOrder
   var429.Primary = true
   local var434 = {}
   local var438 = {}
   var438.Size = UDim2.new(1, 0, 1, 0)
   var438.Position = UDim2.new(0, 0, 0, 0)
   local var451 = 1
   var438.BackgroundTransparency = var451
   if var11() then
      var451 = var6
      if not var451 then
         var451 = var2
      end
   end
   var451 = var2
   var438.Text = var451
   var438.Font = var1.font
   var438.TextSize = var5.textSize
   var438.TextColor3 = var5.textColor
   var438.TextXAlignment = Enum.TextXAlignment.Left
   var434.NameLabel = var1.createElement("TextLabel", var438)
   local var462 = {}
   var462.AnchorPoint = Vector2.new(0, 0.5)
   var462.BorderSizePixel = 0
   var462.BackgroundTransparency = 0
   var462.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var475 = {}
   local var479 = {}
   var479.FillDirection = Enum.FillDirection.Horizontal
   var479.VerticalAlignment = Enum.VerticalAlignment.Center
   var479.SortOrder = Enum.SortOrder.LayoutOrder
   var479.Padding = UDim.new(0, 12)
   var475.LeftButtonsList = var1.createElement("UIListLayout", var479)
   var475.IKController = var1.createElement(var3, {})
   var475.FaceControlsEditorController = var1.createElement(var4, {})
   var475.RecordingModeButton = var11() and var1.createElement(var5, {})
   var434.LeftButtonsListContainer = var1.createElement("Frame", var462, var475)
   if var402 and var9(var4) then
      local var510 = {}
      var510.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var510.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var510.Tracks = var3
      var510.Facs = var4
      var510.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var510) or nil
   end
   var434.AddTrackButton = nil
   return var1.createElement(var6, var429, var434)
end

fun9 = var2.withContext
local var533 = {}
var533.Stylizer = var2.Stylizer
var12 = fun9(var533)(var12)
return var12
