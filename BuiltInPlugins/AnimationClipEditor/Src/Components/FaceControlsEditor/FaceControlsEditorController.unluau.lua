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
local var12 = require(var0.Src.Thunks.SetSelectedTracks)
local var13 = require(var0.Src.Components.TeachingCallout)
local var14 = require(var0.LuaFlags.GetFFlagSelectFromViewport)
local var15 = var1.PureComponent:extend("FaceControlsEditorController")
local var16 = var2.Util.GetTextSize
function var15.init(arg1)
   local var94 = {}
   var94.showMenu = false
   var94.showFaceControlsEditorPanel = false
   arg1.state = var94
   function arg1.showMenu()
      local var98 = {}
      var98.showMenu = true
      arg1:setState(var98)
   end
   
   function arg1.hideMenu()
      local var102 = {}
      var102.showMenu = false
      arg1:setState(var102)
   end
   
   function arg1.setShowFaceControlsEditorPanel(arg1)
      local var107 = {}
      var107.showFaceControlsEditorPanel = arg1
      arg1:setState(var107)
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

function var15.didUpdate(arg1)
   local var0 = arg1.props
   if var0.ShowFaceControlsEditorPanel ~= arg1.state.showFaceControlsEditorPanel then
      if var0.ShowFaceControlsEditorPanel == "props" then
         spawn(function()
            local var135 = {}
            var135.showMenu = true
            arg1:setState(var135)
         end)
      end
      arg1.setShowFaceControlsEditorPanel(var0.ShowFaceControlsEditorPanel)
   end
end

