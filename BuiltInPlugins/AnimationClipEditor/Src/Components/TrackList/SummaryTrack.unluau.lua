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
         local var109 = arg1
         local var110 = var109.props
         var110 = arg1
         var109 = arg2
         var110.OnTrackAdded(var110, var109, arg3)
      end
   end
   
end

function truncateAtMiddle(arg1, arg2, arg3)
   local var0 = arg1
   if arg2 < var0 then
      local var0 = arg2 - var0
      local var129 = string.sub(arg1, 0, math.ceil((var0) / 2))
      var129 = arg1
      return var129 ... var0 ... string.sub(var129, arg1 - math.floor((var0) / 2))
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
   local var146 = var10
   var146 = var2
   local var8 = var146.getTextWidth(var146, var5.textSize, var1.font)
   local var152 = var11()
   if var152 then
      var6 = truncateAtMiddle(var2, 16)
      local var157 = var10
      var157 = var6
      var8 = var157.getTextWidth(var157, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var152 = var4
   local var179 = {}
   var179.Height = var8.SUMMARY_TRACK_HEIGHT
   var179.Indent = 1
   var179.LayoutOrder = var0.LayoutOrder
   var179.Primary = true
   local var184 = {}
   local var188 = {}
   var188.Size = UDim2.new(1, 0, 1, 0)
   var188.Position = UDim2.new(0, 0, 0, 0)
   local var201 = 1
   var188.BackgroundTransparency = var201
   if var11() then
      var201 = var6
      if not var201 then
         var201 = var2
      end
   end
   var201 = var2
   var188.Text = var201
   var188.Font = var1.font
   var188.TextSize = var5.textSize
   var188.TextColor3 = var5.textColor
   var188.TextXAlignment = Enum.TextXAlignment.Left
   var184.NameLabel = var1.createElement("TextLabel", var188)
   local var212 = {}
   var212.AnchorPoint = Vector2.new(0, 0.5)
   var212.BorderSizePixel = 0
   var212.BackgroundTransparency = 0
   var212.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var225 = {}
   local var229 = {}
   var229.FillDirection = Enum.FillDirection.Horizontal
   var229.VerticalAlignment = Enum.VerticalAlignment.Center
   var229.SortOrder = Enum.SortOrder.LayoutOrder
   var229.Padding = UDim.new(0, 12)
   var225.LeftButtonsList = var1.createElement("UIListLayout", var229)
   var225.IKController = var1.createElement(var3, {})
   var225.FaceControlsEditorController = var1.createElement(var4, {})
   var225.RecordingModeButton = var11() and var1.createElement(var5, {})
   var184.LeftButtonsListContainer = var1.createElement("Frame", var212, var225)
   if var152 and var9(var4) then
      local var260 = {}
      var260.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var260.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var260.Tracks = var3
      var260.Facs = var4
      var260.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var260) or nil
   end
   var184.AddTrackButton = nil
   return var1.createElement(var6, var179, var184)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Name
   local var3 = var0.UnusedTracks
   local var4 = var0.UnusedFacs
   local var5 = var1.trackTheme
   local var6 = ""
   local var146 = var10
   var146 = var2
   local var8 = var146.getTextWidth(var146, var5.textSize, var1.font)
   local var152 = var11()
   if var152 then
      var6 = truncateAtMiddle(var2, 16)
      local var157 = var10
      var157 = var6
      var8 = var157.getTextWidth(var157, var5.textSize, var1.font)
   end
   if var3 then
      local var0 = var9(var3)
      if not var0 then
         var0 = var4
         local var0 = var0 and var9(var4)
      end
   end
   var152 = var4
   local var179 = {}
   var179.Height = var8.SUMMARY_TRACK_HEIGHT
   var179.Indent = 1
   var179.LayoutOrder = var0.LayoutOrder
   var179.Primary = true
   local var184 = {}
   local var188 = {}
   var188.Size = UDim2.new(1, 0, 1, 0)
   var188.Position = UDim2.new(0, 0, 0, 0)
   local var201 = 1
   var188.BackgroundTransparency = var201
   if var11() then
      var201 = var6
      if not var201 then
         var201 = var2
      end
   end
   var201 = var2
   var188.Text = var201
   var188.Font = var1.font
   var188.TextSize = var5.textSize
   var188.TextColor3 = var5.textColor
   var188.TextXAlignment = Enum.TextXAlignment.Left
   var184.NameLabel = var1.createElement("TextLabel", var188)
   local var212 = {}
   var212.AnchorPoint = Vector2.new(0, 0.5)
   var212.BorderSizePixel = 0
   var212.BackgroundTransparency = 0
   var212.Position = UDim2.new(0, var8 + 12, 0.5, 0)
   local var225 = {}
   local var229 = {}
   var229.FillDirection = Enum.FillDirection.Horizontal
   var229.VerticalAlignment = Enum.VerticalAlignment.Center
   var229.SortOrder = Enum.SortOrder.LayoutOrder
   var229.Padding = UDim.new(0, 12)
   var225.LeftButtonsList = var1.createElement("UIListLayout", var229)
   var225.IKController = var1.createElement(var3, {})
   var225.FaceControlsEditorController = var1.createElement(var4, {})
   var225.RecordingModeButton = var11() and var1.createElement(var5, {})
   var184.LeftButtonsListContainer = var1.createElement("Frame", var212, var225)
   if var152 and var9(var4) then
      local var260 = {}
      var260.Size = UDim2.new(0, var8.TRACKLIST_BUTTON_SIZE, 0, var8.TRACKLIST_BUTTON_SIZE)
      var260.Position = UDim2.new(1, var8.TRACKLIST_RIGHT_PADDING, 0.5, 0)
      var260.Tracks = var3
      var260.Facs = var4
      var260.OnTrackSelected = arg1.onTrackAdded
      local var0 = var1.createElement(var7, var260) or nil
   end
   var184.AddTrackButton = nil
   return var1.createElement(var6, var179, var184)
end

fun3 = var2.withContext
local var283 = {}
var283.Stylizer = var2.Stylizer
var12 = fun3(var283)(var12)
return var12
