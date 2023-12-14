-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("DynamicHeadExportTool")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Constants)
local var4 = require(var0.Src.Components.FormScreen)
local var5 = require(var0.Src.Actions.SetEnabled)
local var6 = require(var0.Src.Actions.SetSurfaceAppearanceIds)
local var7 = require(var0.Src.Actions.SetScreen)
local var8 = require(var0.Src.Thunks.ProcessHead)
local var9 = var1.PureComponent:extend("InputSurfaceAppearanceIdsScreen")
function var9.init(arg1)
   function arg1.onExpansionChange(arg1)
      local var53 = {}
      var53.Expansion = arg1
      arg1:setState(var53)
   end
   
   function arg1.onChange(arg1)
      local var57 = {}
      var57.Items = arg1
      arg1:setState(var57)
   end
   
   local var0 = {}
   var0.Expansion = {}
   var0.Items = {}
   arg1.state = var0
end

function var9.didMount(arg1)
   local var0 = arg1.props.Localization
   local var65 = {}
   local var1 = {}
   var1.Id = "SurfaceAppearanceIds"
   var1.Label = var0:getText("Plugin", "SurfaceAppearanceAssetIds")
   local var2 = {}
   var2.Id = "ColorMap"
   var2.Label = var0:getText("Plugin", "ColorMap")
   local var80 = {}
   var80.Type = "Text"
   var2.Schema = var80
   var2.Value = ""
   local var4 = {}
   var4.Id = "MetalnessMap"
   var4.Label = var0:getText("Plugin", "MetalnessMap")
   local var89 = {}
   var89.Type = "Text"
   var4.Schema = var89
   var4.Value = ""
   local var6 = {}
   var6.Id = "NormalMap"
   var6.Label = var0:getText("Plugin", "NormalMap")
   local var98 = {}
   var98.Type = "Text"
   var6.Schema = var98
   var6.Value = ""
   local var8 = {}
   var8.Id = "RoughnessMap"
   var8.Label = var0:getText("Plugin", "RoughnessMap")
   local var107 = {}
   var107.Type = "Text"
   var8.Schema = var107
   var8.Value = ""
   var1.Children = {}
   var65.Items = {}
   arg1:setState(var65)
end

function var9.render(arg1)
   local var115 = {}
   var115.Expansion = arg1.state.Expansion
   var115.Items = arg1.state.Items
   var115.onExpansionChange = arg1.onExpansionChange
   var115.onChange = arg1.onChange
   function var115.onSubmit(arg1)
      local var124 = {}
      var124.Expansion = arg1
      arg1:setState(var124)
   end
   
   return var1.createElement(var4, var115)
end

local var128 = {}
var128.Localization = var2.Localization
var128.Stylizer = var2.Stylizer
var128.Plugin = var2.Plugin
var9 = var2.withContext(var128)(var9)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.mode = arg1.PluginReducer.mode
   return var0
end, function(arg1)
   local var0 = {}
   function var0.close(arg1)
      local var144 = {}
      var144.Expansion = arg1
      arg1:setState(var144)
   end
   
   function var0.setSurfaceAppearanceIds(arg1)
      local var148 = {}
      var148.Items = arg1
      arg1:setState(var148)
   end
   
   function var0.processHead(arg1)
      function arg1.onExpansionChange(arg1)
         local var153 = {}
         var153.Expansion = arg1
         arg1:setState(var153)
      end
      
      function arg1.onChange(arg1)
         local var157 = {}
         var157.Items = arg1
         arg1:setState(var157)
      end
      
      local var0 = {}
      var0.Expansion = {}
      var0.Items = {}
      arg1.state = var0
   end
   
   function var0.setScreen(arg1)
      local var0 = arg1.props.Localization
      local var165 = {}
      local var1 = {}
      var1.Id = "SurfaceAppearanceIds"
      var1.Label = var0:getText("Plugin", "SurfaceAppearanceAssetIds")
      local var2 = {}
      var2.Id = "ColorMap"
      var2.Label = var0:getText("Plugin", "ColorMap")
      local var180 = {}
      var180.Type = "Text"
      var2.Schema = var180
      var2.Value = ""
      local var4 = {}
      var4.Id = "MetalnessMap"
      var4.Label = var0:getText("Plugin", "MetalnessMap")
      local var189 = {}
      var189.Type = "Text"
      var4.Schema = var189
      var4.Value = ""
      local var6 = {}
      var6.Id = "NormalMap"
      var6.Label = var0:getText("Plugin", "NormalMap")
      local var198 = {}
      var198.Type = "Text"
      var6.Schema = var198
      var6.Value = ""
      local var8 = {}
      var8.Id = "RoughnessMap"
      var8.Label = var0:getText("Plugin", "RoughnessMap")
      local var207 = {}
      var207.Type = "Text"
      var8.Schema = var207
      var8.Value = ""
      var1.Children = {}
      var165.Items = {}
      arg1:setState(var165)
   end
   
   return var0
end)(var9)
