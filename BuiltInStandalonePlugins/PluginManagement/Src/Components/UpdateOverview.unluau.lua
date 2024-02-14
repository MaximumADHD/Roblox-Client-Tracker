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
local var299 = {}
var299.LayoutOrder = 1
var299.data = nil
var13.defaultProps = var299
function var13.init(arg1)
   local var0 = arg1.props
   local var1 = var0.plugin
   local var2 = var0.updateAvailable
   local var3 = tostring(var0.data.assetId)
   local var310 = {}
   var310.checked = var0.data.autoUpdateEnabled
   var310.lastModified = var0.data.updated
   arg1.state = var310
   function arg1.onClick()
      local var322 = arg1
      local var0 = var322.state.checked
      var322 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var322, var0)
      local var329 = {}
      var329.checked = var0
      var329.lastModified = var0.data.updated
      arg1:setState(var329)
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
   local var356 = {}
   var356.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var356.LayoutOrder = var0.LayoutOrder
   var356.Layout = Enum.FillDirection.Horizontal
   var356.Position = UDim2.fromOffset(0, 0)
   var356.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var356.Spacing = 10
   var356.Style = "Box"
   local var372 = {}
   local var376 = {}
   var376.AutomaticSize = Enum.AutomaticSize.XY
   var376.Layout = Enum.FillDirection.Horizontal
   var376.LayoutOrder = 1
   var376.Spacing = 10
   var376.Style = "Box"
   local var382 = {}
   local var386 = {}
   var386.AutomaticSize = Enum.AutomaticSize.XY
   var386.Checked = arg1.state.checked
   var386.Disabled = false
   var386.Font = var2.Font
   var386.LayoutOrder = 1
   var386.OnClick = arg1.onClick
   var382.UpdateCheckbox = var1.createElement(var9, var386)
   local var398 = {}
   var398.AutomaticSize = Enum.AutomaticSize.XY
   var398.Font = var2.Font
   var398.LayoutOrder = 2
   var398.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var398.TextSize = 16
   var398.TextXAlignment = Enum.TextXAlignment.Left
   var382.UpdateText = var1.createElement(var10, var398)
   var372.UpdatePane = var1.createElement(var8, var376, var382)
   local var413 = {}
   var413.DominantAxis = Enum.DominantAxis.Height
   var413.LayoutOrder = 2
   var413.Style = var2.Separator
   var372.Separator = var1.createElement(var11, var413)
   local var421 = {}
   var421.Font = var2.Font
   var421.LayoutOrder = 3
   var421.Size = UDim2.fromScale(0.5, 1)
   local var430 = {}
   var430.date = arg1.state.lastModified
   var421.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var430)
   var421.TextSize = 16
   var421.TextXAlignment = Enum.TextXAlignment.Left
   var372.LastUpdatedText = var1.createElement(var10, var421)
   return var1.createElement(var8, var356, var372)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var356 = {}
   var356.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var356.LayoutOrder = var0.LayoutOrder
   var356.Layout = Enum.FillDirection.Horizontal
   var356.Position = UDim2.fromOffset(0, 0)
   var356.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var356.Spacing = 10
   var356.Style = "Box"
   local var372 = {}
   local var376 = {}
   var376.AutomaticSize = Enum.AutomaticSize.XY
   var376.Layout = Enum.FillDirection.Horizontal
   var376.LayoutOrder = 1
   var376.Spacing = 10
   var376.Style = "Box"
   local var382 = {}
   local var386 = {}
   var386.AutomaticSize = Enum.AutomaticSize.XY
   var386.Checked = arg1.state.checked
   var386.Disabled = false
   var386.Font = var2.Font
   var386.LayoutOrder = 1
   var386.OnClick = arg1.onClick
   var382.UpdateCheckbox = var1.createElement(var9, var386)
   local var398 = {}
   var398.AutomaticSize = Enum.AutomaticSize.XY
   var398.Font = var2.Font
   var398.LayoutOrder = 2
   var398.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var398.TextSize = 16
   var398.TextXAlignment = Enum.TextXAlignment.Left
   var382.UpdateText = var1.createElement(var10, var398)
   var372.UpdatePane = var1.createElement(var8, var376, var382)
   local var413 = {}
   var413.DominantAxis = Enum.DominantAxis.Height
   var413.LayoutOrder = 2
   var413.Style = var2.Separator
   var372.Separator = var1.createElement(var11, var413)
   local var421 = {}
   var421.Font = var2.Font
   var421.LayoutOrder = 3
   var421.Size = UDim2.fromScale(0.5, 1)
   local var430 = {}
   var430.date = arg1.state.lastModified
   var421.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var430)
   var421.TextSize = 16
   var421.TextXAlignment = Enum.TextXAlignment.Left
   var372.LastUpdatedText = var1.createElement(var10, var421)
   return var1.createElement(var8, var356, var372)
end

fun9 = var5.withContext
local var439 = {}
var439.Analytics = var5.Analytics
var439.Localization = var5.Localization
var439.Plugin = var5.Plugin
var439.Stylizer = var5.Stylizer
var13 = fun9(var439)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.UpdatePlugin()
      local var456 = arg1
      local var0 = var456.state.checked
      var456 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var456, var0)
      local var463 = {}
      var463.checked = var0
      var463.lastModified = var0.data.updated
      arg1:setState(var463)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
   return var0
end)(var13)
