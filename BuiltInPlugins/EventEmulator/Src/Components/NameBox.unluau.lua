-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.TextInput)
local var4 = require(var0.Src.Actions.ChangeCurrentEventName)
local var5 = require(var0.Src.Util.Constants).INPUT_PANE_LAYOUT
local var6 = var1.PureComponent:extend("NameBox")
function var6.init(arg1)
   function arg1.OnChange(arg1)
      local var41 = arg1.props
      var41 = arg1
      var41.ChangeCurrentEventName(var41)
   end
   
end

local function fun2(arg1)
   local var49 = {}
   var49.Label = "Name"
   var49.Text = arg1.props.CurrentEventName
   var49.LayoutOrder = var5.NameBox
   var49.OnChange = arg1.OnChange
   return var1.createElement(var3, var49)
end

function var6.render(arg1)
   local var49 = {}
   var49.Label = "Name"
   var49.Text = arg1.props.CurrentEventName
   var49.LayoutOrder = var5.NameBox
   var49.OnChange = arg1.OnChange
   return var1.createElement(var3, var49)
end

fun2 = var2.withContext
local var55 = {}
var55.Stylizer = var2.Stylizer
var6 = fun2(var55)(var6)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.CurrentEventName = arg1.Status.CurrentEventName
   return var0
end, function(arg1)
   local var0 = {}
   function var0.ChangeCurrentEventName(arg1)
      local var70 = arg1.props
      var70 = arg1
      var70.ChangeCurrentEventName(var70)
   end
   
   return var0
end)(var6)
