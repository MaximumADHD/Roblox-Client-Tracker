-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var0.Src.Actions
local var5 = require(var4.SetView)
local var6 = require(var4.ChangeCurrentEventName)
local var7 = require(var0.Src.Util.Constants).VIEW_ID
local var8 = var2.UI.SelectInput
local var9 = var1.PureComponent:extend("Dropdown")
function var9.init(arg1)
   function arg1.selectItem(arg1)
      local var41 = arg1.props
      var41 = arg1
      var41.SetView(var41)
      local var44 = arg1.props
      var44 = arg1
      var44.ChangeCurrentEventName(var44)
   end
   
   function arg1.toggle()
      local var47 = {}
      var47.isOpen = arg1.state.isOpen
      arg1:setState(var47)
   end
   
   arg1.Items = function(arg1)
      local var0 = {}
      local var1 = pairs(var7)
      table.insert(var0, tostring(var58))
      return var0
   end(var7)
end

local function fun4(arg1)
   local var70 = {}
   var70.OnItemActivated = arg1.selectItem
   var70.PlaceholderText = arg1.props.ActiveView
   var70.Items = arg1.Items
   return var1.createElement(var8, var70)
end

function var9.render(arg1)
   local var70 = {}
   var70.OnItemActivated = arg1.selectItem
   var70.PlaceholderText = arg1.props.ActiveView
   var70.Items = arg1.Items
   return var1.createElement(var8, var70)
end

fun4 = var3.withContext
local var76 = {}
var76.Stylizer = var3.Stylizer
var9 = fun4(var76)(var9)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.ActiveView = arg1.Status.ActiveView
   return var0
end, function(arg1)
   local var0 = {}
   function var0.SetView(arg1)
      local var91 = arg1.props
      var91 = arg1
      var91.SetView(var91)
      local var94 = arg1.props
      var94 = arg1
      var94.ChangeCurrentEventName(var94)
   end
   
   function var0.ChangeCurrentEventName()
      local var97 = {}
      var97.isOpen = arg1.state.isOpen
      arg1:setState(var97)
   end
   
   return var0
end)(var9)
