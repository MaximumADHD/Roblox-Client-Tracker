-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Src.Util.SaveInterface)
local var2 = require(var0.Src.Util.PublishTagging)
return function()
   if var1.doesSaveFolderExistInDM() then
      var2:checkPublishTags()
   end
end
