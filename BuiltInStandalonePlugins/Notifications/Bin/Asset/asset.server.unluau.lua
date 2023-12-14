-- Generated with Unluau (https://github.com/valencefun/unluau)
if not plugin then
end
local var0 = script.Parent.Parent.Parent
local var1 = require(script.Parent.Parent.Common.commonInit)
var1()
local var2 = require(var0.Packages.TestLoader)
var2.launch("Notifications", var0.Src)
if var2.isCli() then
end
if not game:GetFastFlag("EnableStudioNotifications3") then
end
local var3 = plugin.MultipleDocumentInterfaceInstance
local var4 = nil
local function fun0()
   if not plugin.HostDataModelTypeIsCurrent then
   end
end

function()
   if var1 then
      var1:destroy()
      local var0 = nil
   end
end()
