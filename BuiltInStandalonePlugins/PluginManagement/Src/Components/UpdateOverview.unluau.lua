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
local var43 = {}
var43.LayoutOrder = 1
var43.data = nil
var13.defaultProps = var43
function var13.init(arg1)
   local var0 = arg1.props
   local var1 = var0.plugin
   local var2 = var0.updateAvailable
   local var3 = tostring(var0.data.assetId)
   local var54 = {}
   var54.checked = var0.data.autoUpdateEnabled
   var54.lastModified = var0.data.updated
   arg1.state = var54
   function arg1.onClick()
      local var66 = arg1
      local var0 = var66.state.checked
      var66 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var66, var0)
      local var73 = {}
      var73.checked = var0
      var73.lastModified = var0.data.updated
      arg1:setState(var73)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var100 = {}
   var100.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var100.LayoutOrder = var0.LayoutOrder
   var100.Layout = Enum.FillDirection.Horizontal
   var100.Position = UDim2.fromOffset(0, 0)
   var100.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var100.Spacing = 10
   var100.Style = "Box"
   local var116 = {}
   local var120 = {}
   var120.AutomaticSize = Enum.AutomaticSize.XY
   var120.Layout = Enum.FillDirection.Horizontal
   var120.LayoutOrder = 1
   var120.Spacing = 10
   var120.Style = "Box"
   local var126 = {}
   local var130 = {}
   var130.AutomaticSize = Enum.AutomaticSize.XY
   var130.Checked = arg1.state.checked
   var130.Disabled = false
   var130.Font = var2.Font
   var130.LayoutOrder = 1
   var130.OnClick = arg1.onClick
   var126.UpdateCheckbox = var1.createElement(var9, var130)
   local var142 = {}
   var142.AutomaticSize = Enum.AutomaticSize.XY
   var142.Font = var2.Font
   var142.LayoutOrder = 2
   var142.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var142.TextSize = 16
   var142.TextXAlignment = Enum.TextXAlignment.Left
   var126.UpdateText = var1.createElement(var10, var142)
   var116.UpdatePane = var1.createElement(var8, var120, var126)
   local var157 = {}
   var157.DominantAxis = Enum.DominantAxis.Height
   var157.LayoutOrder = 2
   var157.Style = var2.Separator
   var116.Separator = var1.createElement(var11, var157)
   local var165 = {}
   var165.Font = var2.Font
   var165.LayoutOrder = 3
   var165.Size = UDim2.fromScale(0.5, 1)
   local var174 = {}
   var174.date = arg1.state.lastModified
   var165.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var174)
   var165.TextSize = 16
   var165.TextXAlignment = Enum.TextXAlignment.Left
   var116.LastUpdatedText = var1.createElement(var10, var165)
   return var1.createElement(var8, var100, var116)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var100 = {}
   var100.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var100.LayoutOrder = var0.LayoutOrder
   var100.Layout = Enum.FillDirection.Horizontal
   var100.Position = UDim2.fromOffset(0, 0)
   var100.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var100.Spacing = 10
   var100.Style = "Box"
   local var116 = {}
   local var120 = {}
   var120.AutomaticSize = Enum.AutomaticSize.XY
   var120.Layout = Enum.FillDirection.Horizontal
   var120.LayoutOrder = 1
   var120.Spacing = 10
   var120.Style = "Box"
   local var126 = {}
   local var130 = {}
   var130.AutomaticSize = Enum.AutomaticSize.XY
   var130.Checked = arg1.state.checked
   var130.Disabled = false
   var130.Font = var2.Font
   var130.LayoutOrder = 1
   var130.OnClick = arg1.onClick
   var126.UpdateCheckbox = var1.createElement(var9, var130)
   local var142 = {}
   var142.AutomaticSize = Enum.AutomaticSize.XY
   var142.Font = var2.Font
   var142.LayoutOrder = 2
   var142.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var142.TextSize = 16
   var142.TextXAlignment = Enum.TextXAlignment.Left
   var126.UpdateText = var1.createElement(var10, var142)
   var116.UpdatePane = var1.createElement(var8, var120, var126)
   local var157 = {}
   var157.DominantAxis = Enum.DominantAxis.Height
   var157.LayoutOrder = 2
   var157.Style = var2.Separator
   var116.Separator = var1.createElement(var11, var157)
   local var165 = {}
   var165.Font = var2.Font
   var165.LayoutOrder = 3
   var165.Size = UDim2.fromScale(0.5, 1)
   local var174 = {}
   var174.date = arg1.state.lastModified
   var165.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var174)
   var165.TextSize = 16
   var165.TextXAlignment = Enum.TextXAlignment.Left
   var116.LastUpdatedText = var1.createElement(var10, var165)
   return var1.createElement(var8, var100, var116)
end

fun2 = var5.withContext
local var183 = {}
var183.Analytics = var5.Analytics
var183.Localization = var5.Localization
var183.Plugin = var5.Plugin
var183.Stylizer = var5.Stylizer
var13 = fun2(var183)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.UpdatePlugin()
      local var200 = arg1
      local var0 = var200.state.checked
      var200 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var200, var0)
      local var207 = {}
      var207.checked = var0
      var207.lastModified = var0.data.updated
      arg1:setState(var207)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
   return var0
end)(var13)
