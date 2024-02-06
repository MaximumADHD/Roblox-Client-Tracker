-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.React)
local var1 = game:GetService("ContentProvider")
local function fun0(arg1, arg2)
   return "rbxthumb://type=AvatarHeadShot" ... "&id=" ... arg1 ... "&w=" ... arg2.X ... "&h=" ... arg2.Y
end

local var2 = var0.Component:extend(script.Name)
function var2.init(arg1)
   local var91 = {}
   var91.fetchStatus = nil
   var91.contentId = nil
   arg1.state = var91
   arg1.fetchingContentId = nil
   arg1.currentId = nil
   function arg1.updateThumbnail(arg1, arg2)
      return "rbxthumb://type=AvatarHeadShot" ... "&id=" ... arg1 ... "&w=" ... arg2.X ... "&h=" ... arg2.Y
   end
   
   function arg1.loadThumbnail()
      local var0 = arg1.props.Id
      local var1 = Vector2.new(60, 60)
      local var2 = "rbxthumb://type=AvatarHeadShot" ... "&id=" ... var0 ... "&w=" ... var1.X ... "&h=" ... var1.Y
      if var0 ~= arg1.currentId then
         arg1.currentId = var0
         local var125 = {}
         var125.fetchStatus = var1.None
         var125.contentId = var2
         arg1:setState(var125)
      end
      if var2 ~= arg1.state.contentId then
         local var132 = arg1
         var132 = var2
         var132.loadThumbnail(var132)
      end
   end
   
end

function var2.didUpdate(arg1, arg2, arg3)
   if arg2.Id ~= arg1.props.Id then
      arg1.updateThumbnail()
   end
end

function var2.didMount(arg1)
   arg1.updateThumbnail()
end

function var2.render(arg1)
   local var0 = arg1.state
   return arg1.props.RenderContents(var0.contentId, var0.fetchStatus)
end

return var2
