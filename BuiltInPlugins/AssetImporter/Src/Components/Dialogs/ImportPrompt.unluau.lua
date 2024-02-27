-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Thunks.ShowImportPrompt)
local var2 = require(var0.Packages.Roact).PureComponent:extend("ImportPrompt")
function var2.init(arg1)
   function arg1.promptClosed(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var212 = arg1
         local var213 = var212.props
         var213 = arg1
         var212 = arg2
         var213.OnPromptClosed(var213, var212)
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
         local var226 = arg1
         local var227 = var226.props
         var227 = arg1
         var226 = arg2
         var227.OnPromptClosed(var227, var226)
      end
   end
   
   return var0
end)(var2)
