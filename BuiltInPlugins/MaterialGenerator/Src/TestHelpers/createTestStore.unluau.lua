-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.MaterialFramework).Context.StudioServices
local var3 = var0.Src.Actions
local var4 = require(var3.SetSelectedMaterial)
local var5 = require(var3.SetTextPrompt)
local var6 = require(var0.Src.Reducers.MainReducer)
local var7 = require(var0.Src.Thunks.GenerateImages)
return function()
   local var38 = var1
   local var39 = var38.thunkMiddleware
   local var2 = var1.Store.new(var6, nil, {})
   local var43 = var5("ancient stone wall")
   var2:dispatch()
   var38 = var2.new(true)
   local var50 = var7(var38)
   var2:dispatch()
   local var4 = var4(var2:getState().MaterialsReducer.materials[1])
   var2:dispatch()
   return var2
end
