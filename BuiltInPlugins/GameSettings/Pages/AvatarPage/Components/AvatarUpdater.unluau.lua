-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Util.LifetimeManagerAvatar)
local var1 = require(script.Parent.Parent.Parent.Parent.Packages.Roact).Component:extend("ComponentAvatarUpdater")
function var1.applyRigUpdates(arg1)
   if arg1.props.StateTemplates then
      if arg1.props.StateTemplates.templates then
         var0.apply(arg1.props.StateTemplates.templates)
      end
   end
end

function var1.didMount(arg1)
   arg1:applyRigUpdates()
end

function var1.render(arg1)
   return nil
end

function var1.didUpdate(arg1)
   arg1:applyRigUpdates()
end

function var1.willUnmount(arg1)
   var0:destroy()
end

return var1
