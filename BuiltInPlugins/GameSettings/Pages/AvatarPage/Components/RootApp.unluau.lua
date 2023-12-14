-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Rodux)
local var4 = require(var1.Packages.RoactRodux)
local var5 = require(var0.Reducers.MorpherEditorRoot)
local var6 = require(var0.Components.RootPanel)
local var7 = var2.Component:extend("ComponentRootApp")
function var7.init(arg1)
   local var0 = {}
   local var1 = var3.thunkMiddleware
   var0.store = var3.Store.new(var5, nil, {})
   arg1.state = var0
end

function var7.render(arg1)
   local var202 = {}
   var202.store = arg1.state.store
   local var209 = {}
   var209.Mouse = arg1.props.Mouse
   local var0 = var2.createElement(var6, var209)
   return var2.createElement(var4.StoreProvider, var202, {})
end

return var7
