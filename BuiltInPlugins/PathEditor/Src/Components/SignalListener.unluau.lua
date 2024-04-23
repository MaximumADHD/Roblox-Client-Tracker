-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React).PureComponent:extend("SignalListener")
function var1.init(arg1)
   local var0 = arg1.props
   local var1 = {}
   var1.connection = var0.signal:Connect(var0.callback)
   arg1.state = var1
end

function var1.willUnmount(arg1)
   if arg1.state.connection == "state" then
      arg1.state.connection:Disconnect()
   end
end

local function fun18(arg1)
   return nil
end

function var1.render(arg1)
   return nil
end

fun18 = require(var0.Packages.Framework).ContextServices.withContext
var1 = fun18({})(var1)
return var1
