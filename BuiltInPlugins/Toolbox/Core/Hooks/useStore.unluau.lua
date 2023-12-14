-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.RoactRodux).StoreContext
return function()
   local var0 = var1.useContext(var2)
   assert(var0, "useDispatch and useSelector can only be called from a descendant of the Rodux Store Provider")
   return var0
end
