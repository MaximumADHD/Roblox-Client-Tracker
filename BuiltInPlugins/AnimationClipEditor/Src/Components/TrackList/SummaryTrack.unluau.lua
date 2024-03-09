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
         local var74 = arg1
         local var75 = var74.props
         var75 = arg1
         var74 = arg2
         var75.OnTrackAdded(var75, var74, arg3)
      end
   end
   
end

function truncateAtMiddle(arg1, arg2, arg3)
   local var0 = arg1
   if arg2 < var0 then
      local var0 = arg2 - var0
      local var98 = string.sub(arg1, 0, math.ceil((var0) / 2))
      var98 = arg1
      return var98 ... var0 ... string.sub(var98, arg1 - math.floor((var0) / 2))
   end
   return arg1
end

local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var127 = var10
   var127 = var2
   local var8 = var127.getTextWidth(var127, var5.textSize, var1.font)
   local var133 = var11()
   if var133 then
      var6 = truncateAtMiddle(var2, 16)
      local var139 = var10
      var139 = var6
      var8 = var139.getTextWidth(var139, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var133 = var4
   local var17 = {}
   var17.Height = var8.SUMMARY_TRACK_HEIGHT
   var17.Indent = 1
   var17.LayoutOrder = var0.LayoutOrder
   var17.Primary = true
   local var22 = {}
   local var26 = {}
   var26.Size = UDim2.new(1, 0, 1, 0)
   var26.Position = UDim2.new(0, 0, 0, 0)
   local var39 = 1
   var26.BackgroundTransparency = var39
   if var11() then
      var39 = var6
      if not var39 then
         var39 = var2
      end
   end
   var39 = var2
   var26.Text = var39
   var26.Font = var1.font
   var26.TextSize = var5.textSize
   var26.TextColor3 = var5.textColor
   var26.TextXAlignment = Enum.TextXAlignment.Left
   var22.NameLabel = var1.createElement("TextLabel", var26)
   local var50 = {}
   var50.AnchorPoint = Vector2.new(0, 0.5)
   var50.BorderSizePixel = 0
   var50.BackgroundTransparency = 0
   var50.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var63 = {}
   local var67 = {}
   var67.FillDirection = Enum.FillDirection.Horizontal
   var67.VerticalAlignment = Enum.VerticalAlignment.Center
   var67.SortOrder = Enum.SortOrder.LayoutOrder
   var67.Padding = UDim.new(0, 12)
   var63.LeftButtonsList = var1.createElement("UIListLayout", var67)
   var63.IKController = var1.createElement(var3, {})
   var63.FaceControlsEditorController = var1.createElement(var4, {})
   var63.RecordingModeButton = var11() and var1.createElement(var5, {})
   var22.LeftButtonsListContainer = var1.createElement("Frame", var50, var63)
   if var133 and var9(var4) then
      local var98 = {}
      var98.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var98.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var98.Tracks = var3
      var98.Facs = var4
      var98.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var98) or nil
   end
   var22.AddTrackButton = nil
   return var1.createElement(var6, var17, var22)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var127 = var10
   var127 = var2
   local var8 = var127.getTextWidth(var127, var5.textSize, var1.font)
   local var133 = var11()
   if var133 then
      var6 = truncateAtMiddle(var2, 16)
      local var139 = var10
      var139 = var6
      var8 = var139.getTextWidth(var139, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var133 = var4
   local var17 = {}
   var17.Height = var8.SUMMARY_TRACK_HEIGHT
   var17.Indent = 1
   var17.LayoutOrder = var0.LayoutOrder
   var17.Primary = true
   local var22 = {}
   local var26 = {}
   var26.Size = UDim2.new(1, 0, 1, 0)
   var26.Position = UDim2.new(0, 0, 0, 0)
   local var39 = 1
   var26.BackgroundTransparency = var39
   if var11() then
      var39 = var6
      if not var39 then
         var39 = var2
      end
   end
   var39 = var2
   var26.Text = var39
   var26.Font = var1.font
   var26.TextSize = var5.textSize
   var26.TextColor3 = var5.textColor
   var26.TextXAlignment = Enum.TextXAlignment.Left
   var22.NameLabel = var1.createElement("TextLabel", var26)
   local var50 = {}
   var50.AnchorPoint = Vector2.new(0, 0.5)
   var50.BorderSizePixel = 0
   var50.BackgroundTransparency = 0
   var50.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var63 = {}
   local var67 = {}
   var67.FillDirection = Enum.FillDirection.Horizontal
   var67.VerticalAlignment = Enum.VerticalAlignment.Center
   var67.SortOrder = Enum.SortOrder.LayoutOrder
   var67.Padding = UDim.new(0, 12)
   var63.LeftButtonsList = var1.createElement("UIListLayout", var67)
   var63.IKController = var1.createElement(var3, {})
   var63.FaceControlsEditorController = var1.createElement(var4, {})
   var63.RecordingModeButton = var11() and var1.createElement(var5, {})
   var22.LeftButtonsListContainer = var1.createElement("Frame", var50, var63)
   if var133 and var9(var4) then
      local var98 = {}
      var98.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var98.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var98.Tracks = var3
      var98.Facs = var4
      var98.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var98) or nil
   end
   var22.AddTrackButton = nil
   return var1.createElement(var6, var17, var22)
end

fun0 = var2.withContext
local var121 = {}
var121.Stylizer = var2.Stylizer
var12 = fun0(var121)(var12)
return var12
