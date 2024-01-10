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
   local var68 = {}
   var68.showMenu = false
   var68.showFaceControlsEditorPanel = false
   arg1.state = var68
   function arg1.showMenu()
      local var72 = {}
      var72.showMenu = true
      arg1:setState(var72)
   end
   
   function arg1.hideMenu()
      local var76 = {}
      var76.showMenu = false
      arg1:setState(var76)
   end
   
   function arg1.setShowFaceControlsEditorPanel(arg1)
      local var81 = {}
      var81.showFaceControlsEditorPanel = arg1
      arg1:setState(var81)
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
            local var109 = {}
            var109.showMenu = true
            arg1:setState(var109)
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
      local var151 = {}
      var151.Position = var1.Position
      var151.Size = UDim2.new(0, var14(var0:getText("Title", "FACE"), var2.ikTheme.textSize, var2.font, Vector2.new(1000, 1000)).X + 10, 0, 18)
      var151.BackgroundTransparency = 1
      var151.AnchorPoint = Vector2.new(0, 0.5)
      var151.LayoutOrder = 2
      local var165 = {}
      local var166 = var1.RootInstance
      if var166 then
         var166 = var5.canUseFaceControlsEditor(var1.RootInstance)
         if var166 then
            local var170 = {}
            if var4.showFaceControlsEditorPanel then
               local var0 = var3.FaceControlsEditorActive or var3.FaceControlsEditorDefault
            end
            var170.Style = var3.FaceControlsEditorDefault
            var170.Size = UDim2.new(1, 0, 1, 0)
            var170.OnClick = var1.ToggleShowFaceControlsEditorPanel
            local var182 = {}
            local var186 = {}
            var186.BackgroundTransparency = 1
            var186.Size = UDim2.new(1, 0, 1, 0)
            var186.TextYAlignment = Enum.TextYAlignment.Center
            var186.TextSize = var2.ikTheme.textSize
            var186.Text = var0:getText("Title", "FACE")
            var186.Font = var2.font
            var186.TextColor3 = var2.ikTheme.textColor
            local var204 = {}
            local var208 = {}
            var208.Offset = Vector2.new(0, 6)
            var208.DefinitionId = "FaceControlsEditorCallout"
            var208.LocationId = "FaceControlsEditorButton"
            var204.TeachingCallout = var1.createElement(var12, var208)
            var182.Label = var1.createElement("TextLabel", var186, var204)
            local var0 = var1.createElement(var3, var170, var182)
         end
      end
      var165.FaceControlsEditorButton = var166
      local var1 = var1.ShowFaceControlsEditorPanel
      if var1 then
         if var4.showFaceControlsEditorPanel then
            local var223 = {}
            var223.RootInstance = var1.RootInstance
            var223.FaceControlsEditorEnabled = var1.FaceControlsEditorEnabled
            var223.ShowFaceControlsEditorPanel = var1.ShowFaceControlsEditorPanel
            var223.SelectedTrack = arg1.getLastSelectedTrack()
            var223.SetSelectedTracks = var1.SetSelectedTracks
            var223.ToggleFaceControlsEditorEnabled = arg1.toggleFaceControlsEditorEnabledHandler
            var223.SetShowFaceControlsEditorPanel = var1.SetShowFaceControlsEditorPanel
            var223.SetFaceControlsEditorEnabled = var1.SetFaceControlsEditorEnabled
            local var0 = var1.createElement(var6, var223)
         end
      end
      var165.FaceControlsEditorWindow = var1
      local var2 = var1.createElement("Frame", var151, var165)
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
      local var151 = {}
      var151.Position = var1.Position
      var151.Size = UDim2.new(0, var14(var0:getText("Title", "FACE"), var2.ikTheme.textSize, var2.font, Vector2.new(1000, 1000)).X + 10, 0, 18)
      var151.BackgroundTransparency = 1
      var151.AnchorPoint = Vector2.new(0, 0.5)
      var151.LayoutOrder = 2
      local var165 = {}
      local var166 = var1.RootInstance
      if var166 then
         var166 = var5.canUseFaceControlsEditor(var1.RootInstance)
         if var166 then
            local var170 = {}
            if var4.showFaceControlsEditorPanel then
               local var0 = var3.FaceControlsEditorActive or var3.FaceControlsEditorDefault
            end
            var170.Style = var3.FaceControlsEditorDefault
            var170.Size = UDim2.new(1, 0, 1, 0)
            var170.OnClick = var1.ToggleShowFaceControlsEditorPanel
            local var182 = {}
            local var186 = {}
            var186.BackgroundTransparency = 1
            var186.Size = UDim2.new(1, 0, 1, 0)
            var186.TextYAlignment = Enum.TextYAlignment.Center
            var186.TextSize = var2.ikTheme.textSize
            var186.Text = var0:getText("Title", "FACE")
            var186.Font = var2.font
            var186.TextColor3 = var2.ikTheme.textColor
            local var204 = {}
            local var208 = {}
            var208.Offset = Vector2.new(0, 6)
            var208.DefinitionId = "FaceControlsEditorCallout"
            var208.LocationId = "FaceControlsEditorButton"
            var204.TeachingCallout = var1.createElement(var12, var208)
            var182.Label = var1.createElement("TextLabel", var186, var204)
            local var0 = var1.createElement(var3, var170, var182)
         end
      end
      var165.FaceControlsEditorButton = var166
      local var1 = var1.ShowFaceControlsEditorPanel
      if var1 then
         if var4.showFaceControlsEditorPanel then
            local var223 = {}
            var223.RootInstance = var1.RootInstance
            var223.FaceControlsEditorEnabled = var1.FaceControlsEditorEnabled
            var223.ShowFaceControlsEditorPanel = var1.ShowFaceControlsEditorPanel
            var223.SelectedTrack = arg1.getLastSelectedTrack()
            var223.SetSelectedTracks = var1.SetSelectedTracks
            var223.ToggleFaceControlsEditorEnabled = arg1.toggleFaceControlsEditorEnabledHandler
            var223.SetShowFaceControlsEditorPanel = var1.SetShowFaceControlsEditorPanel
            var223.SetFaceControlsEditorEnabled = var1.SetFaceControlsEditorEnabled
            local var0 = var1.createElement(var6, var223)
         end
      end
      var165.FaceControlsEditorWindow = var1
      local var2 = var1.createElement("Frame", var151, var165)
   end
   return var5
end

fun8 = var4.withContext
local var233 = {}
var233.Stylizer = var4.Stylizer
var233.Localization = var4.Localization
var233.Analytics = var4.Analytics
var13 = fun8(var233)(var13)
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
      local var254 = {}
      var254.showMenu = true
      arg1:setState(var254)
   end
   
   function var0.SetFaceControlsEditorEnabled()
      local var258 = {}
      var258.showMenu = false
      arg1:setState(var258)
   end
   
   function var0.ToggleFaceControlsEditorEnabled(arg1)
      local var263 = {}
      var263.showFaceControlsEditorPanel = arg1
      arg1:setState(var263)
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
