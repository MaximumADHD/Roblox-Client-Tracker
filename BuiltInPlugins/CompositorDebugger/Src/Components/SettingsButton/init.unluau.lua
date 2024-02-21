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
local var11 = var1.PureComponent:extend("SettingsButton")
function var11.init(arg1)
   function arg1.toggleCrossFadeFilter()
      local var0 = arg1.props
      local var1 = var0.LayerFilters
      var1.CrossFade = var1.CrossFade
      var0.SetLayerFilter("CrossFade", var1.CrossFade)
      local var56 = var8.SETTINGS
      var56 = var1
      var0.Plugin:get():SetSetting(var56.LayerFilters, var56)
   end
   
   function arg1.toggleActiveLayersFilter()
      local var0 = arg1.props.ActiveLayersFilter
      local var69 = arg1.props
      var69 = var0
      var69.SetActiveLayersFilter(var69)
      local var72 = var8.SETTINGS
      var72 = var0
      arg1.props.Plugin:get():SetSetting(var72.ActiveLayersFilter, var72)
   end
   
   function arg1.onButtonClicked()
      local var0 = arg1.props
      local var1 = var0.Localization
      local var82 = {}
      var82.Id = "ToggleCrossFade"
      var82.Text = var1:getText("Settings", "ToggleCrossFade")
      var82.Checked = arg1.props.LayerFilters.CrossFade
      var82.OnItemClicked = arg1.toggleCrossFadeFilter
      local var95 = {}
      var95.Id = "ToggleActiveLayers"
      var95.Text = var1:getText("Settings", "ToggleActiveLayers")
      var95.Checked = arg1.props.ActiveLayersFilter
      local var105 = arg1.toggleActiveLayersFilter
      var95.OnItemClicked = var105
      var95 = var0.Plugin:get()
      var105 = {}
      var9(var95, var105)
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props.Stylizer
   local var113 = {}
   var113.Size = var0.Size
   var113.Position = UDim2.fromScale(1, 0.5)
   var113.AnchorPoint = Vector2.new(1, 0.5)
   var113.BackgroundTransparency = 1
   var113.Image = var0.Image
   var113.ImageColor3 = var0.Color
   var1.Event.Activated = arg1.onButtonClicked
   return var1.createElement("ImageButton", var113)
end

function var11.render(arg1)
   local var0 = arg1.props.Stylizer
   local var113 = {}
   var113.Size = var0.Size
   var113.Position = UDim2.fromScale(1, 0.5)
   var113.AnchorPoint = Vector2.new(1, 0.5)
   var113.BackgroundTransparency = 1
   var113.Image = var0.Image
   var113.ImageColor3 = var0.Color
   var1.Event.Activated = arg1.onButtonClicked
   return var1.createElement("ImageButton", var113)
end

fun4 = var3.withContext
local var131 = {}
var131.Analytics = var3.Analytics
var131.Localization = var3.Localization
var131.Plugin = var3.Plugin
local var135 = var2.Style
var131.Stylizer = var135.Stylizer
var11 = fun4(var131)(var11)
function var135(arg1, arg2)
   local var0 = {}
   var0.ActiveLayersFilter = arg1.Status.ActiveLayersFilter
   var0.LayerFilters = arg1.Status.LayerFilters
   return var0
end

var11 = require(var0.Packages.RoactRodux).connect(var135, function(arg1)
   local var0 = {}
   function var0.SetActiveLayersFilter()
      local var0 = arg1.props
      local var1 = var0.LayerFilters
      var1.CrossFade = var1.CrossFade
      var0.SetLayerFilter("CrossFade", var1.CrossFade)
      local var161 = var8.SETTINGS
      var161 = var1
      var0.Plugin:get():SetSetting(var161.LayerFilters, var161)
   end
   
   function var0.SetLayerFilter()
      local var0 = arg1.props.ActiveLayersFilter
      local var174 = arg1.props
      var174 = var0
      var174.SetActiveLayersFilter(var174)
      local var177 = var8.SETTINGS
      var177 = var0
      arg1.props.Plugin:get():SetSetting(var177.ActiveLayersFilter, var177)
   end
   
   return var0
end)(var11)
return var11
