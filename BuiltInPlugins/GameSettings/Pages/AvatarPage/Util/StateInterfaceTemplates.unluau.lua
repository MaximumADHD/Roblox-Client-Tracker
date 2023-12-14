-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Util.StateModelTemplate)
local var1 = {}
function var1.getStateModelTemplate(arg1)
   return arg1.StateTemplates and arg1.StateTemplates.templates and arg1.template and arg1.StateTemplates.templates[arg1.template]
end

function var1.getStateModelTemplateCopy(arg1)
   local var55 = var1
   var55 = arg1
   return var0.makeCopy(var55.getStateModelTemplate(var55))
end

return var1
