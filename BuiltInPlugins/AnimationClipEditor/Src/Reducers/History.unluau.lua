-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Cryo)
local var18 = {}
var18.Past = {}
var18.Future = {}
var18.MaxWaypointSize = require(var0.Src.Util.Constants).MAX_WAYPOINT_SIZE
local var22 = {}
function var22.SetPast(arg1, arg2)
   local var26 = var1.Dictionary
   var26 = arg1
   local var28 = {}
   var28.Past = arg2.past
   return var26.join(var26, var28)
end

function var22.SetFuture(arg1, arg2)
   local var34 = var1.Dictionary
   var34 = arg1
   local var36 = {}
   var36.Future = arg2.future
   return var34.join(var34, var36)
end

function var22.SetMaxWaypointSize(arg1, arg2)
   local var42 = var1.Dictionary
   var42 = arg1
   local var44 = {}
   var44.MaxWaypointSize = arg2.maxSize
   return var42.join(var42, var44)
end

return require(var0.Packages.Rodux).createReducer(var18, var22)
