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
local var1129 = {}
var1129.LayoutOrder = 1
var1129.data = nil
var13.defaultProps = var1129
function var13.init(arg1)
   local var0 = arg1.props
   local var1 = var0.plugin
   local var2 = var0.updateAvailable
   local var3 = tostring(var0.data.assetId)
   local var1140 = {}
   var1140.checked = var0.data.autoUpdateEnabled
   var1140.lastModified = var0.data.updated
   arg1.state = var1140
   function arg1.onClick()
      local var1153 = arg1
      local var0 = var1153.state.checked
      var1153 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var1153, var0)
      local var1160 = {}
      var1160.checked = var0
      var1160.lastModified = var0.data.updated
      arg1:setState(var1160)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
end

local function fun29(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var1207 = {}
   var1207.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1207.LayoutOrder = var0.LayoutOrder
   var1207.Layout = Enum.FillDirection.Horizontal
   var1207.Position = UDim2.fromOffset(0, 0)
   var1207.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var1207.Spacing = 10
   var1207.Style = "Box"
   local var1224 = {}
   local var1228 = {}
   var1228.AutomaticSize = Enum.AutomaticSize.XY
   var1228.Layout = Enum.FillDirection.Horizontal
   var1228.LayoutOrder = 1
   var1228.Spacing = 10
   var1228.Style = "Box"
   local var1234 = {}
   local var1238 = {}
   var1238.AutomaticSize = Enum.AutomaticSize.XY
   var1238.Checked = arg1.state.checked
   var1238.Disabled = false
   var1238.Font = var2.Font
   var1238.LayoutOrder = 1
   var1238.OnClick = arg1.onClick
   var1234.UpdateCheckbox = var1.createElement(var9, var1238)
   local var1251 = {}
   var1251.AutomaticSize = Enum.AutomaticSize.XY
   var1251.Font = var2.Font
   var1251.LayoutOrder = 2
   var1251.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var1251.TextSize = 16
   var1251.TextXAlignment = Enum.TextXAlignment.Left
   var1234.UpdateText = var1.createElement(var10, var1251)
   var1224.UpdatePane = var1.createElement(var8, var1228, var1234)
   local var1273 = {}
   var1273.DominantAxis = Enum.DominantAxis.Height
   var1273.LayoutOrder = 2
   var1273.Style = var2.Separator
   var1224.Separator = var1.createElement(var11, var1273)
   local var1284 = {}
   var1284.Font = var2.Font
   var1284.LayoutOrder = 3
   var1284.Size = UDim2.fromScale(0.5, 1)
   local var1294 = {}
   var1294.date = arg1.state.lastModified
   var1284.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var1294)
   var1284.TextSize = 16
   var1284.TextXAlignment = Enum.TextXAlignment.Left
   var1224.LastUpdatedText = var1.createElement(var10, var1284)
   return var1.createElement(var8, var1207, var1224)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var1207 = {}
   var1207.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1207.LayoutOrder = var0.LayoutOrder
   var1207.Layout = Enum.FillDirection.Horizontal
   var1207.Position = UDim2.fromOffset(0, 0)
   var1207.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var1207.Spacing = 10
   var1207.Style = "Box"
   local var1224 = {}
   local var1228 = {}
   var1228.AutomaticSize = Enum.AutomaticSize.XY
   var1228.Layout = Enum.FillDirection.Horizontal
   var1228.LayoutOrder = 1
   var1228.Spacing = 10
   var1228.Style = "Box"
   local var1234 = {}
   local var1238 = {}
   var1238.AutomaticSize = Enum.AutomaticSize.XY
   var1238.Checked = arg1.state.checked
   var1238.Disabled = false
   var1238.Font = var2.Font
   var1238.LayoutOrder = 1
   var1238.OnClick = arg1.onClick
   var1234.UpdateCheckbox = var1.createElement(var9, var1238)
   local var1251 = {}
   var1251.AutomaticSize = Enum.AutomaticSize.XY
   var1251.Font = var2.Font
   var1251.LayoutOrder = 2
   var1251.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var1251.TextSize = 16
   var1251.TextXAlignment = Enum.TextXAlignment.Left
   var1234.UpdateText = var1.createElement(var10, var1251)
   var1224.UpdatePane = var1.createElement(var8, var1228, var1234)
   local var1273 = {}
   var1273.DominantAxis = Enum.DominantAxis.Height
   var1273.LayoutOrder = 2
   var1273.Style = var2.Separator
   var1224.Separator = var1.createElement(var11, var1273)
   local var1284 = {}
   var1284.Font = var2.Font
   var1284.LayoutOrder = 3
   var1284.Size = UDim2.fromScale(0.5, 1)
   local var1294 = {}
   var1294.date = arg1.state.lastModified
   var1284.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var1294)
   var1284.TextSize = 16
   var1284.TextXAlignment = Enum.TextXAlignment.Left
   var1224.LastUpdatedText = var1.createElement(var10, var1284)
   return var1.createElement(var8, var1207, var1224)
end

fun29 = var5.withContext
local var1304 = {}
var1304.Analytics = var5.Analytics
var1304.Localization = var5.Localization
var1304.Plugin = var5.Plugin
var1304.Stylizer = var5.Stylizer
var13 = fun29(var1304)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.UpdatePlugin()
      local var1324 = arg1
      local var0 = var1324.state.checked
      var1324 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var1324, var0)
      local var1337 = {}
      var1337.checked = var0
      var1337.lastModified = var0.data.updated
      arg1:setState(var1337)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
   return var0
end)(var13)
