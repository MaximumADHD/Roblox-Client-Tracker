-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("DynamicHeadExportTool")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.FormScreen)
local var4 = require(var0.Src.Actions.SetEnabled)
local var5 = require(var0.Src.Actions.SetAnimationId)
local var6 = require(var0.Src.Thunks.ProcessMood)
local var7 = var1.PureComponent:extend("InputAnimationIdScreen")
function var7.init(arg1)
   function arg1.onExpansionChange(arg1)
      local var44 = {}
      var44.Expansion = arg1
      arg1:setState(var44)
   end
   
   function arg1.onChange(arg1)
      local var48 = {}
      var48.Items = arg1
      arg1:setState(var48)
   end
   
   local var0 = {}
   var0.Expansion = {}
   var0.Items = {}
   arg1.state = var0
end

function var7.didMount(arg1)
   local var0 = arg1.props.Localization
   local var56 = {}
   local var1 = {}
   var1.Id = "AnimationId"
   var1.Label = var0:getText("Plugin", "AnimationAssetId")
   local var2 = {}
   var2.Id = "Animation"
   var2.Label = var0:getText("Plugin", "Animation")
   local var71 = {}
   var71.Type = "Text"
   var2.Schema = var71
   var2.Value = ""
   var1.Children = {}
   var56.Items = {}
   arg1:setState(var56)
end

function var7.render(arg1)
   local var79 = {}
   var79.Expansion = arg1.state.Expansion
   var79.Items = arg1.state.Items
   var79.onExpansionChange = arg1.onExpansionChange
   var79.onChange = arg1.onChange
   function var79.onSubmit(arg1)
      local var88 = {}
      var88.Expansion = arg1
      arg1:setState(var88)
   end
   
   return var1.createElement(var3, var79)
end

local var92 = {}
var92.Localization = var2.Localization
var92.Stylizer = var2.Stylizer
var92.Plugin = var2.Plugin
var7 = var2.withContext(var92)(var7)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.mode = arg1.PluginReducer.mode
   return var0
end, function(arg1)
   local var0 = {}
   function var0.close(arg1)
      local var108 = {}
      var108.Expansion = arg1
      arg1:setState(var108)
   end
   
   function var0.setAnimationId(arg1)
      local var112 = {}
      var112.Items = arg1
      arg1:setState(var112)
   end
   
   function var0.processMood(arg1)
      function arg1.onExpansionChange(arg1)
         local var117 = {}
         var117.Expansion = arg1
         arg1:setState(var117)
      end
      
      function arg1.onChange(arg1)
         local var121 = {}
         var121.Items = arg1
         arg1:setState(var121)
      end
      
      local var0 = {}
      var0.Expansion = {}
      var0.Items = {}
      arg1.state = var0
   end
   
   return var0
end)(var7)
