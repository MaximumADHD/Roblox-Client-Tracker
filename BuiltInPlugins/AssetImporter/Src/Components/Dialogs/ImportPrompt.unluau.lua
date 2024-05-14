-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Thunks.ShowImportPrompt)
local var2 = require(var0.Packages.Roact).PureComponent:extend("ImportPrompt")
function var2.init(arg1)
   function arg1.promptClosed(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var27 = arg1
         local var28 = var27.props
         var28 = arg1
         var27 = arg2
         var28.OnPromptClosed(var28, var27)
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
         local var41 = arg1
         local var42 = var41.props
         var42 = arg1
         var41 = arg2
         var42.OnPromptClosed(var42, var41)
      end
   end
   
   return var0
end)(var2)
