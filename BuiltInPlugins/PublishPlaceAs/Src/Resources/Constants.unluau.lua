-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local var1 = {}
var1.CREATE_NEW_GAME = "CREATE_NEW_GAME"
var1.CHOOSE_GAME = "CHOOSE_GAME"
var1.CHOOSE_PLACE = "CHOOSE_PLACE"
var1.PUBLISH_IN_PROGRESS = "PUBLISH_IN_PROGRESS"
var1.PUBLISH_SUCCESSFUL = "PUBLISH_SUCCESSFUL"
var1.PUBLISH_FAIL = "PUBLISH_FAIL"
var0.SCREENS = var1
local var8 = {}
var8.QUERY_STATE_NONE = "NONE"
var8.QUERY_STATE_QUERYING = "QUERYING"
var8.QUERY_STATE_FAILED = "FAILED"
var8.QUERY_STATE_SUCCESS = "SUCCESS"
var0.QUERY_STATE = var8
var0.GENRE_IDS = { 
   "All", 
   "Adventure", 
   "Tutorial", 
   "Funny", 
   "Ninja", 
   "FPS", 
   "Scary", 
   "Fantasy", 
   "War", 
   "Pirate", 
   "RPG", 
   "SciFi", 
   "Sports", 
   "TownAndCity", 
   "WildWest"
}
local var29 = {}
var29.USER = "USER"
var29.GROUP = "GROUP"
var0.SUBJECT_TYPE = var29
var0.TEXT_SIZE = 22
return var0
