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
         local var225 = arg1
         local var226 = var225.props
         var226 = arg1
         var225 = arg2
         var226.OnTrackAdded(var226, var225, arg3)
      end
   end
   
end

function truncateAtMiddle(arg1, arg2, arg3)
   local var0 = arg1
   if arg2 < var0 then
      local var0 = arg2 - var0
      local var245 = string.sub(arg1, 0, math.ceil((var0) / 2))
      var245 = arg1
      return var245 ... var0 ... string.sub(var245, arg1 - math.floor((var0) / 2))
   end
   return arg1
end

local function fun5(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var262 = var10
   var262 = var2
   local var8 = var262.getTextWidth(var262, var5.textSize, var1.font)
   local var268 = var11()
   if var268 then
      var6 = truncateAtMiddle(var2, 16)
      local var273 = var10
      var273 = var6
      var8 = var273.getTextWidth(var273, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var268 = var4
   local var295 = {}
   var295.Height = var8.SUMMARY_TRACK_HEIGHT
   var295.Indent = 1
   var295.LayoutOrder = var0.LayoutOrder
   var295.Primary = true
   local var300 = {}
   local var304 = {}
   var304.Size = UDim2.new(1, 0, 1, 0)
   var304.Position = UDim2.new(0, 0, 0, 0)
   local var317 = 1
   var304.BackgroundTransparency = var317
   if var11() then
      var317 = var6
      if not var317 then
         var317 = var2
      end
   end
   var317 = var2
   var304.Text = var317
   var304.Font = var1.font
   var304.TextSize = var5.textSize
   var304.TextColor3 = var5.textColor
   var304.TextXAlignment = Enum.TextXAlignment.Left
   var300.NameLabel = var1.createElement("TextLabel", var304)
   local var328 = {}
   var328.AnchorPoint = Vector2.new(0, 0.5)
   var328.BorderSizePixel = 0
   var328.BackgroundTransparency = 0
   var328.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var341 = {}
   local var345 = {}
   var345.FillDirection = Enum.FillDirection.Horizontal
   var345.VerticalAlignment = Enum.VerticalAlignment.Center
   var345.SortOrder = Enum.SortOrder.LayoutOrder
   var345.Padding = UDim.new(0, 12)
   var341.LeftButtonsList = var1.createElement("UIListLayout", var345)
   var341.IKController = var1.createElement(var3, {})
   var341.FaceControlsEditorController = var1.createElement(var4, {})
   var341.RecordingModeButton = var11() and var1.createElement(var5, {})
   var300.LeftButtonsListContainer = var1.createElement("Frame", var328, var341)
   if var268 and var9(var4) then
      local var376 = {}
      var376.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var376.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var376.Tracks = var3
      var376.Facs = var4
      var376.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var376) or nil
   end
   var300.AddTrackButton = nil
   return var1.createElement(var6, var295, var300)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var262 = var10
   var262 = var2
   local var8 = var262.getTextWidth(var262, var5.textSize, var1.font)
   local var268 = var11()
   if var268 then
      var6 = truncateAtMiddle(var2, 16)
      local var273 = var10
      var273 = var6
      var8 = var273.getTextWidth(var273, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var268 = var4
   local var295 = {}
   var295.Height = var8.SUMMARY_TRACK_HEIGHT
   var295.Indent = 1
   var295.LayoutOrder = var0.LayoutOrder
   var295.Primary = true
   local var300 = {}
   local var304 = {}
   var304.Size = UDim2.new(1, 0, 1, 0)
   var304.Position = UDim2.new(0, 0, 0, 0)
   local var317 = 1
   var304.BackgroundTransparency = var317
   if var11() then
      var317 = var6
      if not var317 then
         var317 = var2
      end
   end
   var317 = var2
   var304.Text = var317
   var304.Font = var1.font
   var304.TextSize = var5.textSize
   var304.TextColor3 = var5.textColor
   var304.TextXAlignment = Enum.TextXAlignment.Left
   var300.NameLabel = var1.createElement("TextLabel", var304)
   local var328 = {}
   var328.AnchorPoint = Vector2.new(0, 0.5)
   var328.BorderSizePixel = 0
   var328.BackgroundTransparency = 0
   var328.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var341 = {}
   local var345 = {}
   var345.FillDirection = Enum.FillDirection.Horizontal
   var345.VerticalAlignment = Enum.VerticalAlignment.Center
   var345.SortOrder = Enum.SortOrder.LayoutOrder
   var345.Padding = UDim.new(0, 12)
   var341.LeftButtonsList = var1.createElement("UIListLayout", var345)
   var341.IKController = var1.createElement(var3, {})
   var341.FaceControlsEditorController = var1.createElement(var4, {})
   var341.RecordingModeButton = var11() and var1.createElement(var5, {})
   var300.LeftButtonsListContainer = var1.createElement("Frame", var328, var341)
   if var268 and var9(var4) then
      local var376 = {}
      var376.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var376.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var376.Tracks = var3
      var376.Facs = var4
      var376.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var376) or nil
   end
   var300.AddTrackButton = nil
   return var1.createElement(var6, var295, var300)
end

fun5 = var2.withContext
local var399 = {}
var399.Stylizer = var2.Stylizer
var12 = fun5(var399)(var12)
return var12
