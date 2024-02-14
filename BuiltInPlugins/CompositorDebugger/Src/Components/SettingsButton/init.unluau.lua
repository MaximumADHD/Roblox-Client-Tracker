-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.Style.Stylizer
local var5 = var0.Src.Actions
local var6 = require(var5.SetActiveLayersFilter)
local var7 = require(var5.SetLayerFilter)
local var8 = require(var0.Src.Util.Constants)
local var9 = var2.UI.showContextMenu
local var10 = require(var0.Src.Types)
local var11 = require(var0.LuaFlags.GetFFlagActiveLayersFilter)
local var12 = var1.PureComponent:extend("SettingsButton")
function var12.init(arg1)
   function arg1.toggleCrossFadeFilter()
      local var0 = arg1.props
      local var1 = var0.LayerFilters
      var1.CrossFade = var1.CrossFade
      var0.SetLayerFilter("CrossFade", var1.CrossFade)
      local var60 = var8.SETTINGS
      var60 = var1
      var0.Plugin:get():SetSetting(var60.LayerFilters, var60)
   end
   
   function arg1.toggleActiveLayersFilter()
      local var0 = arg1.props.ActiveLayersFilter
      local var73 = arg1.props
      var73 = var0
      var73.SetActiveLayersFilter(var73)
      local var76 = var8.SETTINGS
      var76 = var0
      arg1.props.Plugin:get():SetSetting(var76.ActiveLayersFilter, var76)
   end
   
   function arg1.onButtonClicked()
      local var0 = arg1.props
      local var1 = var0.Localization
      local var2 = {}
      local var86 = {}
      var86.Id = "ToggleCrossFade"
      var86.Text = var1:getText("Settings", "ToggleCrossFade")
      var86.Checked = arg1.props.LayerFilters.CrossFade
      local var97 = arg1
      local var98 = var97.toggleCrossFadeFilter
      var86.OnItemClicked = var98
      if var11() then
         local var101 = {}
         var101.Id = "ToggleActiveLayers"
         var101.Text = var1:getText("Settings", "ToggleActiveLayers")
         var101.Checked = arg1.props.ActiveLayersFilter
         var101.OnItemClicked = arg1.toggleActiveLayersFilter
         var98 = var2
         table.insert(var98, var101)
      end
      var98 = var0.Plugin:get()
      var97 = var2
      var9(var98, var97)
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props.Stylizer
   local var120 = {}
   var120.Size = var0.Size
   var120.Position = UDim2.fromScale(1, 0.5)
   var120.AnchorPoint = Vector2.new(1, 0.5)
   var120.BackgroundTransparency = 1
   var120.Image = var0.Image
   var120.ImageColor3 = var0.Color
   var1.Event.Activated = arg1.onButtonClicked
   return var1.createElement("ImageButton", var120)
end

function var12.render(arg1)
   local var0 = arg1.props.Stylizer
   local var120 = {}
   var120.Size = var0.Size
   var120.Position = UDim2.fromScale(1, 0.5)
   var120.AnchorPoint = Vector2.new(1, 0.5)
   var120.BackgroundTransparency = 1
   var120.Image = var0.Image
   var120.ImageColor3 = var0.Color
   var1.Event.Activated = arg1.onButtonClicked
   return var1.createElement("ImageButton", var120)
end

fun4 = var3.withContext
local var138 = {}
var138.Analytics = var3.Analytics
var138.Localization = var3.Localization
var138.Plugin = var3.Plugin
local var142 = var2.Style
var138.Stylizer = var142.Stylizer
var12 = fun4(var138)(var12)
function var142(arg1, arg2)
   local var0 = {}
   var0.ActiveLayersFilter = arg1.Status.ActiveLayersFilter
   var0.LayerFilters = arg1.Status.LayerFilters
   return var0
end

var12 = require(var0.Packages.RoactRodux).connect(var142, function(arg1)
   local var0 = {}
   function var0.SetActiveLayersFilter()
      local var0 = arg1.props
      local var1 = var0.LayerFilters
      var1.CrossFade = var1.CrossFade
      var0.SetLayerFilter("CrossFade", var1.CrossFade)
      local var168 = var8.SETTINGS
      var168 = var1
      var0.Plugin:get():SetSetting(var168.LayerFilters, var168)
   end
   
   function var0.SetLayerFilter()
      local var0 = arg1.props.ActiveLayersFilter
      local var181 = arg1.props
      var181 = var0
      var181.SetActiveLayersFilter(var181)
      local var184 = var8.SETTINGS
      var184 = var0
      arg1.props.Plugin:get():SetSetting(var184.ActiveLayersFilter, var184)
   end
   
   return var0
end)(var12)
return var12
