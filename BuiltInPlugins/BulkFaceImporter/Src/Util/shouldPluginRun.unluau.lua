-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Flags.FFlagEnableBulkFaceImporter)
return function()
   return game:GetService("StudioService"):HasInternalPermission() and var0()
end
