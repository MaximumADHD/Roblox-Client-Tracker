-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("STUDIOAUTO1302")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.React)
local var3 = require(var1.Packages.Framework)
local var4 = require(var1.Src.Components.TutorialComponents.MyJiraTicket)
local var5 = var2.PureComponent:extend("Aggregator")
local function fun0(arg1)
   local var36 = {}
   if var0 then
      local var0 = var2.createElement(var4) or nil
   end
   var36.BootcampComponent = nil
   return var2.createElement(var2.Fragment, {}, var36)
end

function var5.render(arg1)
   local var36 = {}
   if var0 then
      local var0 = var2.createElement(var4) or nil
   end
   var36.BootcampComponent = nil
   return var2.createElement(var2.Fragment, {}, var36)
end

fun0 = var3.ContextServices.withContext
local var46 = {}
var46.Stylizer = var3.Style.Stylizer
var5 = fun0(var46)(var5)
return var5
