-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.Button
local var4 = var2.ContextServices
local var5 = require(var0.Src.Util.RigUtils)
local var6 = require(var0.Src.Components.FaceControlsEditor.FaceControlsEditorWindow)
local var7 = require(var0.Src.Thunks.ToggleFaceControlsEditorEnabled)
local var8 = require(var0.Src.Thunks.ToggleShowFaceControlsEditorPanel)
local var9 = require(var0.Src.Actions.SetFaceControlsEditorEnabled)
local var10 = require(var0.Src.Actions.SetShowFaceControlsEditorPanel)
local var11 = require(var0.Src.Actions.SetSelectedTracks)
local var12 = require(var0.Src.Components.TeachingCallout)
local var13 = var1.PureComponent:extend("FaceControlsEditorController")
local var14 = var2.Util.GetTextSize
function var13.init(arg1)
   local var547 = {}
   var547.showMenu = false
   var547.showFaceControlsEditorPanel = false
   arg1.state = var547
   function arg1.showMenu()
      local var551 = {}
      var551.showMenu = true
      arg1:setState(var551)
   end
   
   function arg1.hideMenu()
      local var555 = {}
      var555.showMenu = false
      arg1:setState(var555)
   end
   
   function arg1.setShowFaceControlsEditorPanel(arg1)
      local var560 = {}
      var560.showFaceControlsEditorPanel = arg1
      arg1:setState(var560)
   end
   
   function arg1.getLastSelectedTrack()
      if arg1.props.SelectedTracks then
         return arg1.props.SelectedTracks[arg1.props.SelectedTracks]
      end
   end
   
   function arg1.toggleFaceControlsEditorEnabledHandler()
      return arg1.props.ToggleFaceControlsEditorEnabled(arg1.props.Analytics)
   end
   
end

function var13.didUpdate(arg1)
   local var0 = arg1.props
   if var0.ShowFaceControlsEditorPanel ~= arg1.state.showFaceControlsEditorPanel then
      if var0.ShowFaceControlsEditorPanel == "props" then
         spawn(function()
            local var588 = {}
            var588.showMenu = true
            arg1:setState(var588)
         end)
      end
      arg1.setShowFaceControlsEditorPanel(var0.ShowFaceControlsEditorPanel)
   end
end

