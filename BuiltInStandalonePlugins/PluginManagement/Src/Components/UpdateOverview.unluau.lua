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
local var240 = {}
var240.LayoutOrder = 1
var240.data = nil
var13.defaultProps = var240
function var13.init(arg1)
   local var0 = arg1.props
   local var1 = var0.plugin
   local var2 = var0.updateAvailable
   local var3 = tostring(var0.data.assetId)
   local var251 = {}
   var251.checked = var0.data.autoUpdateEnabled
   var251.lastModified = var0.data.updated
   arg1.state = var251
   function arg1.onClick()
      local var263 = arg1
      local var0 = var263.state.checked
      var263 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var263, var0)
      local var270 = {}
      var270.checked = var0
      var270.lastModified = var0.data.updated
      arg1:setState(var270)
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
   local var297 = {}
   var297.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var297.LayoutOrder = var0.LayoutOrder
   var297.Layout = Enum.FillDirection.Horizontal
   var297.Position = UDim2.fromOffset(0, 0)
   var297.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var297.Spacing = 10
   var297.Style = "Box"
   local var313 = {}
   local var317 = {}
   var317.AutomaticSize = Enum.AutomaticSize.XY
   var317.Layout = Enum.FillDirection.Horizontal
   var317.LayoutOrder = 1
   var317.Spacing = 10
   var317.Style = "Box"
   local var323 = {}
   local var327 = {}
   var327.AutomaticSize = Enum.AutomaticSize.XY
   var327.Checked = arg1.state.checked
   var327.Disabled = false
   var327.Font = var2.Font
   var327.LayoutOrder = 1
   var327.OnClick = arg1.onClick
   var323.UpdateCheckbox = var1.createElement(var9, var327)
   local var339 = {}
   var339.AutomaticSize = Enum.AutomaticSize.XY
   var339.Font = var2.Font
   var339.LayoutOrder = 2
   var339.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var339.TextSize = 16
   var339.TextXAlignment = Enum.TextXAlignment.Left
   var323.UpdateText = var1.createElement(var10, var339)
   var313.UpdatePane = var1.createElement(var8, var317, var323)
   local var354 = {}
   var354.DominantAxis = Enum.DominantAxis.Height
   var354.LayoutOrder = 2
   var354.Style = var2.Separator
   var313.Separator = var1.createElement(var11, var354)
   local var362 = {}
   var362.Font = var2.Font
   var362.LayoutOrder = 3
   var362.Size = UDim2.fromScale(0.5, 1)
   local var371 = {}
   var371.date = arg1.state.lastModified
   var362.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var371)
   var362.TextSize = 16
   var362.TextXAlignment = Enum.TextXAlignment.Left
   var313.LastUpdatedText = var1.createElement(var10, var362)
   return var1.createElement(var8, var297, var313)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var297 = {}
   var297.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var297.LayoutOrder = var0.LayoutOrder
   var297.Layout = Enum.FillDirection.Horizontal
   var297.Position = UDim2.fromOffset(0, 0)
   var297.Size = UDim2.new(1, 0, 0, var4.PLUGIN_UPDATE_HEIGHT)
   var297.Spacing = 10
   var297.Style = "Box"
   local var313 = {}
   local var317 = {}
   var317.AutomaticSize = Enum.AutomaticSize.XY
   var317.Layout = Enum.FillDirection.Horizontal
   var317.LayoutOrder = 1
   var317.Spacing = 10
   var317.Style = "Box"
   local var323 = {}
   local var327 = {}
   var327.AutomaticSize = Enum.AutomaticSize.XY
   var327.Checked = arg1.state.checked
   var327.Disabled = false
   var327.Font = var2.Font
   var327.LayoutOrder = 1
   var327.OnClick = arg1.onClick
   var323.UpdateCheckbox = var1.createElement(var9, var327)
   local var339 = {}
   var339.AutomaticSize = Enum.AutomaticSize.XY
   var339.Font = var2.Font
   var339.LayoutOrder = 2
   var339.Text = var1:getText("PluginEntry", "AutoUpdateText")
   var339.TextSize = 16
   var339.TextXAlignment = Enum.TextXAlignment.Left
   var323.UpdateText = var1.createElement(var10, var339)
   var313.UpdatePane = var1.createElement(var8, var317, var323)
   local var354 = {}
   var354.DominantAxis = Enum.DominantAxis.Height
   var354.LayoutOrder = 2
   var354.Style = var2.Separator
   var313.Separator = var1.createElement(var11, var354)
   local var362 = {}
   var362.Font = var2.Font
   var362.LayoutOrder = 3
   var362.Size = UDim2.fromScale(0.5, 1)
   local var371 = {}
   var371.date = arg1.state.lastModified
   var362.Text = var1:getText("PluginEntry", "AutoUpdateEntry", var371)
   var362.TextSize = 16
   var362.TextXAlignment = Enum.TextXAlignment.Left
   var313.LastUpdatedText = var1.createElement(var10, var362)
   return var1.createElement(var8, var297, var313)
end

fun9 = var5.withContext
local var380 = {}
var380.Analytics = var5.Analytics
var380.Localization = var5.Localization
var380.Plugin = var5.Plugin
var380.Stylizer = var5.Stylizer
var13 = fun9(var380)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.UpdatePlugin()
      local var397 = arg1
      local var0 = var397.state.checked
      var397 = tonumber(var3)
      game:GetService("PluginManagementService"):SetAutoUpdate(var397, var0)
      local var404 = {}
      var404.checked = var0
      var404.lastModified = var0.data.updated
      arg1:setState(var404)
      if var0 then
         if var2 then
            var0.Analytics:report("TryUpdatePlugin", var0.data.assetId)
            var0.UpdatePlugin(var0.data, var0.Analytics)
         end
      end
   end
   
   return var0
end)(var13)
