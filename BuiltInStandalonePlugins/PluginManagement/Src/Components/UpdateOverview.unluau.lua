-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.FitFrame)
local var4 = require(var0.Src.Util.Constants)
local var5 = var2.ContextServices
local var6 = var2.Util.deepCopy
local var7 = var2.UI
local var8 = var7.Pane
local var9 = var7.Checkbox
local var10 = var7.TextLabel
local var11 = var7.Separator
local var12 = require(var0.Src.Thunks.UpdatePlugin)
local var13 = var1.PureComponent:extend("UpdateOverview")
local var428 = {}
var428.LayoutOrder = 1
var428.data = nil
var13.defaultProps = var428
function var13.init(arg1)
   local var0 = arg1.props
   local var1 = var0.plugin
   local var2 = var0.updateAvailable
   local var3 = tostring(var0.data.assetId)
   local var439 = {}
   var439.checked = var0.data.autoUpdateEnabled
   var439.lastModified = var0.data.updated
   arg1.state = var439
   function arg1.onClick()
      local var451 = arg1
      local var0 = var451.state.checked
      var451 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var451, var0)
      local var458 = {}
      var458.checked = var0
      var458.lastModified = var0.data.updated
      arg1:setState(var458)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
end

local function fun14(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var485 = {}
   var485.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var485.LayoutOrder = var0.LayoutOrder
   var485.Layout = Enum.FillDirection.Horizontal
   var485.Position = UDim2.fromOffset(0, 0)
   var485.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var485.Spacing = 10
   var485.Style = "Box"
   local var501 = {}
   local var505 = {}
   var505.AutomaticSize = Enum.AutomaticSize.XY
   var505.Layout = Enum.FillDirection.Horizontal
   var505.LayoutOrder = 1
   var505.Spacing = 10
   var505.Style = "Box"
   local var511 = {}
   local var515 = {}
   var515.AutomaticSize = Enum.AutomaticSize.XY
   var515.Checked = arg1.state.checked
   var515.Disabled = false
   var515.Font = var2.Font
   var515.LayoutOrder = 1
   var515.OnClick = arg1.onClick
   var511.UpdateCheckbox = var1.createElement(var9, var515)
   local var527 = {}
   var527.AutomaticSize = Enum.AutomaticSize.XY
   var527.Font = var2.Font
   var527.LayoutOrder = 2
   var527.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var527.TextSize = 16
   var527.TextXAlignment = Enum.TextXAlignment.Left
   var511.UpdateText = var1.createElement(var10, var527)
   var501.UpdatePane = var1.createElement(var8, var505, var511)
   local var542 = {}
   var542.DominantAxis = Enum.DominantAxis.Height
   var542.LayoutOrder = 2
   var542.Style = var2.Separator
   var501.Separator = var1.createElement(var11, var542)
   local var550 = {}
   var550.Font = var2.Font
   var550.LayoutOrder = 3
   var550.Size = UDim2.fromScale(0.5, 1)
   local var559 = {}
   var559.date = arg1.state.lastModified
   var550.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var559)
   var550.TextSize = 16
   var550.TextXAlignment = Enum.TextXAlignment.Left
   var501.LastUpdatedText = var1.createElement(var10, var550)
   return var1.createElement(var8, var485, var501)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var485 = {}
   var485.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var485.LayoutOrder = var0.LayoutOrder
   var485.Layout = Enum.FillDirection.Horizontal
   var485.Position = UDim2.fromOffset(0, 0)
   var485.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var485.Spacing = 10
   var485.Style = "Box"
   local var501 = {}
   local var505 = {}
   var505.AutomaticSize = Enum.AutomaticSize.XY
   var505.Layout = Enum.FillDirection.Horizontal
   var505.LayoutOrder = 1
   var505.Spacing = 10
   var505.Style = "Box"
   local var511 = {}
   local var515 = {}
   var515.AutomaticSize = Enum.AutomaticSize.XY
   var515.Checked = arg1.state.checked
   var515.Disabled = false
   var515.Font = var2.Font
   var515.LayoutOrder = 1
   var515.OnClick = arg1.onClick
   var511.UpdateCheckbox = var1.createElement(var9, var515)
   local var527 = {}
   var527.AutomaticSize = Enum.AutomaticSize.XY
   var527.Font = var2.Font
   var527.LayoutOrder = 2
   var527.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var527.TextSize = 16
   var527.TextXAlignment = Enum.TextXAlignment.Left
   var511.UpdateText = var1.createElement(var10, var527)
   var501.UpdatePane = var1.createElement(var8, var505, var511)
   local var542 = {}
   var542.DominantAxis = Enum.DominantAxis.Height
   var542.LayoutOrder = 2
   var542.Style = var2.Separator
   var501.Separator = var1.createElement(var11, var542)
   local var550 = {}
   var550.Font = var2.Font
   var550.LayoutOrder = 3
   var550.Size = UDim2.fromScale(0.5, 1)
   local var559 = {}
   var559.date = arg1.state.lastModified
   var550.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var559)
   var550.TextSize = 16
   var550.TextXAlignment = Enum.TextXAlignment.Left
   var501.LastUpdatedText = var1.createElement(var10, var550)
   return var1.createElement(var8, var485, var501)
end

fun14 = var5.withContext
local var568 = {}
var568.Analytics = var5.Analytics
var568.Localization = var5.Localization
var568.Plugin = var5.Plugin
var568.Stylizer = var5.Stylizer
var13 = fun14(var568)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.UpdatePlugin()
      local var585 = arg1
      local var0 = var585.state.checked
      var585 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var585, var0)
      local var592 = {}
      var592.checked = var0
      var592.lastModified = var0.data.updated
      arg1:setState(var592)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
   return var0
end)(var13)
