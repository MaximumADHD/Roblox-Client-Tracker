-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.src.Constants)
local var2 = require(var0.src.actions.SetScreen)
local var3 = require(var0.src.actions.SetError)
local var4 = require(var0.src.actions.ClosePlugin)
local var5 = require(var0.src.utils.getLinesFromStr)
local var6 = require(var0.src.utils.setupImportedAvatar)
return function(arg1)
   return function()
      return game:GetService("AvatarImportService"):ImportFbxRigWithoutSceneLoad(var2)
   end
end