local function fun8(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   local var2 = var1.Stylizer
   local var3 = var2.button
   local var4 = arg1.state
   local var5 = arg1.props.RootInstance
   if var5 then
      local var177 = {}
      var177.Position = var1.Position
      var177.Size = UDim2.new(0, var16(var0:getText("Title", "FACE"), var2.ikTheme.textSize, var2.font, Vector2.new(1000, 1000)).X + 10, 0, 18)
      var177.BackgroundTransparency = 1
      var177.AnchorPoint = Vector2.new(0, 0.5)
      var177.LayoutOrder = 2
      local var191 = {}
      local var192 = var1.RootInstance
      if var192 then
         var192 = var5.canUseFaceControlsEditor(var1.RootInstance)
         if var192 then
            local var196 = {}
            if var4.showFaceControlsEditorPanel then
               local var0 = var3.FaceControlsEditorActive or var3.FaceControlsEditorDefault
            end
            var196.Style = var3.FaceControlsEditorDefault
            var196.Size = UDim2.new(1, 0, 1, 0)
            var196.OnClick = var1.ToggleShowFaceControlsEditorPanel
            local var208 = {}
            local var212 = {}
            var212.BackgroundTransparency = 1
            var212.Size = UDim2.new(1, 0, 1, 0)
            var212.TextYAlignment = Enum.TextYAlignment.Center
            var212.TextSize = var2.ikTheme.textSize
            var212.Text = var0:getText("Title", "FACE")
            var212.Font = var2.font
            var212.TextColor3 = var2.ikTheme.textColor
            local var230 = {}
            local var234 = {}
            var234.Offset = Vector2.new(0, 6)
            var234.DefinitionId = "FaceControlsEditorCallout"
            var234.LocationId = "FaceControlsEditorButton"
            var230.TeachingCallout = var1.createElement(var13, var234)
            var208.Label = var1.createElement("TextLabel", var212, var230)
            local var0 = var1.createElement(var3, var196, var208)
         end
      end
      var191.FaceControlsEditorButton = var192
      local var1 = var1.ShowFaceControlsEditorPanel
      if var1 then
         if var4.showFaceControlsEditorPanel then
            local var249 = {}
            var249.RootInstance = var1.RootInstance
            var249.FaceControlsEditorEnabled = var1.FaceControlsEditorEnabled
            var249.ShowFaceControlsEditorPanel = var1.ShowFaceControlsEditorPanel
            var249.SelectedTrack = arg1.getLastSelectedTrack()
            var249.SetSelectedTracks = var1.SetSelectedTracks
            var249.ToggleFaceControlsEditorEnabled = arg1.toggleFaceControlsEditorEnabledHandler
            var249.SetShowFaceControlsEditorPanel = var1.SetShowFaceControlsEditorPanel
            var249.SetFaceControlsEditorEnabled = var1.SetFaceControlsEditorEnabled
            local var0 = var1.createElement(var6, var249)
         end
      end
      var191.FaceControlsEditorWindow = var1
      local var2 = var1.createElement("Frame", var177, var191)
   end
   return var5
end

function var15.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   local var2 = var1.Stylizer
   local var3 = var2.button
   local var4 = arg1.state
   local var5 = arg1.props.RootInstance
   if var5 then
      local var177 = {}
      var177.Position = var1.Position
      var177.Size = UDim2.new(0, var16(var0:getText("Title", "FACE"), var2.ikTheme.textSize, var2.font, Vector2.new(1000, 1000)).X + 10, 0, 18)
      var177.BackgroundTransparency = 1
      var177.AnchorPoint = Vector2.new(0, 0.5)
      var177.LayoutOrder = 2
      local var191 = {}
      local var192 = var1.RootInstance
      if var192 then
         var192 = var5.canUseFaceControlsEditor(var1.RootInstance)
         if var192 then
            local var196 = {}
            if var4.showFaceControlsEditorPanel then
               local var0 = var3.FaceControlsEditorActive or var3.FaceControlsEditorDefault
            end
            var196.Style = var3.FaceControlsEditorDefault
            var196.Size = UDim2.new(1, 0, 1, 0)
            var196.OnClick = var1.ToggleShowFaceControlsEditorPanel
            local var208 = {}
            local var212 = {}
            var212.BackgroundTransparency = 1
            var212.Size = UDim2.new(1, 0, 1, 0)
            var212.TextYAlignment = Enum.TextYAlignment.Center
            var212.TextSize = var2.ikTheme.textSize
            var212.Text = var0:getText("Title", "FACE")
            var212.Font = var2.font
            var212.TextColor3 = var2.ikTheme.textColor
            local var230 = {}
            local var234 = {}
            var234.Offset = Vector2.new(0, 6)
            var234.DefinitionId = "FaceControlsEditorCallout"
            var234.LocationId = "FaceControlsEditorButton"
            var230.TeachingCallout = var1.createElement(var13, var234)
            var208.Label = var1.createElement("TextLabel", var212, var230)
            local var0 = var1.createElement(var3, var196, var208)
         end
      end
      var191.FaceControlsEditorButton = var192
      local var1 = var1.ShowFaceControlsEditorPanel
      if var1 then
         if var4.showFaceControlsEditorPanel then
            local var249 = {}
            var249.RootInstance = var1.RootInstance
            var249.FaceControlsEditorEnabled = var1.FaceControlsEditorEnabled
            var249.ShowFaceControlsEditorPanel = var1.ShowFaceControlsEditorPanel
            var249.SelectedTrack = arg1.getLastSelectedTrack()
            var249.SetSelectedTracks = var1.SetSelectedTracks
            var249.ToggleFaceControlsEditorEnabled = arg1.toggleFaceControlsEditorEnabledHandler
            var249.SetShowFaceControlsEditorPanel = var1.SetShowFaceControlsEditorPanel
            var249.SetFaceControlsEditorEnabled = var1.SetFaceControlsEditorEnabled
            local var0 = var1.createElement(var6, var249)
         end
      end
      var191.FaceControlsEditorWindow = var1
      local var2 = var1.createElement("Frame", var177, var191)
   end
   return var5
end

fun8 = var4.withContext
local var259 = {}
var259.Stylizer = var4.Stylizer
var259.Localization = var4.Localization
var259.Analytics = var4.Analytics
var15 = fun8(var259)(var15)
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
      local var280 = {}
      var280.showMenu = true
      arg1:setState(var280)
   end
   
   function var0.SetFaceControlsEditorEnabled()
      local var284 = {}
      var284.showMenu = false
      arg1:setState(var284)
   end
   
   function var0.ToggleFaceControlsEditorEnabled(arg1)
      local var289 = {}
      var289.showFaceControlsEditorPanel = arg1
      arg1:setState(var289)
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
end)(var15)
