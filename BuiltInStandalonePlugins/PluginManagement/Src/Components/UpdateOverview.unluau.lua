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
local var293 = {}
var293.LayoutOrder = 1
var293.data = nil
var13.defaultProps = var293
function var13.init(arg1)
   local var0 = arg1.props
   local var1 = var0.plugin
   local var2 = var0.updateAvailable
   local var3 = tostring(var0.data.assetId)
   local var304 = {}
   var304.checked = var0.data.autoUpdateEnabled
   var304.lastModified = var0.data.updated
   arg1.state = var304
   function arg1.onClick()
      local var316 = arg1
      local var0 = var316.state.checked
      var316 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var316, var0)
      local var323 = {}
      var323.checked = var0
      var323.lastModified = var0.data.updated
      arg1:setState(var323)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
end

local function fun9(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var350 = {}
   var350.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var350.LayoutOrder = var0.LayoutOrder
   var350.Layout = Enum.FillDirection.Horizontal
   var350.Position = UDim2.fromOffset(0, 0)
   var350.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var350.Spacing = 10
   var350.Style = "Box"
   local var366 = {}
   local var370 = {}
   var370.AutomaticSize = Enum.AutomaticSize.XY
   var370.Layout = Enum.FillDirection.Horizontal
   var370.LayoutOrder = 1
   var370.Spacing = 10
   var370.Style = "Box"
   local var376 = {}
   local var380 = {}
   var380.AutomaticSize = Enum.AutomaticSize.XY
   var380.Checked = arg1.state.checked
   var380.Disabled = false
   var380.Font = var2.Font
   var380.LayoutOrder = 1
   var380.OnClick = arg1.onClick
   var376.UpdateCheckbox = var1.createElement(var9, var380)
   local var392 = {}
   var392.AutomaticSize = Enum.AutomaticSize.XY
   var392.Font = var2.Font
   var392.LayoutOrder = 2
   var392.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var392.TextSize = 16
   var392.TextXAlignment = Enum.TextXAlignment.Left
   var376.UpdateText = var1.createElement(var10, var392)
   var366.UpdatePane = var1.createElement(var8, var370, var376)
   local var407 = {}
   var407.DominantAxis = Enum.DominantAxis.Height
   var407.LayoutOrder = 2
   var407.Style = var2.Separator
   var366.Separator = var1.createElement(var11, var407)
   local var415 = {}
   var415.Font = var2.Font
   var415.LayoutOrder = 3
   var415.Size = UDim2.fromScale(0.5, 1)
   local var424 = {}
   var424.date = arg1.state.lastModified
   var415.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var424)
   var415.TextSize = 16
   var415.TextXAlignment = Enum.TextXAlignment.Left
   var366.LastUpdatedText = var1.createElement(var10, var415)
   return var1.createElement(var8, var350, var366)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var350 = {}
   var350.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var350.LayoutOrder = var0.LayoutOrder
   var350.Layout = Enum.FillDirection.Horizontal
   var350.Position = UDim2.fromOffset(0, 0)
   var350.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var350.Spacing = 10
   var350.Style = "Box"
   local var366 = {}
   local var370 = {}
   var370.AutomaticSize = Enum.AutomaticSize.XY
   var370.Layout = Enum.FillDirection.Horizontal
   var370.LayoutOrder = 1
   var370.Spacing = 10
   var370.Style = "Box"
   local var376 = {}
   local var380 = {}
   var380.AutomaticSize = Enum.AutomaticSize.XY
   var380.Checked = arg1.state.checked
   var380.Disabled = false
   var380.Font = var2.Font
   var380.LayoutOrder = 1
   var380.OnClick = arg1.onClick
   var376.UpdateCheckbox = var1.createElement(var9, var380)
   local var392 = {}
   var392.AutomaticSize = Enum.AutomaticSize.XY
   var392.Font = var2.Font
   var392.LayoutOrder = 2
   var392.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var392.TextSize = 16
   var392.TextXAlignment = Enum.TextXAlignment.Left
   var376.UpdateText = var1.createElement(var10, var392)
   var366.UpdatePane = var1.createElement(var8, var370, var376)
   local var407 = {}
   var407.DominantAxis = Enum.DominantAxis.Height
   var407.LayoutOrder = 2
   var407.Style = var2.Separator
   var366.Separator = var1.createElement(var11, var407)
   local var415 = {}
   var415.Font = var2.Font
   var415.LayoutOrder = 3
   var415.Size = UDim2.fromScale(0.5, 1)
   local var424 = {}
   var424.date = arg1.state.lastModified
   var415.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var424)
   var415.TextSize = 16
   var415.TextXAlignment = Enum.TextXAlignment.Left
   var366.LastUpdatedText = var1.createElement(var10, var415)
   return var1.createElement(var8, var350, var366)
end

fun9 = var5.withContext
local var433 = {}
var433.Analytics = var5.Analytics
var433.Localization = var5.Localization
var433.Plugin = var5.Plugin
var433.Stylizer = var5.Stylizer
var13 = fun9(var433)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.UpdatePlugin()
      local var450 = arg1
      local var0 = var450.state.checked
      var450 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var450, var0)
      local var457 = {}
      var457.checked = var0
      var457.lastModified = var0.data.updated
      arg1:setState(var457)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
   return var0
end)(var13)
