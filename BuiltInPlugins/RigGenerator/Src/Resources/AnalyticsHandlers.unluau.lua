-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Cryo)
return function(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var17 = {}
      var17.studioSid = arg1:GetSessionId()
      var17.clientId = arg1:GetClientId()
      local var25 = game.PlaceId
      var17.placeId = var25
      var25 = arg2
      arg1:SendEventDeferred("studio", "RigGenerator", arg1, var0.Dictionary.join(var17, var25))
   end
   
   local function fun0(arg1, arg2)
      arg1:ReportCounter(arg1, arg2)
   end
   
   local var1 = {}
   function var1.rigInsert(arg1, arg2, arg3)
      arg1:ReportCounter("AvatarGeneratorRigInsert", nil)
      local var50 = {}
      var50.rigName = arg1
      var50.rigType = arg2.Name
      var50.bodyShape = arg3
      var0("Rig Generated", var50)
   end
   
   function var1.menuOpen()
      arg1:ReportCounter("AvatarGeneratorMenuOpen", nil)
   end
   
   function var1.menuClose()
      arg1:ReportCounter("AvatarGeneratorMenuClose", nil)
   end
   
   function var1.menuCloseManual()
      arg1:ReportCounter("AvatarGeneratorMenuCloseManual", nil)
   end
   
   return var1
end
