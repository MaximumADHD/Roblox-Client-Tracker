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
      local var94 = string.sub(arg1, 0, math.ceil((var0) / 2))
      var94 = arg1
      return var94 ... var0 ... string.sub(var94, arg1 - math.floor((var0) / 2))
   end
   return arg1
end

local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var111 = var10
   var111 = var2
   local var8 = var111.getTextWidth(var111, var5.textSize, var1.font)
   local var117 = var11()
   if var117 then
      var6 = truncateAtMiddle(var2, 16)
      local var122 = var10
      var122 = var6
      var8 = var122.getTextWidth(var122, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var117 = var4
   local var144 = {}
   var144.Height = var8.SUMMARY_TRACK_HEIGHT
   var144.Indent = 1
   var144.LayoutOrder = var0.LayoutOrder
   var144.Primary = true
   local var149 = {}
   local var153 = {}
   var153.Size = UDim2.new(1, 0, 1, 0)
   var153.Position = UDim2.new(0, 0, 0, 0)
   local var166 = 1
   var153.BackgroundTransparency = var166
   if var11() then
      var166 = var6
      if not var166 then
         var166 = var2
      end
   end
   var166 = var2
   var153.Text = var166
   var153.Font = var1.font
   var153.TextSize = var5.textSize
   var153.TextColor3 = var5.textColor
   var153.TextXAlignment = Enum.TextXAlignment.Left
   var149.NameLabel = var1.createElement("TextLabel", var153)
   local var177 = {}
   var177.AnchorPoint = Vector2.new(0, 0.5)
   var177.BorderSizePixel = 0
   var177.BackgroundTransparency = 0
   var177.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var190 = {}
   local var194 = {}
   var194.FillDirection = Enum.FillDirection.Horizontal
   var194.VerticalAlignment = Enum.VerticalAlignment.Center
   var194.SortOrder = Enum.SortOrder.LayoutOrder
   var194.Padding = UDim.new(0, 12)
   var190.LeftButtonsList = var1.createElement("UIListLayout", var194)
   var190.IKController = var1.createElement(var3, {})
   var190.FaceControlsEditorController = var1.createElement(var4, {})
   var190.RecordingModeButton = var11() and var1.createElement(var5, {})
   var149.LeftButtonsListContainer = var1.createElement("Frame", var177, var190)
   if var117 and var9(var4) then
      local var242 = {}
      var242.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var242.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var242.Tracks = var3
      var242.Facs = var4
      var242.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var242) or nil
   end
   var149.AddTrackButton = nil
   return var1.createElement(var6, var144, var149)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var111 = var10
   var111 = var2
   local var8 = var111.getTextWidth(var111, var5.textSize, var1.font)
   local var117 = var11()
   if var117 then
      var6 = truncateAtMiddle(var2, 16)
      local var122 = var10
      var122 = var6
      var8 = var122.getTextWidth(var122, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var117 = var4
   local var144 = {}
   var144.Height = var8.SUMMARY_TRACK_HEIGHT
   var144.Indent = 1
   var144.LayoutOrder = var0.LayoutOrder
   var144.Primary = true
   local var149 = {}
   local var153 = {}
   var153.Size = UDim2.new(1, 0, 1, 0)
   var153.Position = UDim2.new(0, 0, 0, 0)
   local var166 = 1
   var153.BackgroundTransparency = var166
   if var11() then
      var166 = var6
      if not var166 then
         var166 = var2
      end
   end
   var166 = var2
   var153.Text = var166
   var153.Font = var1.font
   var153.TextSize = var5.textSize
   var153.TextColor3 = var5.textColor
   var153.TextXAlignment = Enum.TextXAlignment.Left
   var149.NameLabel = var1.createElement("TextLabel", var153)
   local var177 = {}
   var177.AnchorPoint = Vector2.new(0, 0.5)
   var177.BorderSizePixel = 0
   var177.BackgroundTransparency = 0
   var177.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var190 = {}
   local var194 = {}
   var194.FillDirection = Enum.FillDirection.Horizontal
   var194.VerticalAlignment = Enum.VerticalAlignment.Center
   var194.SortOrder = Enum.SortOrder.LayoutOrder
   var194.Padding = UDim.new(0, 12)
   var190.LeftButtonsList = var1.createElement("UIListLayout", var194)
   var190.IKController = var1.createElement(var3, {})
   var190.FaceControlsEditorController = var1.createElement(var4, {})
   var190.RecordingModeButton = var11() and var1.createElement(var5, {})
   var149.LeftButtonsListContainer = var1.createElement("Frame", var177, var190)
   if var117 and var9(var4) then
      local var242 = {}
      var242.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var242.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var242.Tracks = var3
      var242.Facs = var4
      var242.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var242) or nil
   end
   var149.AddTrackButton = nil
   return var1.createElement(var6, var144, var149)
end

fun3 = var2.withContext
local var265 = {}
var265.Stylizer = var2.Stylizer
var12 = fun3(var265)(var12)
return var12
