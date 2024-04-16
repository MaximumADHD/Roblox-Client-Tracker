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
   local var77 = {}
   var77.showMenu = false
   var77.showFaceControlsEditorPanel = false
   arg1.state = var77
   function arg1.showMenu()
      local var81 = {}
      var81.showMenu = true
      arg1:setState(var81)
   end
   
   function arg1.hideMenu()
      local var85 = {}
      var85.showMenu = false
      arg1:setState(var85)
   end
   
   function arg1.setShowFaceControlsEditorPanel(arg1)
      local var90 = {}
      var90.showFaceControlsEditorPanel = arg1
      arg1:setState(var90)
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
            local var118 = {}
            var118.showMenu = true
            arg1:setState(var118)
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
      local var160 = {}
      var160.Position = var1.Position
      var160.Size = UDim2.new(0, var16(var0:getText("Title", "FACE"), var2.ikTheme.textSize, var2.font, Vector2.new(1000, 1000)).X + 10, 0, 18)
      var160.BackgroundTransparency = 1
      var160.AnchorPoint = Vector2.new(0, 0.5)
      var160.LayoutOrder = 2
      local var174 = {}
      local var175 = var1.RootInstance
      if var175 then
         var175 = var5.canUseFaceControlsEditor(var1.RootInstance)
         if var175 then
            local var179 = {}
            if var4.showFaceControlsEditorPanel then
               local var0 = var3.FaceControlsEditorActive or var3.FaceControlsEditorDefault
            end
            var179.Style = var3.FaceControlsEditorDefault
            var179.Size = UDim2.new(1, 0, 1, 0)
            var179.OnClick = var1.ToggleShowFaceControlsEditorPanel
            local var191 = {}
            local var195 = {}
            var195.BackgroundTransparency = 1
            var195.Size = UDim2.new(1, 0, 1, 0)
            var195.TextYAlignment = Enum.TextYAlignment.Center
            var195.TextSize = var2.ikTheme.textSize
            var195.Text = var0:getText("Title", "FACE")
            var195.Font = var2.font
            var195.TextColor3 = var2.ikTheme.textColor
            local var213 = {}
            local var217 = {}
            var217.Offset = Vector2.new(0, 6)
            var217.DefinitionId = "FaceControlsEditorCallout"
            var217.LocationId = "FaceControlsEditorButton"
            var213.TeachingCallout = var1.createElement(var13, var217)
            var191.Label = var1.createElement("TextLabel", var195, var213)
            local var0 = var1.createElement(var3, var179, var191)
         end
      end
      var174.FaceControlsEditorButton = var175
      local var1 = var1.ShowFaceControlsEditorPanel
      if var1 then
         if var4.showFaceControlsEditorPanel then
            local var232 = {}
            var232.RootInstance = var1.RootInstance
            var232.FaceControlsEditorEnabled = var1.FaceControlsEditorEnabled
            var232.ShowFaceControlsEditorPanel = var1.ShowFaceControlsEditorPanel
            var232.SelectedTrack = arg1.getLastSelectedTrack()
            var232.SetSelectedTracks = var1.SetSelectedTracks
            var232.ToggleFaceControlsEditorEnabled = arg1.toggleFaceControlsEditorEnabledHandler
            var232.SetShowFaceControlsEditorPanel = var1.SetShowFaceControlsEditorPanel
            var232.SetFaceControlsEditorEnabled = var1.SetFaceControlsEditorEnabled
            local var0 = var1.createElement(var6, var232)
         end
      end
      var174.FaceControlsEditorWindow = var1
      local var2 = var1.createElement("Frame", var160, var174)
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
      local var160 = {}
      var160.Position = var1.Position
      var160.Size = UDim2.new(0, var16(var0:getText("Title", "FACE"), var2.ikTheme.textSize, var2.font, Vector2.new(1000, 1000)).X + 10, 0, 18)
      var160.BackgroundTransparency = 1
      var160.AnchorPoint = Vector2.new(0, 0.5)
      var160.LayoutOrder = 2
      local var174 = {}
      local var175 = var1.RootInstance
      if var175 then
         var175 = var5.canUseFaceControlsEditor(var1.RootInstance)
         if var175 then
            local var179 = {}
            if var4.showFaceControlsEditorPanel then
               local var0 = var3.FaceControlsEditorActive or var3.FaceControlsEditorDefault
            end
            var179.Style = var3.FaceControlsEditorDefault
            var179.Size = UDim2.new(1, 0, 1, 0)
            var179.OnClick = var1.ToggleShowFaceControlsEditorPanel
            local var191 = {}
            local var195 = {}
            var195.BackgroundTransparency = 1
            var195.Size = UDim2.new(1, 0, 1, 0)
            var195.TextYAlignment = Enum.TextYAlignment.Center
            var195.TextSize = var2.ikTheme.textSize
            var195.Text = var0:getText("Title", "FACE")
            var195.Font = var2.font
            var195.TextColor3 = var2.ikTheme.textColor
            local var213 = {}
            local var217 = {}
            var217.Offset = Vector2.new(0, 6)
            var217.DefinitionId = "FaceControlsEditorCallout"
            var217.LocationId = "FaceControlsEditorButton"
            var213.TeachingCallout = var1.createElement(var13, var217)
            var191.Label = var1.createElement("TextLabel", var195, var213)
            local var0 = var1.createElement(var3, var179, var191)
         end
      end
      var174.FaceControlsEditorButton = var175
      local var1 = var1.ShowFaceControlsEditorPanel
      if var1 then
         if var4.showFaceControlsEditorPanel then
            local var232 = {}
            var232.RootInstance = var1.RootInstance
            var232.FaceControlsEditorEnabled = var1.FaceControlsEditorEnabled
            var232.ShowFaceControlsEditorPanel = var1.ShowFaceControlsEditorPanel
            var232.SelectedTrack = arg1.getLastSelectedTrack()
            var232.SetSelectedTracks = var1.SetSelectedTracks
            var232.ToggleFaceControlsEditorEnabled = arg1.toggleFaceControlsEditorEnabledHandler
            var232.SetShowFaceControlsEditorPanel = var1.SetShowFaceControlsEditorPanel
            var232.SetFaceControlsEditorEnabled = var1.SetFaceControlsEditorEnabled
            local var0 = var1.createElement(var6, var232)
         end
      end
      var174.FaceControlsEditorWindow = var1
      local var2 = var1.createElement("Frame", var160, var174)
   end
   return var5
end

fun8 = var4.withContext
local var242 = {}
var242.Stylizer = var4.Stylizer
var242.Localization = var4.Localization
var242.Analytics = var4.Analytics
var15 = fun8(var242)(var15)
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
      local var263 = {}
      var263.showMenu = true
      arg1:setState(var263)
   end
   
   function var0.SetFaceControlsEditorEnabled()
      local var267 = {}
      var267.showMenu = false
      arg1:setState(var267)
   end
   
   function var0.ToggleFaceControlsEditorEnabled(arg1)
      local var272 = {}
      var272.showFaceControlsEditorPanel = arg1
      arg1:setState(var272)
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
