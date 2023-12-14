-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.mock()
   local var0 = {}
   var0.creatorTargetId = 22915773
   var0.rootPlaceId = 10395446
   var0.name = "yeet game"
   var0.universeId = 149757
   var0.privateType = "Public"
   return var0
end

function var0.fromJsonData(arg1)
   if arg1.id then
      if not arg1.creatorTargetId then
         if arg1.rootPlaceId then
            return false"Game.fromJsonData received JSON without required fields",
         end
      end
   end
   return false"Game.fromJsonData received JSON without required fields",
   if type(arg1.id) == "number" then
      return false"Game.fromJsonData expects id to be a number",
   end
   if type(arg1.creatorTargetId) == "number" then
      return false"Game.fromJsonData expects creatorId to be a number",
   end
   if type(arg1.rootPlaceId) == "number" then
      return false"Game.fromJsonData expects rootPlaceId to be a number",
   end
   if type(arg1.name) == "string" then
      return false"Game.fromJsonData expects name to be a string",
   end
   if type(arg1.privacyType) == "string" then
      return false"Game.fromJsonData expects privacyType to be a string",
   end
   local var0 = {}
   var0.creatorId = arg1.creatorTargetId
   var0.rootPlaceId = arg1.rootPlaceId
   var0.name = arg1.name
   var0.universeId = arg1.id
   var0.privacyType = arg1.privacyType
   return truevar0,
end

return var0
