-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Thunks.ShowImportPrompt)
local var2 = require(var0.Packages.Roact).PureComponent:extend("ImportPrompt")
function var2.init(arg1)
   function arg1.promptClosed(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var411 = arg1
         local var412 = var411.props
         var412 = arg1
         var411 = arg2
         var412.OnPromptClosed(var412, var411)
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
         local var425 = arg1
         local var426 = var425.props
         var426 = arg1
         var425 = arg2
         var426.OnPromptClosed(var426, var425)
      end
   end
   
   return var0
end)(var2)
