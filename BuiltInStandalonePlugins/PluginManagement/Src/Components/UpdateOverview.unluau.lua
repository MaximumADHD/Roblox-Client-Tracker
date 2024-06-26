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
local var441 = {}
var441.LayoutOrder = 1
var441.data = nil
var13.defaultProps = var441
function var13.init(arg1)
   local var0 = arg1.props
   local var1 = var0.plugin
   local var2 = var0.updateAvailable
   local var3 = tostring(var0.data.assetId)
   local var452 = {}
   var452.checked = var0.data.autoUpdateEnabled
   var452.lastModified = var0.data.updated
   arg1.state = var452
   function arg1.onClick()
      local var464 = arg1
      local var0 = var464.state.checked
      var464 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var464, var0)
      local var471 = {}
      var471.checked = var0
      var471.lastModified = var0.data.updated
      arg1:setState(var471)
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
   local var498 = {}
   var498.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var498.LayoutOrder = var0.LayoutOrder
   var498.Layout = Enum.FillDirection.Horizontal
   var498.Position = UDim2.fromOffset(0, 0)
   var498.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var498.Spacing = 10
   var498.Style = "Box"
   local var514 = {}
   local var518 = {}
   var518.AutomaticSize = Enum.AutomaticSize.XY
   var518.Layout = Enum.FillDirection.Horizontal
   var518.LayoutOrder = 1
   var518.Spacing = 10
   var518.Style = "Box"
   local var524 = {}
   local var528 = {}
   var528.AutomaticSize = Enum.AutomaticSize.XY
   var528.Checked = arg1.state.checked
   var528.Disabled = false
   var528.Font = var2.Font
   var528.LayoutOrder = 1
   var528.OnClick = arg1.onClick
   var524.UpdateCheckbox = var1.createElement(var9, var528)
   local var540 = {}
   var540.AutomaticSize = Enum.AutomaticSize.XY
   var540.Font = var2.Font
   var540.LayoutOrder = 2
   var540.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var540.TextSize = 16
   var540.TextXAlignment = Enum.TextXAlignment.Left
   var524.UpdateText = var1.createElement(var10, var540)
   var514.UpdatePane = var1.createElement(var8, var518, var524)
   local var555 = {}
   var555.DominantAxis = Enum.DominantAxis.Height
   var555.LayoutOrder = 2
   var555.Style = var2.Separator
   var514.Separator = var1.createElement(var11, var555)
   local var563 = {}
   var563.Font = var2.Font
   var563.LayoutOrder = 3
   var563.Size = UDim2.fromScale(0.5, 1)
   local var572 = {}
   var572.date = arg1.state.lastModified
   var563.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var572)
   var563.TextSize = 16
   var563.TextXAlignment = Enum.TextXAlignment.Left
   var514.LastUpdatedText = var1.createElement(var10, var563)
   return var1.createElement(var8, var498, var514)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var498 = {}
   var498.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var498.LayoutOrder = var0.LayoutOrder
   var498.Layout = Enum.FillDirection.Horizontal
   var498.Position = UDim2.fromOffset(0, 0)
   var498.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var498.Spacing = 10
   var498.Style = "Box"
   local var514 = {}
   local var518 = {}
   var518.AutomaticSize = Enum.AutomaticSize.XY
   var518.Layout = Enum.FillDirection.Horizontal
   var518.LayoutOrder = 1
   var518.Spacing = 10
   var518.Style = "Box"
   local var524 = {}
   local var528 = {}
   var528.AutomaticSize = Enum.AutomaticSize.XY
   var528.Checked = arg1.state.checked
   var528.Disabled = false
   var528.Font = var2.Font
   var528.LayoutOrder = 1
   var528.OnClick = arg1.onClick
   var524.UpdateCheckbox = var1.createElement(var9, var528)
   local var540 = {}
   var540.AutomaticSize = Enum.AutomaticSize.XY
   var540.Font = var2.Font
   var540.LayoutOrder = 2
   var540.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var540.TextSize = 16
   var540.TextXAlignment = Enum.TextXAlignment.Left
   var524.UpdateText = var1.createElement(var10, var540)
   var514.UpdatePane = var1.createElement(var8, var518, var524)
   local var555 = {}
   var555.DominantAxis = Enum.DominantAxis.Height
   var555.LayoutOrder = 2
   var555.Style = var2.Separator
   var514.Separator = var1.createElement(var11, var555)
   local var563 = {}
   var563.Font = var2.Font
   var563.LayoutOrder = 3
   var563.Size = UDim2.fromScale(0.5, 1)
   local var572 = {}
   var572.date = arg1.state.lastModified
   var563.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var572)
   var563.TextSize = 16
   var563.TextXAlignment = Enum.TextXAlignment.Left
   var514.LastUpdatedText = var1.createElement(var10, var563)
   return var1.createElement(var8, var498, var514)
end

fun14 = var5.withContext
local var581 = {}
var581.Analytics = var5.Analytics
var581.Localization = var5.Localization
var581.Plugin = var5.Plugin
var581.Stylizer = var5.Stylizer
var13 = fun14(var581)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.UpdatePlugin()
      local var598 = arg1
      local var0 = var598.state.checked
      var598 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var598, var0)
      local var605 = {}
      var605.checked = var0
      var605.lastModified = var0.data.updated
      arg1:setState(var605)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
   return var0
end)(var13)
