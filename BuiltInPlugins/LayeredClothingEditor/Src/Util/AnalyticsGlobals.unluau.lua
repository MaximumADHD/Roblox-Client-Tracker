-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.init(arg1)
   arg1.HasPublished = false
   arg1:resetSession()
end

function var0.resetSession(arg1)
   arg1.FirstAction = nil
   arg1.CurrentScreen = nil
   arg1.RigidFlow = false
   arg1.TotalLayers = 0
   arg1.TotalAvatars = 1
   arg1.CageEdits = 0
end

function var0.reset(arg1)
   arg1:init()
end

var0:init()
return var0
