-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Thunks.ShowImportPrompt)
local var2 = require(var0.Packages.Roact).PureComponent:extend("ImportPrompt")
function var2.init(arg1)
   function arg1.promptClosed(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var307 = arg1
         local var308 = var307.props
         var308 = arg1
         var307 = arg2
         var308.OnPromptClosed(var308, var307)
      end
   end
   
end

function var2.render(arg1)
   arg1.props.showImportPrompt(arg1.promptClosed)
end

return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.showImportPrompt(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var321 = arg1
         local var322 = var321.props
         var322 = arg1
         var321 = arg2
         var322.OnPromptClosed(var322, var321)
      end
   end
   
   return var0
end)(var2)
