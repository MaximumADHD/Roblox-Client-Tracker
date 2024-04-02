-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Thunks.ShowImportPrompt)
local var2 = require(var0.Packages.Roact).PureComponent:extend("ImportPrompt")
function var2.init(arg1)
   function arg1.promptClosed(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var396 = arg1
         local var397 = var396.props
         var397 = arg1
         var396 = arg2
         var397.OnPromptClosed(var397, var396)
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
         local var410 = arg1
         local var411 = var410.props
         var411 = arg1
         var410 = arg2
         var411.OnPromptClosed(var411, var410)
      end
   end
   
   return var0
end)(var2)
