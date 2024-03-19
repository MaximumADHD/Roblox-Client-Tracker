-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Util.DesignHelpers)
local var2 = require(var0.Src.Actions.Window.SetDesignSheet)
local var3 = require(var0.Src.Reducers.RootReducer)
local var4 = require(var0.Src.Thunks.Types)
return function()
   return function(arg1, arg2)
      local var29 = {}
      var29.Name = "StyleEditor/CreateDesignSheet"
      var29.DisplayName = "StyleEditor - Create Design Sheet"
      function var29.DoChange()
         local var0 = var2(var1.createDesign())
         arg1:dispatch()
         return Enum.FinishRecordingOperation.Commit
      end
      
      arg2.recordChange(var29)
   end
end
