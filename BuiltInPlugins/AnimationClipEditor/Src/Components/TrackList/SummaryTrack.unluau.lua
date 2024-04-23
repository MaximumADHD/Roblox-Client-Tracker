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
         local var82 = arg1
         local var83 = var82.props
         var83 = arg1
         var82 = arg2
         var83.OnTrackAdded(var83, var82, arg3)
      end
   end
   
end

function truncateAtMiddle(arg1, arg2, arg3)
   local var0 = arg1
   if arg2 < var0 then
      local var0 = arg2 - var0
      local var102 = string.sub(arg1, 0, math.ceil((var0) / 2))
      var102 = arg1
      return var102 ... var0 ... string.sub(var102, arg1 - math.floor((var0) / 2))
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
   local var119 = var10
   var119 = var2
   local var8 = var119.getTextWidth(var119, var5.textSize, var1.font)
   local var125 = var11()
   if var125 then
      var6 = truncateAtMiddle(var2, 16)
      local var130 = var10
      var130 = var6
      var8 = var130.getTextWidth(var130, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var125 = var4
   local var152 = {}
   var152.Height = var8.SUMMARY_TRACK_HEIGHT
   var152.Indent = 1
   var152.LayoutOrder = var0.LayoutOrder
   var152.Primary = true
   local var157 = {}
   local var161 = {}
   var161.Size = UDim2.new(1, 0, 1, 0)
   var161.Position = UDim2.new(0, 0, 0, 0)
   local var174 = 1
   var161.BackgroundTransparency = var174
   if var11() then
      var174 = var6
      if not var174 then
         var174 = var2
      end
   end
   var174 = var2
   var161.Text = var174
   var161.Font = var1.font
   var161.TextSize = var5.textSize
   var161.TextColor3 = var5.textColor
   var161.TextXAlignment = Enum.TextXAlignment.Left
   var157.NameLabel = var1.createElement("TextLabel", var161)
   local var185 = {}
   var185.AnchorPoint = Vector2.new(0, 0.5)
   var185.BorderSizePixel = 0
   var185.BackgroundTransparency = 0
   var185.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var198 = {}
   local var202 = {}
   var202.FillDirection = Enum.FillDirection.Horizontal
   var202.VerticalAlignment = Enum.VerticalAlignment.Center
   var202.SortOrder = Enum.SortOrder.LayoutOrder
   var202.Padding = UDim.new(0, 12)
   var198.LeftButtonsList = var1.createElement("UIListLayout", var202)
   var198.IKController = var1.createElement(var3, {})
   var198.FaceControlsEditorController = var1.createElement(var4, {})
   var198.RecordingModeButton = var11() and var1.createElement(var5, {})
   var157.LeftButtonsListContainer = var1.createElement("Frame", var185, var198)
   if var125 and var9(var4) then
      local var233 = {}
      var233.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var233.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var233.Tracks = var3
      var233.Facs = var4
      var233.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var233) or nil
   end
   var157.AddTrackButton = nil
   return var1.createElement(var6, var152, var157)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var119 = var10
   var119 = var2
   local var8 = var119.getTextWidth(var119, var5.textSize, var1.font)
   local var125 = var11()
   if var125 then
      var6 = truncateAtMiddle(var2, 16)
      local var130 = var10
      var130 = var6
      var8 = var130.getTextWidth(var130, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var125 = var4
   local var152 = {}
   var152.Height = var8.SUMMARY_TRACK_HEIGHT
   var152.Indent = 1
   var152.LayoutOrder = var0.LayoutOrder
   var152.Primary = true
   local var157 = {}
   local var161 = {}
   var161.Size = UDim2.new(1, 0, 1, 0)
   var161.Position = UDim2.new(0, 0, 0, 0)
   local var174 = 1
   var161.BackgroundTransparency = var174
   if var11() then
      var174 = var6
      if not var174 then
         var174 = var2
      end
   end
   var174 = var2
   var161.Text = var174
   var161.Font = var1.font
   var161.TextSize = var5.textSize
   var161.TextColor3 = var5.textColor
   var161.TextXAlignment = Enum.TextXAlignment.Left
   var157.NameLabel = var1.createElement("TextLabel", var161)
   local var185 = {}
   var185.AnchorPoint = Vector2.new(0, 0.5)
   var185.BorderSizePixel = 0
   var185.BackgroundTransparency = 0
   var185.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var198 = {}
   local var202 = {}
   var202.FillDirection = Enum.FillDirection.Horizontal
   var202.VerticalAlignment = Enum.VerticalAlignment.Center
   var202.SortOrder = Enum.SortOrder.LayoutOrder
   var202.Padding = UDim.new(0, 12)
   var198.LeftButtonsList = var1.createElement("UIListLayout", var202)
   var198.IKController = var1.createElement(var3, {})
   var198.FaceControlsEditorController = var1.createElement(var4, {})
   var198.RecordingModeButton = var11() and var1.createElement(var5, {})
   var157.LeftButtonsListContainer = var1.createElement("Frame", var185, var198)
   if var125 and var9(var4) then
      local var233 = {}
      var233.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var233.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var233.Tracks = var3
      var233.Facs = var4
      var233.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var233) or nil
   end
   var157.AddTrackButton = nil
   return var1.createElement(var6, var152, var157)
end

fun3 = var2.withContext
local var256 = {}
var256.Stylizer = var2.Stylizer
var12 = fun3(var256)(var12)
return var12