local function fun25(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   local var2 = var1.Stylizer
   local var3 = var2.button
   local var4 = arg1.state
   local var5 = arg1.props.RootInstance
   if var5 then
      local var630 = {}
      var630.Position = var1.Position
      var630.Size = UDim2.new(0, var14(var0:getText("Title", "FACE"), var2.ikTheme.textSize, var2.font, Vector2.new(1000, 1000)).X + 10, 0, 18)
      var630.BackgroundTransparency = 1
      var630.AnchorPoint = Vector2.new(0, 0.5)
      var630.LayoutOrder = 2
      local var644 = {}
      local var645 = var1.RootInstance
      if var645 then
         var645 = var5.canUseFaceControlsEditor(var1.RootInstance)
         if var645 then
            local var649 = {}
            if var4.showFaceControlsEditorPanel then
               local var0 = var3.FaceControlsEditorActive or var3.FaceControlsEditorDefault
            end
            var649.Style = var3.FaceControlsEditorDefault
            var649.Size = UDim2.new(1, 0, 1, 0)
            var649.OnClick = var1.ToggleShowFaceControlsEditorPanel
            local var661 = {}
            local var665 = {}
            var665.BackgroundTransparency = 1
            var665.Size = UDim2.new(1, 0, 1, 0)
            var665.TextYAlignment = Enum.TextYAlignment.Center
            var665.TextSize = var2.ikTheme.textSize
            var665.Text = var0:getText("Title", "FACE")
            var665.Font = var2.font
            var665.TextColor3 = var2.ikTheme.textColor
            local var683 = {}
            local var687 = {}
            var687.Offset = Vector2.new(0, 6)
            var687.DefinitionId = "FaceControlsEditorCallout"
            var687.LocationId = "FaceControlsEditorButton"
            var683.TeachingCallout = var1.createElement(var12, var687)
            var661.Label = var1.createElement("TextLabel", var665, var683)
            local var0 = var1.createElement(var3, var649, var661)
         end
      end
      var644.FaceControlsEditorButton = var645
      local var1 = var1.ShowFaceControlsEditorPanel
      if var1 then
         if var4.showFaceControlsEditorPanel then
            local var702 = {}
            var702.RootInstance = var1.RootInstance
            var702.FaceControlsEditorEnabled = var1.FaceControlsEditorEnabled
            var702.ShowFaceControlsEditorPanel = var1.ShowFaceControlsEditorPanel
            var702.SelectedTrack = arg1.getLastSelectedTrack()
            var702.SetSelectedTracks = var1.SetSelectedTracks
            var702.ToggleFaceControlsEditorEnabled = arg1.toggleFaceControlsEditorEnabledHandler
            var702.SetShowFaceControlsEditorPanel = var1.SetShowFaceControlsEditorPanel
            var702.SetFaceControlsEditorEnabled = var1.SetFaceControlsEditorEnabled
            local var0 = var1.createElement(var6, var702)
         end
      end
      var644.FaceControlsEditorWindow = var1
      local var2 = var1.createElement("Frame", var630, var644)
   end
   return var5
end

function var13.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   local var2 = var1.Stylizer
   local var3 = var2.button
   local var4 = arg1.state
   local var5 = arg1.props.RootInstance
   if var5 then
      local var630 = {}
      var630.Position = var1.Position
      var630.Size = UDim2.new(0, var14(var0:getText("Title", "FACE"), var2.ikTheme.textSize, var2.font, Vector2.new(1000, 1000)).X + 10, 0, 18)
      var630.BackgroundTransparency = 1
      var630.AnchorPoint = Vector2.new(0, 0.5)
      var630.LayoutOrder = 2
      local var644 = {}
      local var645 = var1.RootInstance
      if var645 then
         var645 = var5.canUseFaceControlsEditor(var1.RootInstance)
         if var645 then
            local var649 = {}
            if var4.showFaceControlsEditorPanel then
               local var0 = var3.FaceControlsEditorActive or var3.FaceControlsEditorDefault
            end
            var649.Style = var3.FaceControlsEditorDefault
            var649.Size = UDim2.new(1, 0, 1, 0)
            var649.OnClick = var1.ToggleShowFaceControlsEditorPanel
            local var661 = {}
            local var665 = {}
            var665.BackgroundTransparency = 1
            var665.Size = UDim2.new(1, 0, 1, 0)
            var665.TextYAlignment = Enum.TextYAlignment.Center
            var665.TextSize = var2.ikTheme.textSize
            var665.Text = var0:getText("Title", "FACE")
            var665.Font = var2.font
            var665.TextColor3 = var2.ikTheme.textColor
            local var683 = {}
            local var687 = {}
            var687.Offset = Vector2.new(0, 6)
            var687.DefinitionId = "FaceControlsEditorCallout"
            var687.LocationId = "FaceControlsEditorButton"
            var683.TeachingCallout = var1.createElement(var12, var687)
            var661.Label = var1.createElement("TextLabel", var665, var683)
            local var0 = var1.createElement(var3, var649, var661)
         end
      end
      var644.FaceControlsEditorButton = var645
      local var1 = var1.ShowFaceControlsEditorPanel
      if var1 then
         if var4.showFaceControlsEditorPanel then
            local var702 = {}
            var702.RootInstance = var1.RootInstance
            var702.FaceControlsEditorEnabled = var1.FaceControlsEditorEnabled
            var702.ShowFaceControlsEditorPanel = var1.ShowFaceControlsEditorPanel
            var702.SelectedTrack = arg1.getLastSelectedTrack()
            var702.SetSelectedTracks = var1.SetSelectedTracks
            var702.ToggleFaceControlsEditorEnabled = arg1.toggleFaceControlsEditorEnabledHandler
            var702.SetShowFaceControlsEditorPanel = var1.SetShowFaceControlsEditorPanel
            var702.SetFaceControlsEditorEnabled = var1.SetFaceControlsEditorEnabled
            local var0 = var1.createElement(var6, var702)
         end
      end
      var644.FaceControlsEditorWindow = var1
      local var2 = var1.createElement("Frame", var630, var644)
   end
   return var5
end

fun25 = var4.withContext
local var712 = {}
var712.Stylizer = var4.Stylizer
var712.Localization = var4.Localization
var712.Analytics = var4.Analytics
var13 = fun25(var712)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.ShowFaceControlsEditorPanel = arg1.Status.ShowFaceControlsEditorPanel
   var0.FaceControlsEditorEnabled = arg1.Status.FaceControlsEditorEnabled
   var0.RootInstance = arg1.Status.RootInstance
   var0.SelectedTracks = arg1.Status.SelectedTracks
   return var0
end, function(arg1)
   local var0 = {}
   function var0.ToggleShowFaceControlsEditorPanel()
      local var733 = {}
      var733.showMenu = true
      arg1:setState(var733)
   end
   
   function var0.SetFaceControlsEditorEnabled()
      local var737 = {}
      var737.showMenu = false
      arg1:setState(var737)
   end
   
   function var0.ToggleFaceControlsEditorEnabled(arg1)
      local var742 = {}
      var742.showFaceControlsEditorPanel = arg1
      arg1:setState(var742)
   end
   
   function var0.SetShowFaceControlsEditorPanel()
      if arg1.props.SelectedTracks then
         return arg1.props.SelectedTracks[arg1.props.SelectedTracks]
      end
   end
   
   function var0.SetSelectedTracks()
      return arg1.props.ToggleFaceControlsEditorEnabled(arg1.props.Analytics)
   end
   
   return var0
end)(var13)
