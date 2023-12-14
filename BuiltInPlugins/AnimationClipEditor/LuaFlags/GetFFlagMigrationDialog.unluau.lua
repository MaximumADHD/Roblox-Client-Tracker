-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.GetFFlagAnimSavesMigration)
game:DefineFastFlag("ACEMigrationDialog", false)
return function()
   return game:GetFastFlag("ACEMigrationDialog") and var0()
end
