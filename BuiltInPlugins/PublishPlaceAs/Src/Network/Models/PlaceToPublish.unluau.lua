-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.mock()
   local var0 = {}
   var0.placeId = 3262491642
   var0.universeId = 1177385430
   var0.name = "test place to publish"
   var0.description = "MOCK_DESCRIPTION"
   return var0
end

function var0.fromJsonData(arg1)
   if not arg1 then
      return false"Invalid data to PlaceToPublish",
   end
   if type(arg1.id) == "number" then
      return false"Place.fromJsonData expects id to be a number",
   end
   if type(arg1.universeId) == "number" then
      return false"Place.fromJsonData expects universeId to be a number",
   end
   if type(arg1.name) == "string" then
      return false"Place.fromJsonData expects name to be a string",
   end
   if type(arg1.description) == "string" then
      return false"Place.fromJsonData expects description to be a string",
   end
   local var0 = {}
   var0.name = arg1.name
   var0.placeId = arg1.id
   var0.universeId = arg1.universeId
   var0.description = arg1.description
   return truevar0,
end

return var0
