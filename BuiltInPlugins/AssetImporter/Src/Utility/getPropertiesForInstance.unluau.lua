-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Types)
local var1 = require(script.Parent.ImportDataProps)
local var2 = var1.BaseProps
local var3 = {}
var3.RootImportData = var1.RootProps
var3.MeshImportData = var1.MeshProps
var3.MaterialImportData = var1.MaterialProps
var3.GroupImportData = var1.GroupProps
var3.JointImportData = var1.JointProps
var3.AnimationImportData = var2
var3.FacsImportData = var2
return function(arg1)
   if arg1:IsA("BaseImportData") then
      local var0 = var3[arg1.ClassName]
      if not var0 then
         warn("Unexpected instance type deriving from BaseImportData: ", arg1.ClassName)
         return var2
      end
      return var0
   end
   error("Unexpected instance type: ", arg1.ClassName)
end
